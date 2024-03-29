/*
 * Simple C++ Application
 */
#include <iostream>
#include <stdio.h>
#include <stdlib.h>
#include <xscutimer.h>
#include "xgpiops.h"
#include "xtime_l.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xpath_thr_axis.h"

using namespace std;

#define PinEMIO 54
#define FPGA0_FREQ   200000000
#define APU_FREQ     XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ

typedef unsigned long long data_t_W;
typedef unsigned int data_t_R;

#define MM2S_VDMACR_ADDR 		0X00
#define MM2S_VSIZE_ADDR 		0X50
#define MM2S_HSIZE_ADDR 		0X54
#define MM2S_FRMDLY_STRIDE_ADDR 0X58
#define MM2S_START_ADDR_0_ADDR 	0X5C
#define MM2S_START_ADDR_1_ADDR 	0X60
#define MM2S_START_ADDR_2_ADDR 	0X64
#define MM2S_START_ADDR_3_ADDR 	0X68

#define S2MM_VDMACR_ADDR		0x30
#define S2MM_VSIZE_ADDR 		0XA0
#define S2MM_HSIZE_ADDR 		0XA4
#define S2MM_FRMDLY_STRIDE_ADDR	0xA8
#define S2MM_START_ADDRESS_0 	0xAC
#define S2MM_START_ADDRESS_1 	0xB0


#define CAM_0_START_ADDRESS_MATRIX 0x18000000
#define CAM_1_START_ADDRESS_MATRIX 0x1a000000

#define DATA_WIDTH_COEF		8
#define DATA_WR_WIDTH_COEF	4
//#define ACTUAL_IN_Y			20
//#define ACTUAL_IN_X			50
//#define MARGIN				0
//#define ACTUAL_IN_Y			720
//#define ACTUAL_IN_X			1400
//#define MARGIN				0
#define ACTUAL_IN_Y			1080
#define ACTUAL_IN_X			1920
#define MARGIN				0

#define VDMA_MATRIX_0_MM2S_VDMACR_DATA		  0X00000001
#define VDMA_MATRIX_0_SART_ADDR_DATA 		  CAM_0_START_ADDRESS_MATRIX
#define VDMA_MATRIX_0_MM2S_FRMDLY_STRIDE_DATA ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_0_MM2S_HSIZE_DATA		  ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_0_MM2S_VSIZE_DATA		  ACTUAL_IN_Y

#define VDMA_1_S2MM_VDMACR_DATA		  		0X00000001
#define VDMA_1_SART_ADDR_DATA 		  		CAM_1_START_ADDRESS_MATRIX
#define VDMA_1_S2MM_FRMDLY_STRIDE_DATA 		( ACTUAL_IN_X + MARGIN ) * DATA_WR_WIDTH_COEF
#define VDMA_1_S2MM_HSIZE_DATA		  		( ACTUAL_IN_X + MARGIN ) * DATA_WR_WIDTH_COEF
#define VDMA_1_S2MM_VSIZE_DATA		  		ACTUAL_IN_Y


void program_vdma_0(void);
void program_vdma_1(void);
void init_matrix(void);

// a copro instance
XPath_thr_axis MovDataCopro;

int main()
{

	XGpioPs Gpio;
	int Status;
	XGpioPs_Config *GPIOConfigPtr;

	u32 i, j;
	XTime tStart, tEnd, calibrationPS, run_time;
	float time_us, time_ms, fps_frame, ratio_PS_PL;

	int err_cnt = 0;
	uint numWrites = ACTUAL_IN_Y * (ACTUAL_IN_X + MARGIN);
	uint statistics = 0;

	data_t_W *A = (data_t_W *) CAM_0_START_ADDRESS_MATRIX; //(data_t_W*) malloc(numWrites * sizeof(data_t_W));
	data_t_R *B = (data_t_R*) CAM_1_START_ADDRESS_MATRIX; // malloc(numWrites * sizeof(data_t_R));
	XPath_thr_axis_Config *CfgPtr;
	int status;

	CfgPtr = XPath_thr_axis_LookupConfig(XPAR_PATH_THR_AXIS_0_DEVICE_ID);
	if(!CfgPtr){
	 print("Error looking for my Core\n\r");
	 return XST_FAILURE;
	}

	status = XPath_thr_axis_CfgInitialize(&MovDataCopro,CfgPtr);
	if(status != XST_SUCCESS){
	 print("Error initializing my Core\n\r");
	 return XST_FAILURE;
	}

	GPIOConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&Gpio, GPIOConfigPtr, GPIOConfigPtr ->BaseAddr);
	if (Status != XST_SUCCESS) {
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}
	XGpioPs_SetDirectionPin(&Gpio, PinEMIO, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, PinEMIO, 1);
	XGpioPs_WritePin(&Gpio, PinEMIO, 0x0);

	printf("\n\r********************************\n\r");
	printf("  \r* DATA MOVMENT Path Through    *\n\r");
	cout << "Num. Writes: " << numWrites << endl << endl;

	ratio_PS_PL = (1.0*APU_FREQ) / FPGA0_FREQ;
	printf("Freq PS: %d, Freq PL: %d. Ratio: %.2f. TimerFreq: %d\n\r", APU_FREQ, FPGA0_FREQ, ratio_PS_PL, COUNTS_PER_SECOND);

	// Calibrate PS timer
	XTime_GetTime(&tStart);
	XTime_GetTime(&tEnd);
	calibrationPS = tEnd - tStart;
	time_us = 1.0 * calibrationPS / (COUNTS_PER_SECOND/1000000);
	printf("\n** Calibrating the PS timer:\r\n");
	printf("init_time: %llu cycles.\r\n", tStart);
	printf("curr_time: %llu cycles.\r\n", tEnd);
	printf("calibrationPS: %llu PS clock cycles (%.3f us).\n", calibrationPS, time_us);

	//clean B
	for(j=0; j< ACTUAL_IN_Y; j++) {
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++) {
			B[j*(ACTUAL_IN_X + MARGIN)+i] = 4444;
		}
	}

	program_vdma_0();
	program_vdma_1();
	init_matrix();

	//Xil_DCacheFlushRange((UINTPTR)dstAddress, len);
	Xil_DCacheFlush ();

	//start the Video DMA
	XGpioPs_WritePin(&Gpio, PinEMIO, 0x1);
	XGpioPs_WritePin(&Gpio, PinEMIO, 0x0);

	//start a timer
	XTime_GetTime(&tStart);

	statistics = XPath_thr_axis_Get_statistics(&MovDataCopro);
	//for the first loop
	if (statistics >= numWrites) statistics = 0;

	//Bussy waiting until finish
	while (statistics < numWrites){
		statistics = XPath_thr_axis_Get_statistics(&MovDataCopro);
		//printf("Partial NumWrites: %d \n", statistics);
	}


	XTime_GetTime(&tEnd);

	run_time = tEnd - tStart - calibrationPS;
	time_us = 1.0 * run_time / (COUNTS_PER_SECOND/1000000);
	time_ms = 1.0 * run_time / (COUNTS_PER_SECOND/1000);
	fps_frame = 1.0 * COUNTS_PER_SECOND / run_time;
	printf("\r\nRunTime: %llu PS clock cycles (%.1f us - %.3f ms). FPS: %.2f.\n", run_time, time_us, time_ms, fps_frame);
	printf("Size X: %d, Size X: %d. TotalSize (X*Y): %d\n", ACTUAL_IN_X, ACTUAL_IN_Y, ACTUAL_IN_Y * ACTUAL_IN_X);
	statistics = XPath_thr_axis_Get_statistics(&MovDataCopro);
	printf("Total Writes: %i \n", statistics);


	Xil_DCacheFlush ();
	//Compare results
	for(i=0; i <  numWrites; i++){
		data_t_W auxW = A[i];
		data_t_R auxR = (auxW >> 32) + auxW;
		if(B[i] != auxR){
			cout << "i: " << dec << i << " A: " << hex << auxW << " B: " << B[i] << "   ";
			if (i%2) cout << endl;
			err_cnt++;
		 }
		//else cout << dec << i << " ";
	}
	cout << endl;

	if (!err_cnt)
	   printf("Success HW Transfer\n");
	else
	   printf("Total %d Errors.\n", err_cnt);


	return 0;
}

void program_vdma_0(void)
{
	printf("Programming VDMA_MATRIX_0 registers...\n");
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VDMACR_ADDR) = VDMA_MATRIX_0_MM2S_VDMACR_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_START_ADDR_0_ADDR) = VDMA_MATRIX_0_SART_ADDR_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_FRMDLY_STRIDE_ADDR) = VDMA_MATRIX_0_MM2S_FRMDLY_STRIDE_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_HSIZE_ADDR) = VDMA_MATRIX_0_MM2S_HSIZE_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VSIZE_ADDR) = VDMA_MATRIX_0_MM2S_VSIZE_DATA;
}

void program_vdma_1(void)
{
	printf("Programming VDMA_1 registers...\n");
	*(unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + S2MM_VDMACR_ADDR) = VDMA_1_S2MM_VDMACR_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + S2MM_START_ADDRESS_0) = VDMA_1_SART_ADDR_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + S2MM_FRMDLY_STRIDE_ADDR) = VDMA_1_S2MM_FRMDLY_STRIDE_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + S2MM_HSIZE_ADDR) = VDMA_1_S2MM_HSIZE_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_1_BASEADDR + S2MM_VSIZE_ADDR) = VDMA_1_S2MM_VSIZE_DATA;

}


void init_matrix(void)
{
	unsigned int i, j;
	data_t_W *addr;
	data_t_W val, index;

	addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;

	for(j=0; j< ACTUAL_IN_Y; j++)
	{
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++)
		{   index = i + j*(ACTUAL_IN_X + MARGIN);
			val = (data_t_W)(index) << 32;
			*addr=val | (data_t_W) index;
			addr++;
		}

	}
}





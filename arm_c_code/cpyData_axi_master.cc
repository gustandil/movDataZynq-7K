/*
 * Copy stream input and writes into memory consecutively
 */
#include <iostream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
#include <xscutimer.h>
#include "xgpiops.h"
#include "xtime_l.h"
#include "xil_cache.h"
#include "xparameters.h"
#include "xcpydata_copro.h"

using namespace std;

#define PinEMIO 54
//#define FPGA0_FREQ   100000000
#define FPGA0_FREQ   166666666
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

#define CAM_0_START_ADDRESS_MATRIX 0x18000000
#define CAM_1_START_ADDRESS_MATRIX 0x1a000000

#define DATA_WIDTH_COEF		8
//#define ACTUAL_IN_Y			1080
//#define ACTUAL_IN_X			1920
#define ACTUAL_IN_Y			720
#define ACTUAL_IN_X			1400
//#define ACTUAL_IN_Y			32
//#define ACTUAL_IN_X			32
#define MARGIN				0


#define VDMA_MATRIX_0_MM2S_VDMACR_DATA		  0X00000001
#define VDMA_MATRIX_0_SART_ADDR_DATA 		  CAM_0_START_ADDRESS_MATRIX
#define VDMA_MATRIX_0_MM2S_FRMDLY_STRIDE_DATA ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_0_MM2S_HSIZE_DATA		  ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_0_MM2S_VSIZE_DATA		  ACTUAL_IN_Y

void program_vdma_matrix_0(void);
void init_matrix_1(void);
void init_matrix_2(void);
void init_matrix_3(void);
void init_matrix_4(void);
int compare_result(int numWrites);

// TIMER Instance
XCpydata_copro MovDataCopro;

data_t_W *A = (data_t_W *) CAM_0_START_ADDRESS_MATRIX; //(data_t_W*) malloc(numWrites * sizeof(data_t_W));
data_t_R *B = (data_t_R *) CAM_1_START_ADDRESS_MATRIX; // malloc(numWrites * sizeof(data_t_R));


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
	int statistics = 0;
	u32 row = ACTUAL_IN_Y;
	u32 col = (ACTUAL_IN_X + MARGIN);
	u32 modeWork = 0;

	XCpydata_copro_Config *CfgPtr;
	int status;

	CfgPtr = XCpydata_copro_LookupConfig(XPAR_CPYDATA_COPRO_0_DEVICE_ID);
	if(!CfgPtr){
	 print("Error looking for my Core\n\r");
	 return XST_FAILURE;
	}

	status = XCpydata_copro_CfgInitialize(&MovDataCopro,CfgPtr);
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

	printf("\r************************************\n\r");
	printf("\r* DATA MOVEMENT AXI MASTER core    *\n\r");
	cout << "Expected Num. Writes: " << numWrites << endl << endl;

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

	program_vdma_matrix_0();
	init_matrix_4();

	Xil_DCacheFlush ();

	XCpydata_copro_Set_memW(&MovDataCopro, (unsigned)B);
	XCpydata_copro_Set_width_img(&MovDataCopro, col);

	 //start the accelerator
	XTime_GetTime(&tStart);

	XGpioPs_WritePin(&Gpio, PinEMIO, 0x1);
	XGpioPs_WritePin(&Gpio, PinEMIO, 0x0);

	statistics = XCpydata_copro_Get_statistics(&MovDataCopro);
	if (statistics >= numWrites) statistics = 0;

	while (statistics < numWrites){
		statistics = XCpydata_copro_Get_statistics(&MovDataCopro);
	}

	XTime_GetTime(&tEnd);

	run_time = tEnd - tStart - calibrationPS;
	time_us = 1.0 * run_time / (COUNTS_PER_SECOND/1000000);
	time_ms = 1.0 * run_time / (COUNTS_PER_SECOND/1000);
	fps_frame = 1.0 * COUNTS_PER_SECOND / run_time;
	printf("\r\nRunTime: %llu PS clock cycles (%.1f us - %.3f ms). FPS: %.2f.\n", run_time, time_us, time_ms, fps_frame);
	printf("Size X: %d, Size X: %d. TotalSize (X*Y): %d\n", ACTUAL_IN_X, ACTUAL_IN_Y, ACTUAL_IN_Y * ACTUAL_IN_X);
	statistics = XCpydata_copro_Get_statistics(&MovDataCopro);
	printf("Total Writes: %i \n", statistics);


	Xil_DCacheFlush ();

    err_cnt = compare_result(numWrites);

	//cout << endl;

	if (!err_cnt)
	   printf("Success Transmitted Data\n");
	else
	   printf("Total %d Errors.\n", err_cnt);

	//statistics = XCpydata_copro_Get_statistics(&MovDataCopro);

	return 0;
}


//------------------------------------------------------------------------
void program_vdma_matrix_0(void)
{
	printf("Programming VDMA_MATRIX_0 registers...\n");
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VDMACR_ADDR) = VDMA_MATRIX_0_MM2S_VDMACR_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_START_ADDR_0_ADDR) = VDMA_MATRIX_0_SART_ADDR_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_FRMDLY_STRIDE_ADDR) = VDMA_MATRIX_0_MM2S_FRMDLY_STRIDE_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_HSIZE_ADDR) = VDMA_MATRIX_0_MM2S_HSIZE_DATA;
	*(unsigned int *)(XPAR_AXI_VDMA_0_BASEADDR + MM2S_VSIZE_ADDR) = VDMA_MATRIX_0_MM2S_VSIZE_DATA;
}
//------------------------------------------------------------------------
void init_matrix_1(void)
{
	// by default order. 0,1,2,...
	unsigned int i, j;
	data_t_W *addr;
	data_t_W val, index;

	addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;

	for(j=0; j< ACTUAL_IN_Y; j++)
	{
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++)
		{   index = i + j*(ACTUAL_IN_X + MARGIN);
			val = (data_t_W)(index) << 32;
			*addr= val | (i << 16) | j;
			addr++;
		}

	}
}
//------------------------------------------------------------------------------
void init_matrix_2(void)
{
	// diagonal access
	unsigned int i, j, ind_i, ind_j;
	data_t_W *addr;
	data_t_W val, index;

	addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;

	for(j=0; j< ACTUAL_IN_Y; j++)
	{
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++)
		{
			index = i + j*(ACTUAL_IN_X + MARGIN);
			val = (data_t_W)(index) << 32;
			ind_i = i; //(i) % (ACTUAL_IN_X + MARGIN);
			ind_j = (i + j) % ACTUAL_IN_Y;
			*addr= val | (ind_i << 16) | ind_j;
			addr++;
		}

	}
}
//------------------------------------------------------------------------
void init_matrix_3(void)
{
	// Vertical columns 0, i, 2i, 3i...
	//                  1, i+2, 2i+1, ...
	// column and row should be multiple of each other...
	unsigned int i, j, ind_i, ind_j;
	data_t_W *addr;
	data_t_W val, index;

	addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;

	for(j=0; j< ACTUAL_IN_Y; j++)
	{
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++)
		{
			index = i + j*(ACTUAL_IN_X + MARGIN);
			val = (data_t_W)(index) << 32;
			ind_i = (index/ACTUAL_IN_Y); // % ACTUAL_IN_Y;
			ind_j = (index) % ACTUAL_IN_Y;
			*addr= val | (ind_i << 16) | ind_j;
			addr++;
		}

	}
}

//------------------------------------------------------------------------
void init_matrix_4(void)
{
	// Reverser order. N-1, N-2, ... , 2, 1, 0.
	unsigned int i, j, ind_i, ind_j;
	data_t_W *addr;
	data_t_W val, index;

	addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;

	for(j=0; j< ACTUAL_IN_Y; j++)
	{
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++)
		{
			index = i + j*(ACTUAL_IN_X + MARGIN);
			val = (data_t_W)(index) << 32;
			ind_i = (ACTUAL_IN_X + MARGIN - 1) - i;
			ind_j = (ACTUAL_IN_Y - 1) - j;
			*addr= val | (ind_i << 16) | ind_j;
			addr++;
		}

	}
}

//------------------------------------------------------------------------------
int compare_result(int numWrites) {

int err_cnt = 0;
int i, index;

//Compare results
for(i=0; i <  numWrites; i++){
	data_t_W auxW = A[i];
	data_t_R auxR = (auxW >> 32);
	uint addr_i = (auxW >> 16) & 0xFFFF;
	uint addr_j = (auxW >> 0 ) & 0xFFFF;
	index = addr_i + addr_j*(ACTUAL_IN_X + MARGIN);

	if(B[index] != auxR){
		cout << "i: " << dec << i << " A: " << hex << auxR << " B: " << B[i] << "  ";
		cout << "(a_i: " << addr_i << " a_j: " << addr_j << ")   ";
		if (i%2==0) cout << endl;
		err_cnt++;
	 }
	}

return err_cnt;
}

//------------------------------------------------------------------------

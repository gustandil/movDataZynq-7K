/*
 * Copy stream input and writes into memory 
 * option 1. Consecutively
 * option 2. Diagonal
 * option 3. Vertical column
 * option 4. Inverted
 * option 5. "another diagonal" Diagonal
 * It should be useful to implement a Read a file from SD card
 *
 * Read HP0 and write in HP1, in parallel Read HP2 and Writes HP3
 * Read from memory using S_GP0 y S_GP1 and send to axi collector
 *
 * Initialize System
 *
 */
#include <iostream>
#include <iomanip>
#include <stdio.h>
#include <stdlib.h>
#include <xscutimer.h>
#include <fstream>
#include "xgpiops.h"
#include "xgpio.h"
#include "xtime_l.h"
#include "xil_cache.h"
#include "xparameters.h"

#include "xcolector_display.h"
#include "xwr_data_dir_adv.h"

using namespace std;

#define PinEMIO_0 54
#define PinEMIO_1 55
#define PinEMIO_2 56
#define PinEMIO_3 57
#define FPGA0_FREQ   100000000
#define APU_FREQ     XPAR_PS7_CORTEXA9_0_CPU_CLK_FREQ_HZ

typedef unsigned long long data_t_W;
typedef unsigned int data_t_R;

#define DATA_WIDTH_COEF		8
//#define ACTUAL_IN_Y			720
//#define ACTUAL_IN_X			1400
#define ACTUAL_IN_Y			1080
#define ACTUAL_IN_X			1920
//#define ACTUAL_IN_Y			32
//#define ACTUAL_IN_X			32
#define MARGIN				0

#define VDMA_MATRIX_0_BASEADDR 	   XPAR_MATRIX_0_AXI_VDMA_0_BASEADDR
#define VDMA_MATRIX_1_BASEADDR 	   XPAR_MATRIX_1_AXI_VDMA_1_BASEADDR
#define VDMA_DISPLAY_0_BASEADDR    XPAR_DISPLAY_0_AXI_VDMA_DISPLAY0_BASEADDR
#define VDMA_DISPLAY_1_BASEADDR    XPAR_DISPLAY_1_AXI_VDMA_DISPLAY1_BASEADDR

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

#define START_ADDRESS_IMAGE_0	0x10000000
#define START_ADDRESS_IMAGE_1	0x11000000
#define START_ADDRESS_IMAGE_2	0x12000000
#define START_ADDRESS_IMAGE_3	0x13000000

#define START_ADDRESS_IMAGE_4	0x14000000
#define START_ADDRESS_IMAGE_5	0x15000000
#define START_ADDRESS_IMAGE_6	0x16000000
#define START_ADDRESS_IMAGE_7	0x17000000

#define VDMA_DISPLAY_0_MM2S_VDMACR_DATA			0X0000000B
#define VDMA_DISPLAY_0_SART_ADDR_0_DATA			START_ADDRESS_IMAGE_0
#define VDMA_DISPLAY_0_SART_ADDR_1_DATA			START_ADDRESS_IMAGE_1
#define VDMA_DISPLAY_0_SART_ADDR_2_DATA			START_ADDRESS_IMAGE_2
#define VDMA_DISPLAY_0_SART_ADDR_3_DATA			START_ADDRESS_IMAGE_3
#define VDMA_DISPLAY_0_MM2S_FRMDLY_STRIDE_DATA  ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_DISPLAY_0_MM2S_HSIZE_DATA			( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_DISPLAY_0_MM2S_VSIZE_DATA		    ACTUAL_IN_Y/2

#define VDMA_DISPLAY_1_MM2S_VDMACR_DATA			0X0000000B
#define VDMA_DISPLAY_1_SART_ADDR_0_DATA			START_ADDRESS_IMAGE_4
#define VDMA_DISPLAY_1_SART_ADDR_1_DATA			START_ADDRESS_IMAGE_5
#define VDMA_DISPLAY_1_SART_ADDR_2_DATA			START_ADDRESS_IMAGE_6
#define VDMA_DISPLAY_1_SART_ADDR_3_DATA			START_ADDRESS_IMAGE_7
#define VDMA_DISPLAY_1_MM2S_FRMDLY_STRIDE_DATA	( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_DISPLAY_1_MM2S_HSIZE_DATA			( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_DISPLAY_1_MM2S_VSIZE_DATA		    ACTUAL_IN_Y/2


#define VDMA_MATRIX_0_MM2S_VDMACR_DATA		     0X00000001
#define VDMA_MATRIX_0_SART_ADDR_DATA 		     CAM_0_START_ADDRESS_MATRIX
#define VDMA_MATRIX_0_MM2S_FRMDLY_STRIDE_DATA    ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_0_MM2S_HSIZE_DATA		     ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_0_MM2S_VSIZE_DATA		     ACTUAL_IN_Y

#define VDMA_MATRIX_1_MM2S_VDMACR_DATA		     0X00000001
#define VDMA_MATRIX_1_SART_ADDR_DATA 		     CAM_1_START_ADDRESS_MATRIX
#define VDMA_MATRIX_1_MM2S_FRMDLY_STRIDE_DATA    ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_1_MM2S_HSIZE_DATA		     ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF
#define VDMA_MATRIX_1_MM2S_VSIZE_DATA		     ACTUAL_IN_Y


void program_vdma_matrix_0(void);
void program_vdma_matrix_1(void);
void program_vdma_display(void);

void init_matrix_1(int mat);
void init_matrix_2(int mat);
void init_matrix_3(int mat);
void init_matrix_4(int mat);
void init_matrix_5(int mat);
int Init_from_SD(char FileName[32]);
void init_matrix(int mat, int nroSec);

int compare_result(int numWrites, data_t_W *A, data_t_R *B);


// Copro instances
XWr_data_dir_adv MovDataCopro_0, MovDataCopro_1;
XColector_display CollectorDisplay_0, CollectorDisplay_1;

data_t_W *A_0 = (data_t_W *) VDMA_MATRIX_0_SART_ADDR_DATA; //(data_t_W*) malloc(numWrites * sizeof(data_t_W));
data_t_W *A_1 = (data_t_W *) VDMA_MATRIX_1_SART_ADDR_DATA;

data_t_R *B_0 = (data_t_R *) START_ADDRESS_IMAGE_0; // malloc(numWrites * sizeof(data_t_R));
data_t_R *B_1 = (data_t_R *) START_ADDRESS_IMAGE_1;
data_t_R *B_2 = (data_t_R *) START_ADDRESS_IMAGE_2;
data_t_R *B_3 = (data_t_R *) START_ADDRESS_IMAGE_3;
data_t_R *B_4 = (data_t_R *) START_ADDRESS_IMAGE_4;
data_t_R *B_5 = (data_t_R *) START_ADDRESS_IMAGE_5;
data_t_R *B_6 = (data_t_R *) START_ADDRESS_IMAGE_6;
data_t_R *B_7 = (data_t_R *) START_ADDRESS_IMAGE_7;


data_t_W DestinationAddress  [ ACTUAL_IN_Y * ( ACTUAL_IN_X + MARGIN ) * DATA_WIDTH_COEF ]; //__attribute__ ( ( aligned ( 32 ) ) );


int main()
{
	XGpioPs Gpio;
	XGpio   GPio_frame;
	XGpioPs_Config *GPIOConfigPtr;
	int Status;
	uint frame_cnt = 0;


	u32 i, j;
	XTime tStart, tEnd, tEnd2, calibrationPS, run_time;
	float time_us, time_ms, fps_frame, ratio_PS_PL;
	int err_cnt = 0;
	uint numWrites = ACTUAL_IN_Y * (ACTUAL_IN_X + MARGIN);
	uint statistics, statistics1, statistics2= 0;
	u32 col = (ACTUAL_IN_X + MARGIN);

	MovDataCopro_0.Axi_lite_BaseAddress = XPAR_WRITE_MODULE_0_WR_DATA_DIR_ADV_0_S_AXI_AXI_LITE_BASEADDR;
	MovDataCopro_0.IsReady = XIL_COMPONENT_IS_READY;
	MovDataCopro_1.Axi_lite_BaseAddress = XPAR_WRITE_MODULE_1_WR_DATA_DIR_ADV_1_S_AXI_AXI_LITE_BASEADDR;
	MovDataCopro_1.IsReady = XIL_COMPONENT_IS_READY;

	CollectorDisplay_0.Axi_lite_BaseAddress = XPAR_DISPLAY_0_COLECTOR_DISPLAY_0_S_AXI_AXI_LITE_BASEADDR;
	CollectorDisplay_0.IsReady = XIL_COMPONENT_IS_READY;
	CollectorDisplay_1.Axi_lite_BaseAddress = XPAR_DISPLAY_1_COLECTOR_DISPLAY_1_S_AXI_AXI_LITE_BASEADDR;
	CollectorDisplay_1.IsReady = XIL_COMPONENT_IS_READY;

	GPIOConfigPtr = XGpioPs_LookupConfig(XPAR_PS7_GPIO_0_DEVICE_ID);
	Status = XGpioPs_CfgInitialize(&Gpio, GPIOConfigPtr, GPIOConfigPtr ->BaseAddr);
	if (Status != XST_SUCCESS) {
		print("Error initializing GPIO\n\r");
		return XST_FAILURE;
	}

	printf("\n\r****************************************\n\r");
	printf("\r* DATA MOVEMENT: two Data Read in HP.  *\n\r");
	printf("\r* two WR in HP, two RD in GP (64 bits) *\r\n\n");

	Status = XGpio_Initialize(&GPio_frame, XPAR_FRAME_PTRS_DEVICE_ID);
	XGpio_SetDataDirection(&GPio_frame, 1, 0xF);
	XGpio_SetDataDirection(&GPio_frame, 2, 0xF);

	XGpio_DiscreteWrite(&GPio_frame, 1, frame_cnt);
	XGpio_DiscreteWrite(&GPio_frame, 2, 0x05);

	//The bank 2 signals represent EMIO pin numbers 54 through 85,
	XGpioPs_SetDirectionPin(&Gpio, PinEMIO_0, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, PinEMIO_0, 1);
	XGpioPs_WritePin(&Gpio, PinEMIO_0, 0x0);

	XGpioPs_SetDirectionPin(&Gpio, PinEMIO_1, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, PinEMIO_1, 1);
	XGpioPs_WritePin(&Gpio, PinEMIO_1, 0x0);

	XGpioPs_SetDirectionPin(&Gpio, PinEMIO_2, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, PinEMIO_2, 1);
	XGpioPs_WritePin(&Gpio, PinEMIO_2, 0x0);

	XGpioPs_SetDirectionPin(&Gpio, PinEMIO_3, 1);
	XGpioPs_SetOutputEnablePin(&Gpio, PinEMIO_3, 1);
	XGpioPs_WritePin(&Gpio, PinEMIO_3, 0x0);


	ratio_PS_PL = (1.0*APU_FREQ) / FPGA0_FREQ;
	printf("Freq PS: %d, Freq PL: %d. Ratio: %f\n\r", APU_FREQ, FPGA0_FREQ, ratio_PS_PL);

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
			B_0[j*(ACTUAL_IN_X + MARGIN)+i] = 11;
			B_1[j*(ACTUAL_IN_X + MARGIN)+i] = 22;
			B_2[j*(ACTUAL_IN_X + MARGIN)+i] = 33;
			B_3[j*(ACTUAL_IN_X + MARGIN)+i] = 44;
			B_4[j*(ACTUAL_IN_X + MARGIN)+i] = 55;
			B_5[j*(ACTUAL_IN_X + MARGIN)+i] = 66;
			B_6[j*(ACTUAL_IN_X + MARGIN)+i] = 77;
			B_7[j*(ACTUAL_IN_X + MARGIN)+i] = 88;
		}
	}

	program_vdma_matrix_0();
    program_vdma_matrix_1();
    program_vdma_display();

    // init matrix 0 and 1. Posible values 1, 2, 3, 4 or 5
	init_matrix(0, 3);
    init_matrix(1, 1);


	Xil_DCacheFlush ();

	//XWr_data_dir_adv_Set_base_addr(&MovDataCopro_0, (unsigned)B);
	XWr_data_dir_adv_Set_base_addr_0(&MovDataCopro_0, START_ADDRESS_IMAGE_0);
	XWr_data_dir_adv_Set_base_addr_1(&MovDataCopro_0, START_ADDRESS_IMAGE_1);
	XWr_data_dir_adv_Set_base_addr_2(&MovDataCopro_0, START_ADDRESS_IMAGE_2);
	XWr_data_dir_adv_Set_base_addr_3(&MovDataCopro_0, START_ADDRESS_IMAGE_3);
	XWr_data_dir_adv_Set_total_size(&MovDataCopro_0, numWrites);
	XWr_data_dir_adv_Set_width_img(&MovDataCopro_0, col);

    XWr_data_dir_adv_Set_base_addr_0(&MovDataCopro_1, START_ADDRESS_IMAGE_4);
    XWr_data_dir_adv_Set_base_addr_1(&MovDataCopro_1, START_ADDRESS_IMAGE_5);
    XWr_data_dir_adv_Set_base_addr_2(&MovDataCopro_1, START_ADDRESS_IMAGE_6);
    XWr_data_dir_adv_Set_base_addr_3(&MovDataCopro_1, START_ADDRESS_IMAGE_7);
	XWr_data_dir_adv_Set_total_size(&MovDataCopro_1, numWrites);
	XWr_data_dir_adv_Set_width_img(&MovDataCopro_1, col);

	XColector_display_Set_total_size(&CollectorDisplay_0, numWrites/2);
	XColector_display_Set_total_size(&CollectorDisplay_1, numWrites/2);

	//start the process
	XTime_GetTime(&tStart);

//	XGpioPs_WritePin(&Gpio, PinEMIO_0, 0x1);
//	XGpioPs_WritePin(&Gpio, PinEMIO_0, 0x0);
//	XGpioPs_WritePin(&Gpio, PinEMIO_1, 0x1);
//	XGpioPs_WritePin(&Gpio, PinEMIO_1, 0x0);
//
//	XGpioPs_WritePin(&Gpio, PinEMIO_2, 0x1);
//	XGpioPs_WritePin(&Gpio, PinEMIO_2, 0x0);
//	XGpioPs_WritePin(&Gpio, PinEMIO_3, 0x1);
//	XGpioPs_WritePin(&Gpio, PinEMIO_3, 0x0);

	XGpioPs_Write(&Gpio, 2, 0xFF);
	XGpioPs_Write(&Gpio, 2, 0x00);

	int cont = 0;

	do { statistics = XWr_data_dir_adv_Get_processed_elem(&MovDataCopro_0);
		//printf("Partial NumWrites: %d \n", statistics);
	} while ((statistics >= numWrites) && (cont++ < 10));

	do { statistics1 = XColector_display_Get_processed_elem(&CollectorDisplay_0);
	     statistics2 = XColector_display_Get_processed_elem(&CollectorDisplay_1);
	} while ((statistics1 < numWrites/2) || (statistics2 < numWrites/2));

	XTime_GetTime(&tEnd2);

	do { statistics1 = XWr_data_dir_adv_Get_processed_elem(&MovDataCopro_0);
	     statistics2 = XWr_data_dir_adv_Get_processed_elem(&MovDataCopro_1);
	} while ((statistics1 < numWrites) || (statistics2 < numWrites));

	XTime_GetTime(&tEnd);


	run_time = tEnd - tStart - calibrationPS;
	time_us = 1.0 * run_time / (COUNTS_PER_SECOND/1000000);
	time_ms = 1.0 * run_time / (COUNTS_PER_SECOND/1000);
	fps_frame = 1.0 * COUNTS_PER_SECOND / run_time;
	printf("\rRunTimeRead HP: %llu PS clock cycles (%.1f us - %.3f ms). FPS: %.2f.\n", run_time, time_us, time_ms, fps_frame);
	statistics = XWr_data_dir_adv_Get_processed_elem(&MovDataCopro_0);
	printf("Total Writes: %i \n", statistics);


	run_time = tEnd2 - tStart - calibrationPS;
	time_us = 1.0 * run_time / (COUNTS_PER_SECOND/1000000);
	time_ms = 1.0 * run_time / (COUNTS_PER_SECOND/1000);
	fps_frame = 1.0 * COUNTS_PER_SECOND / run_time;
	printf("\rRunTimeRead GP: %llu PS clock cycles (%.1f us - %.3f ms). FPS: %.2f.\n", run_time, time_us, time_ms, fps_frame);
	statistics = XColector_display_Get_processed_elem(&CollectorDisplay_0);
	printf("Total Reads: %i, 64 bit Wide\n", statistics);

	Xil_DCacheFlush ();

    err_cnt  = compare_result(numWrites, A_0, B_0);
    err_cnt += compare_result(numWrites, A_1, B_4);

	cout << endl;

	if (!err_cnt)
	   printf("Success moved Data\n");
	else
	   printf("Total %d Errors.\n", err_cnt);

	statistics = XWr_data_dir_adv_Get_processed_elem(&MovDataCopro_0);
	printf("Flag statistics (transmited for copro0): %i \n", statistics);
	statistics = XWr_data_dir_adv_Get_processed_elem(&MovDataCopro_1);
	printf("Flag statistics (transmited for copro1): %i \n", statistics);


	//u64 acum;
	u32 proc, rec;
	//acum = XColector_display_Get_accum_total(&CollectorDisplay_0);
	proc = XColector_display_Get_processed_elem(&CollectorDisplay_0);
	rec  = XColector_display_Get_received_img(&CollectorDisplay_0);
	cout << "display 0 - ";
	//cout << "accum_total: " << acum << "  ";
	cout << "proc.elem: " << proc << "  ";
	cout << "received_img: " << rec  << "  " << endl;
	//acum = XColector_display_Get_accum_total(&CollectorDisplay_1);
	proc = XColector_display_Get_processed_elem(&CollectorDisplay_1);
	rec  = XColector_display_Get_received_img(&CollectorDisplay_1);
	cout << "display 1 - ";
	//cout << "accum_total: " << acum << "  ";
	cout << "proc.elem: " << proc << "  ";
	cout << "received_img: " << rec  << "  " << endl;

	return 0;
}


//------------------------------------------------------------------------
void program_vdma_display(void)
{
	printf("Programming VDMA_DISPLAY_0 registers...\n");
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_VDMACR_ADDR)        = VDMA_DISPLAY_0_MM2S_VDMACR_DATA;
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_START_ADDR_0_ADDR)  = VDMA_DISPLAY_0_SART_ADDR_0_DATA;
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_START_ADDR_1_ADDR)  = VDMA_DISPLAY_0_SART_ADDR_1_DATA;
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_START_ADDR_2_ADDR)  = VDMA_DISPLAY_0_SART_ADDR_2_DATA;
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_START_ADDR_3_ADDR)  = VDMA_DISPLAY_0_SART_ADDR_3_DATA;
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_FRMDLY_STRIDE_ADDR) = VDMA_DISPLAY_0_MM2S_FRMDLY_STRIDE_DATA;
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_HSIZE_ADDR)         = VDMA_DISPLAY_0_MM2S_HSIZE_DATA;
	*(unsigned int *)(VDMA_DISPLAY_0_BASEADDR + MM2S_VSIZE_ADDR)         = VDMA_DISPLAY_0_MM2S_VSIZE_DATA;

	printf("Programming VDMA_DISPLAY_1 registers...\n");
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_VDMACR_ADDR)        = VDMA_DISPLAY_1_MM2S_VDMACR_DATA;
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_START_ADDR_0_ADDR)  = VDMA_DISPLAY_1_SART_ADDR_0_DATA;
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_START_ADDR_1_ADDR)  = VDMA_DISPLAY_1_SART_ADDR_1_DATA;
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_START_ADDR_2_ADDR)  = VDMA_DISPLAY_1_SART_ADDR_2_DATA;
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_START_ADDR_3_ADDR)  = VDMA_DISPLAY_1_SART_ADDR_3_DATA;
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_FRMDLY_STRIDE_ADDR) = VDMA_DISPLAY_1_MM2S_FRMDLY_STRIDE_DATA;
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_HSIZE_ADDR)         = VDMA_DISPLAY_1_MM2S_HSIZE_DATA;
	*(unsigned int *)(VDMA_DISPLAY_1_BASEADDR + MM2S_VSIZE_ADDR)         = VDMA_DISPLAY_1_MM2S_VSIZE_DATA;
}
//------------------------------------------------------------------------
void program_vdma_matrix_0(void)
{
	printf("Programming VDMA_MATRIX_0 registers...\n");
	*(unsigned int *)(VDMA_MATRIX_0_BASEADDR + MM2S_VDMACR_ADDR)        = VDMA_MATRIX_0_MM2S_VDMACR_DATA;
	*(unsigned int *)(VDMA_MATRIX_0_BASEADDR + MM2S_START_ADDR_0_ADDR)  = VDMA_MATRIX_0_SART_ADDR_DATA;
	*(unsigned int *)(VDMA_MATRIX_0_BASEADDR + MM2S_FRMDLY_STRIDE_ADDR) = VDMA_MATRIX_0_MM2S_FRMDLY_STRIDE_DATA;
	*(unsigned int *)(VDMA_MATRIX_0_BASEADDR + MM2S_HSIZE_ADDR)         = VDMA_MATRIX_0_MM2S_HSIZE_DATA;
	*(unsigned int *)(VDMA_MATRIX_0_BASEADDR + MM2S_VSIZE_ADDR)         = VDMA_MATRIX_0_MM2S_VSIZE_DATA;
}

void program_vdma_matrix_1(void)
{
	printf("Programming VDMA_MATRIX_1 registers...\n");
	*(unsigned int *)(VDMA_MATRIX_1_BASEADDR + MM2S_VDMACR_ADDR)        = VDMA_MATRIX_1_MM2S_VDMACR_DATA;
	*(unsigned int *)(VDMA_MATRIX_1_BASEADDR + MM2S_START_ADDR_0_ADDR)  = VDMA_MATRIX_1_SART_ADDR_DATA;
	*(unsigned int *)(VDMA_MATRIX_1_BASEADDR + MM2S_FRMDLY_STRIDE_ADDR) = VDMA_MATRIX_1_MM2S_FRMDLY_STRIDE_DATA;
	*(unsigned int *)(VDMA_MATRIX_1_BASEADDR + MM2S_HSIZE_ADDR)         = VDMA_MATRIX_1_MM2S_HSIZE_DATA;
	*(unsigned int *)(VDMA_MATRIX_1_BASEADDR + MM2S_VSIZE_ADDR)         = VDMA_MATRIX_1_MM2S_VSIZE_DATA;
}
//------------------------------------------------------------------------
void init_matrix(int mat, int nroSec)
{
	switch(nroSec) {
	   case 1  :
		   	   init_matrix_1(mat); break;
	   case 2  :
	   		   init_matrix_2(mat); break;
	   case 3  :
	   		   init_matrix_3(mat); break;
	   case 4  :
	   		   init_matrix_4(mat); break;
	   case 5  :
	   		   init_matrix_5(mat); break;
	   default : //Optional
		       printf("Invalid number of sequence in initialization");
		       exit(1);
	}
}

//------------------------------------------------------------------------
void init_matrix_1(int mat)
{
	// by default order. 0,1,2,...
	unsigned int i, j;
	data_t_W *addr;
	data_t_W val, index;
	printf("Initialize Mat %d, with content 1 (consecutive data)\n",mat);

	if (mat == 0)
		addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;
	else
		addr = (data_t_W *)VDMA_MATRIX_1_SART_ADDR_DATA;

	for(j=0; j< ACTUAL_IN_Y; j++)
	{
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++)
		{   index = i + j*(ACTUAL_IN_X + MARGIN);
			val = (data_t_W)(index) << 32;
			//val = 1 << 32;
			*addr= val | (i << 16) | j;
			addr++;
		}

	}
}
//------------------------------------------------------------------------------
void init_matrix_2(int mat)
{
	// diagonal access
	unsigned int i, j, ind_i, ind_j;
	data_t_W *addr;
	data_t_W val, index;

	printf("Initialize Mat %d, with content 2 (Diagonal Data)\n",mat);

	if (mat == 0)
		addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;
	else
		addr = (data_t_W *)VDMA_MATRIX_1_SART_ADDR_DATA;

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
void init_matrix_3(int mat)
{
	// Vertical columns 0, i, 2i, 3i...
	//                  1, i+2, 2i+1, ...
	// column and row should be multiple of each other...
	unsigned int i, j, ind_i, ind_j;
	data_t_W *addr;
	data_t_W val, index;

	printf("Initialize Mat %d, with content 3 (vertical Data)\n",mat);

	if (mat == 0)
		addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;
	else
		addr = (data_t_W *)VDMA_MATRIX_1_SART_ADDR_DATA;

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
//------------------------------------------------------------------------------//------------------------------------------------------------------------
void init_matrix_4(int mat)
{
	// Reverser order. N-1, N-2, ... , 2, 1, 0.
	unsigned int i, j, ind_i, ind_j;
	data_t_W *addr;
	data_t_W val, index;

	printf("Initialize Mat %d, with content 4 (Inverted Data)\n",mat);

	if (mat == 0)
		addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;
	else
		addr = (data_t_W *)VDMA_MATRIX_1_SART_ADDR_DATA;


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
void init_matrix_5(int mat)
{
	// diagonal access
	unsigned int i, j, ind_i, ind_j;
	data_t_W *addr;
	data_t_W val, index;

	printf("Initialize Mat %d, with content 5 (Another Diagonal Data)\n",mat);

	if (mat == 0)
		addr = (data_t_W *)VDMA_MATRIX_0_SART_ADDR_DATA;
	else
		addr = (data_t_W *)VDMA_MATRIX_1_SART_ADDR_DATA;

	for(j=0; j< ACTUAL_IN_Y; j++)
	{
		for(i=0; i < (ACTUAL_IN_X + MARGIN); i++)
		{
			index = i + j*(ACTUAL_IN_X + MARGIN);
			val = (data_t_W)(index) << 32;
			ind_i = (17*i) % (ACTUAL_IN_X + MARGIN);
			ind_j = (23*(i + j)) % ACTUAL_IN_Y;
			*addr= val | (ind_i << 16) | ind_j;
			addr++;
		}

	}
}
//------------------------------------------------------------------------------

//------------------------------------------------------------------------------
int compare_result(int numWrites, data_t_W *A, data_t_R *B) {

int err_cnt = 0;
int i, index;

//Compare results
for(i=0; i <  numWrites; i++){
//for(i=0; i <  500; i++){
	data_t_W auxW = A[i];
	data_t_R auxR = (auxW >> 32);
	uint addr_i = (auxW >> 16) & 0xFFFF;
	uint addr_j = (auxW >> 0 ) & 0xFFFF;
	index = addr_i + addr_j*(ACTUAL_IN_X + MARGIN);
	data_t_R auxB = B[index] & 0x00FFFFFF;

	if(auxB != auxR){
#ifdef PRINT_ERRORS
		if (i%2==0) cout << endl;
		cout << "i:" << dec << i << " indx:"<< index << " A: " << hex << auxR << " B: " << B[index] << " ";
		cout << dec << "(ai: " << addr_i << " aj: " << addr_j << ")   ";
#endif
		err_cnt++;
	 }

	}
//cout << "Result of frame: " << (B[0] >> 24) << endl;

return err_cnt;
}

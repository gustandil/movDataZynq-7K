// ==============================================================
// Generated by Vitis HLS v2023.1
// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// ==============================================================

`timescale 1 ns / 1 ps 

(* CORE_GENERATION_INFO="path_thr_axis_path_thr_axis,hls_ip_2023_1,{HLS_INPUT_TYPE=cxx,HLS_INPUT_FLOAT=0,HLS_INPUT_FIXED=0,HLS_INPUT_PART=xc7z020-clg484-1,HLS_INPUT_CLOCK=10.000000,HLS_INPUT_ARCH=others,HLS_SYN_CLOCK=4.838000,HLS_SYN_LAT=106,HLS_SYN_TPT=none,HLS_SYN_MEM=0,HLS_SYN_DSP=0,HLS_SYN_FF=212,HLS_SYN_LUT=330,HLS_VERSION=2023_1}" *)

module path_thr_axis (
        ap_clk,
        ap_rst_n,
        strm_in_TDATA,
        strm_in_TVALID,
        strm_in_TREADY,
        strm_in_TKEEP,
        strm_in_TSTRB,
        strm_in_TUSER,
        strm_in_TLAST,
        strm_in_TID,
        strm_in_TDEST,
        strm_out_TDATA,
        strm_out_TVALID,
        strm_out_TREADY,
        strm_out_TKEEP,
        strm_out_TSTRB,
        strm_out_TUSER,
        strm_out_TLAST,
        strm_out_TID,
        strm_out_TDEST,
        s_axi_Axi_lite_AWVALID,
        s_axi_Axi_lite_AWREADY,
        s_axi_Axi_lite_AWADDR,
        s_axi_Axi_lite_WVALID,
        s_axi_Axi_lite_WREADY,
        s_axi_Axi_lite_WDATA,
        s_axi_Axi_lite_WSTRB,
        s_axi_Axi_lite_ARVALID,
        s_axi_Axi_lite_ARREADY,
        s_axi_Axi_lite_ARADDR,
        s_axi_Axi_lite_RVALID,
        s_axi_Axi_lite_RREADY,
        s_axi_Axi_lite_RDATA,
        s_axi_Axi_lite_RRESP,
        s_axi_Axi_lite_BVALID,
        s_axi_Axi_lite_BREADY,
        s_axi_Axi_lite_BRESP
);

parameter    ap_ST_fsm_state1 = 4'd1;
parameter    ap_ST_fsm_state2 = 4'd2;
parameter    ap_ST_fsm_state3 = 4'd4;
parameter    ap_ST_fsm_state4 = 4'd8;
parameter    C_S_AXI_AXI_LITE_DATA_WIDTH = 32;
parameter    C_S_AXI_AXI_LITE_ADDR_WIDTH = 5;
parameter    C_S_AXI_DATA_WIDTH = 32;

parameter C_S_AXI_AXI_LITE_WSTRB_WIDTH = (32 / 8);
parameter C_S_AXI_WSTRB_WIDTH = (32 / 8);

input   ap_clk;
input   ap_rst_n;
input  [63:0] strm_in_TDATA;
input   strm_in_TVALID;
output   strm_in_TREADY;
input  [7:0] strm_in_TKEEP;
input  [7:0] strm_in_TSTRB;
input  [0:0] strm_in_TUSER;
input  [0:0] strm_in_TLAST;
input  [0:0] strm_in_TID;
input  [0:0] strm_in_TDEST;
output  [31:0] strm_out_TDATA;
output   strm_out_TVALID;
input   strm_out_TREADY;
output  [3:0] strm_out_TKEEP;
output  [3:0] strm_out_TSTRB;
output  [0:0] strm_out_TUSER;
output  [0:0] strm_out_TLAST;
output  [0:0] strm_out_TID;
output  [0:0] strm_out_TDEST;
input   s_axi_Axi_lite_AWVALID;
output   s_axi_Axi_lite_AWREADY;
input  [C_S_AXI_AXI_LITE_ADDR_WIDTH - 1:0] s_axi_Axi_lite_AWADDR;
input   s_axi_Axi_lite_WVALID;
output   s_axi_Axi_lite_WREADY;
input  [C_S_AXI_AXI_LITE_DATA_WIDTH - 1:0] s_axi_Axi_lite_WDATA;
input  [C_S_AXI_AXI_LITE_WSTRB_WIDTH - 1:0] s_axi_Axi_lite_WSTRB;
input   s_axi_Axi_lite_ARVALID;
output   s_axi_Axi_lite_ARREADY;
input  [C_S_AXI_AXI_LITE_ADDR_WIDTH - 1:0] s_axi_Axi_lite_ARADDR;
output   s_axi_Axi_lite_RVALID;
input   s_axi_Axi_lite_RREADY;
output  [C_S_AXI_AXI_LITE_DATA_WIDTH - 1:0] s_axi_Axi_lite_RDATA;
output  [1:0] s_axi_Axi_lite_RRESP;
output   s_axi_Axi_lite_BVALID;
input   s_axi_Axi_lite_BREADY;
output  [1:0] s_axi_Axi_lite_BRESP;

 reg    ap_rst_n_inv;
reg   [31:0] addr;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_done;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_idle;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_ready;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_in_TREADY;
wire   [31:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TDATA;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TREADY;
wire   [3:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TKEEP;
wire   [3:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TSTRB;
wire   [0:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TUSER;
wire   [0:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TLAST;
wire   [0:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TID;
wire   [0:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TDEST;
wire   [31:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_statistics;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_statistics_ap_vld;
wire   [0:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_flag_0_out;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_flag_0_out_ap_vld;
wire   [31:0] grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_loc_0_out;
wire    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_loc_0_out_ap_vld;
reg    grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start_reg;
(* fsm_encoding = "none" *) reg   [3:0] ap_CS_fsm;
wire    ap_CS_fsm_state2;
wire    ap_CS_fsm_state3;
reg   [0:0] addr_flag_0_loc_fu_78;
reg   [31:0] addr_loc_0_loc_fu_74;
wire    ap_CS_fsm_state4;
wire    regslice_both_strm_out_V_data_V_U_apdone_blk;
wire   [0:0] addr_flag_0_loc_load_load_fu_124_p1;
reg   [3:0] ap_NS_fsm;
wire    ap_ST_fsm_state1_blk;
wire    ap_ST_fsm_state2_blk;
reg    ap_ST_fsm_state3_blk;
reg    ap_ST_fsm_state4_blk;
wire    regslice_both_strm_in_V_data_V_U_apdone_blk;
wire   [63:0] strm_in_TDATA_int_regslice;
wire    strm_in_TVALID_int_regslice;
reg    strm_in_TREADY_int_regslice;
wire    regslice_both_strm_in_V_data_V_U_ack_in;
wire    regslice_both_strm_in_V_keep_V_U_apdone_blk;
wire   [7:0] strm_in_TKEEP_int_regslice;
wire    regslice_both_strm_in_V_keep_V_U_vld_out;
wire    regslice_both_strm_in_V_keep_V_U_ack_in;
wire    regslice_both_strm_in_V_strb_V_U_apdone_blk;
wire   [7:0] strm_in_TSTRB_int_regslice;
wire    regslice_both_strm_in_V_strb_V_U_vld_out;
wire    regslice_both_strm_in_V_strb_V_U_ack_in;
wire    regslice_both_strm_in_V_user_V_U_apdone_blk;
wire   [0:0] strm_in_TUSER_int_regslice;
wire    regslice_both_strm_in_V_user_V_U_vld_out;
wire    regslice_both_strm_in_V_user_V_U_ack_in;
wire    regslice_both_strm_in_V_last_V_U_apdone_blk;
wire   [0:0] strm_in_TLAST_int_regslice;
wire    regslice_both_strm_in_V_last_V_U_vld_out;
wire    regslice_both_strm_in_V_last_V_U_ack_in;
wire    regslice_both_strm_in_V_id_V_U_apdone_blk;
wire   [0:0] strm_in_TID_int_regslice;
wire    regslice_both_strm_in_V_id_V_U_vld_out;
wire    regslice_both_strm_in_V_id_V_U_ack_in;
wire    regslice_both_strm_in_V_dest_V_U_apdone_blk;
wire   [0:0] strm_in_TDEST_int_regslice;
wire    regslice_both_strm_in_V_dest_V_U_vld_out;
wire    regslice_both_strm_in_V_dest_V_U_ack_in;
wire    strm_out_TVALID_int_regslice;
wire    strm_out_TREADY_int_regslice;
wire    regslice_both_strm_out_V_data_V_U_vld_out;
wire    regslice_both_strm_out_V_keep_V_U_apdone_blk;
wire    regslice_both_strm_out_V_keep_V_U_ack_in_dummy;
wire    regslice_both_strm_out_V_keep_V_U_vld_out;
wire    regslice_both_strm_out_V_strb_V_U_apdone_blk;
wire    regslice_both_strm_out_V_strb_V_U_ack_in_dummy;
wire    regslice_both_strm_out_V_strb_V_U_vld_out;
wire    regslice_both_strm_out_V_user_V_U_apdone_blk;
wire    regslice_both_strm_out_V_user_V_U_ack_in_dummy;
wire    regslice_both_strm_out_V_user_V_U_vld_out;
wire    regslice_both_strm_out_V_last_V_U_apdone_blk;
wire    regslice_both_strm_out_V_last_V_U_ack_in_dummy;
wire    regslice_both_strm_out_V_last_V_U_vld_out;
wire    regslice_both_strm_out_V_id_V_U_apdone_blk;
wire    regslice_both_strm_out_V_id_V_U_ack_in_dummy;
wire    regslice_both_strm_out_V_id_V_U_vld_out;
wire    regslice_both_strm_out_V_dest_V_U_apdone_blk;
wire    regslice_both_strm_out_V_dest_V_U_ack_in_dummy;
wire    regslice_both_strm_out_V_dest_V_U_vld_out;
wire    ap_ce_reg;

// power-on initialization
initial begin
#0 addr = 32'd0;
#0 grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start_reg = 1'b0;
#0 ap_CS_fsm = 4'd1;
end

path_thr_axis_path_thr_axis_Pipeline_VITIS_LOOP_31_1 grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .ap_start(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start),
    .ap_done(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_done),
    .ap_idle(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_idle),
    .ap_ready(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_ready),
    .addr_load(addr),
    .strm_in_TDATA(strm_in_TDATA_int_regslice),
    .strm_in_TVALID(strm_in_TVALID_int_regslice),
    .strm_in_TREADY(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_in_TREADY),
    .strm_in_TKEEP(strm_in_TKEEP_int_regslice),
    .strm_in_TSTRB(strm_in_TSTRB_int_regslice),
    .strm_in_TUSER(strm_in_TUSER_int_regslice),
    .strm_in_TLAST(strm_in_TLAST_int_regslice),
    .strm_in_TID(strm_in_TID_int_regslice),
    .strm_in_TDEST(strm_in_TDEST_int_regslice),
    .strm_out_TDATA(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TDATA),
    .strm_out_TVALID(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .strm_out_TREADY(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TREADY),
    .strm_out_TKEEP(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TKEEP),
    .strm_out_TSTRB(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TSTRB),
    .strm_out_TUSER(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TUSER),
    .strm_out_TLAST(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TLAST),
    .strm_out_TID(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TID),
    .strm_out_TDEST(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TDEST),
    .statistics(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_statistics),
    .statistics_ap_vld(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_statistics_ap_vld),
    .addr_flag_0_out(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_flag_0_out),
    .addr_flag_0_out_ap_vld(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_flag_0_out_ap_vld),
    .addr_loc_0_out(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_loc_0_out),
    .addr_loc_0_out_ap_vld(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_loc_0_out_ap_vld)
);

path_thr_axis_Axi_lite_s_axi #(
    .C_S_AXI_ADDR_WIDTH( C_S_AXI_AXI_LITE_ADDR_WIDTH ),
    .C_S_AXI_DATA_WIDTH( C_S_AXI_AXI_LITE_DATA_WIDTH ))
Axi_lite_s_axi_U(
    .AWVALID(s_axi_Axi_lite_AWVALID),
    .AWREADY(s_axi_Axi_lite_AWREADY),
    .AWADDR(s_axi_Axi_lite_AWADDR),
    .WVALID(s_axi_Axi_lite_WVALID),
    .WREADY(s_axi_Axi_lite_WREADY),
    .WDATA(s_axi_Axi_lite_WDATA),
    .WSTRB(s_axi_Axi_lite_WSTRB),
    .ARVALID(s_axi_Axi_lite_ARVALID),
    .ARREADY(s_axi_Axi_lite_ARREADY),
    .ARADDR(s_axi_Axi_lite_ARADDR),
    .RVALID(s_axi_Axi_lite_RVALID),
    .RREADY(s_axi_Axi_lite_RREADY),
    .RDATA(s_axi_Axi_lite_RDATA),
    .RRESP(s_axi_Axi_lite_RRESP),
    .BVALID(s_axi_Axi_lite_BVALID),
    .BREADY(s_axi_Axi_lite_BREADY),
    .BRESP(s_axi_Axi_lite_BRESP),
    .ACLK(ap_clk),
    .ARESET(ap_rst_n_inv),
    .ACLK_EN(1'b1),
    .statistics(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_statistics),
    .statistics_ap_vld(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_statistics_ap_vld)
);

path_thr_axis_regslice_both #(
    .DataWidth( 64 ))
regslice_both_strm_in_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(strm_in_TDATA),
    .vld_in(strm_in_TVALID),
    .ack_in(regslice_both_strm_in_V_data_V_U_ack_in),
    .data_out(strm_in_TDATA_int_regslice),
    .vld_out(strm_in_TVALID_int_regslice),
    .ack_out(strm_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_strm_in_V_data_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 8 ))
regslice_both_strm_in_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(strm_in_TKEEP),
    .vld_in(strm_in_TVALID),
    .ack_in(regslice_both_strm_in_V_keep_V_U_ack_in),
    .data_out(strm_in_TKEEP_int_regslice),
    .vld_out(regslice_both_strm_in_V_keep_V_U_vld_out),
    .ack_out(strm_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_strm_in_V_keep_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 8 ))
regslice_both_strm_in_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(strm_in_TSTRB),
    .vld_in(strm_in_TVALID),
    .ack_in(regslice_both_strm_in_V_strb_V_U_ack_in),
    .data_out(strm_in_TSTRB_int_regslice),
    .vld_out(regslice_both_strm_in_V_strb_V_U_vld_out),
    .ack_out(strm_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_strm_in_V_strb_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_in_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(strm_in_TUSER),
    .vld_in(strm_in_TVALID),
    .ack_in(regslice_both_strm_in_V_user_V_U_ack_in),
    .data_out(strm_in_TUSER_int_regslice),
    .vld_out(regslice_both_strm_in_V_user_V_U_vld_out),
    .ack_out(strm_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_strm_in_V_user_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_in_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(strm_in_TLAST),
    .vld_in(strm_in_TVALID),
    .ack_in(regslice_both_strm_in_V_last_V_U_ack_in),
    .data_out(strm_in_TLAST_int_regslice),
    .vld_out(regslice_both_strm_in_V_last_V_U_vld_out),
    .ack_out(strm_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_strm_in_V_last_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_in_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(strm_in_TID),
    .vld_in(strm_in_TVALID),
    .ack_in(regslice_both_strm_in_V_id_V_U_ack_in),
    .data_out(strm_in_TID_int_regslice),
    .vld_out(regslice_both_strm_in_V_id_V_U_vld_out),
    .ack_out(strm_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_strm_in_V_id_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_in_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(strm_in_TDEST),
    .vld_in(strm_in_TVALID),
    .ack_in(regslice_both_strm_in_V_dest_V_U_ack_in),
    .data_out(strm_in_TDEST_int_regslice),
    .vld_out(regslice_both_strm_in_V_dest_V_U_vld_out),
    .ack_out(strm_in_TREADY_int_regslice),
    .apdone_blk(regslice_both_strm_in_V_dest_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 32 ))
regslice_both_strm_out_V_data_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TDATA),
    .vld_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .ack_in(strm_out_TREADY_int_regslice),
    .data_out(strm_out_TDATA),
    .vld_out(regslice_both_strm_out_V_data_V_U_vld_out),
    .ack_out(strm_out_TREADY),
    .apdone_blk(regslice_both_strm_out_V_data_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 4 ))
regslice_both_strm_out_V_keep_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TKEEP),
    .vld_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .ack_in(regslice_both_strm_out_V_keep_V_U_ack_in_dummy),
    .data_out(strm_out_TKEEP),
    .vld_out(regslice_both_strm_out_V_keep_V_U_vld_out),
    .ack_out(strm_out_TREADY),
    .apdone_blk(regslice_both_strm_out_V_keep_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 4 ))
regslice_both_strm_out_V_strb_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TSTRB),
    .vld_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .ack_in(regslice_both_strm_out_V_strb_V_U_ack_in_dummy),
    .data_out(strm_out_TSTRB),
    .vld_out(regslice_both_strm_out_V_strb_V_U_vld_out),
    .ack_out(strm_out_TREADY),
    .apdone_blk(regslice_both_strm_out_V_strb_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_out_V_user_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TUSER),
    .vld_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .ack_in(regslice_both_strm_out_V_user_V_U_ack_in_dummy),
    .data_out(strm_out_TUSER),
    .vld_out(regslice_both_strm_out_V_user_V_U_vld_out),
    .ack_out(strm_out_TREADY),
    .apdone_blk(regslice_both_strm_out_V_user_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_out_V_last_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TLAST),
    .vld_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .ack_in(regslice_both_strm_out_V_last_V_U_ack_in_dummy),
    .data_out(strm_out_TLAST),
    .vld_out(regslice_both_strm_out_V_last_V_U_vld_out),
    .ack_out(strm_out_TREADY),
    .apdone_blk(regslice_both_strm_out_V_last_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_out_V_id_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TID),
    .vld_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .ack_in(regslice_both_strm_out_V_id_V_U_ack_in_dummy),
    .data_out(strm_out_TID),
    .vld_out(regslice_both_strm_out_V_id_V_U_vld_out),
    .ack_out(strm_out_TREADY),
    .apdone_blk(regslice_both_strm_out_V_id_V_U_apdone_blk)
);

path_thr_axis_regslice_both #(
    .DataWidth( 1 ))
regslice_both_strm_out_V_dest_V_U(
    .ap_clk(ap_clk),
    .ap_rst(ap_rst_n_inv),
    .data_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TDEST),
    .vld_in(grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID),
    .ack_in(regslice_both_strm_out_V_dest_V_U_ack_in_dummy),
    .data_out(strm_out_TDEST),
    .vld_out(regslice_both_strm_out_V_dest_V_U_vld_out),
    .ack_out(strm_out_TREADY),
    .apdone_blk(regslice_both_strm_out_V_dest_V_U_apdone_blk)
);

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        ap_CS_fsm <= ap_ST_fsm_state1;
    end else begin
        ap_CS_fsm <= ap_NS_fsm;
    end
end

always @ (posedge ap_clk) begin
    if (ap_rst_n_inv == 1'b1) begin
        grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start_reg <= 1'b0;
    end else begin
        if ((1'b1 == ap_CS_fsm_state2)) begin
            grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start_reg <= 1'b1;
        end else if ((grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_ready == 1'b1)) begin
            grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start_reg <= 1'b0;
        end
    end
end

always @ (posedge ap_clk) begin
    if (((1'b1 == ap_CS_fsm_state4) & (1'd1 == addr_flag_0_loc_load_load_fu_124_p1) & (regslice_both_strm_out_V_data_V_U_apdone_blk == 1'b0))) begin
        addr <= addr_loc_0_loc_fu_74;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_flag_0_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        addr_flag_0_loc_fu_78 <= grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_flag_0_out;
    end
end

always @ (posedge ap_clk) begin
    if (((grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_loc_0_out_ap_vld == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
        addr_loc_0_loc_fu_74 <= grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_addr_loc_0_out;
    end
end

assign ap_ST_fsm_state1_blk = 1'b0;

assign ap_ST_fsm_state2_blk = 1'b0;

always @ (*) begin
    if ((grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_done == 1'b0)) begin
        ap_ST_fsm_state3_blk = 1'b1;
    end else begin
        ap_ST_fsm_state3_blk = 1'b0;
    end
end

always @ (*) begin
    if ((regslice_both_strm_out_V_data_V_U_apdone_blk == 1'b1)) begin
        ap_ST_fsm_state4_blk = 1'b1;
    end else begin
        ap_ST_fsm_state4_blk = 1'b0;
    end
end

always @ (*) begin
    if ((1'b1 == ap_CS_fsm_state3)) begin
        strm_in_TREADY_int_regslice = grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_in_TREADY;
    end else begin
        strm_in_TREADY_int_regslice = 1'b0;
    end
end

always @ (*) begin
    case (ap_CS_fsm)
        ap_ST_fsm_state1 : begin
            ap_NS_fsm = ap_ST_fsm_state2;
        end
        ap_ST_fsm_state2 : begin
            ap_NS_fsm = ap_ST_fsm_state3;
        end
        ap_ST_fsm_state3 : begin
            if (((grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_done == 1'b1) & (1'b1 == ap_CS_fsm_state3))) begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state3;
            end
        end
        ap_ST_fsm_state4 : begin
            if (((1'b1 == ap_CS_fsm_state4) & (regslice_both_strm_out_V_data_V_U_apdone_blk == 1'b0))) begin
                ap_NS_fsm = ap_ST_fsm_state1;
            end else begin
                ap_NS_fsm = ap_ST_fsm_state4;
            end
        end
        default : begin
            ap_NS_fsm = 'bx;
        end
    endcase
end

assign addr_flag_0_loc_load_load_fu_124_p1 = addr_flag_0_loc_fu_78;

assign ap_CS_fsm_state2 = ap_CS_fsm[32'd1];

assign ap_CS_fsm_state3 = ap_CS_fsm[32'd2];

assign ap_CS_fsm_state4 = ap_CS_fsm[32'd3];

always @ (*) begin
    ap_rst_n_inv = ~ap_rst_n;
end

assign grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start = grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_ap_start_reg;

assign grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TREADY = (strm_out_TREADY_int_regslice & ap_CS_fsm_state3);

assign strm_in_TREADY = regslice_both_strm_in_V_data_V_U_ack_in;

assign strm_out_TVALID = regslice_both_strm_out_V_data_V_U_vld_out;

assign strm_out_TVALID_int_regslice = grp_path_thr_axis_Pipeline_VITIS_LOOP_31_1_fu_82_strm_out_TVALID;

endmodule //path_thr_axis

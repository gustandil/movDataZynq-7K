// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
// Date        : Sat Sep  2 08:40:01 2023
// Host        : Fryg-X1 running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_stub.v
// Design      : design_1_system_ila_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "bd_f60c,Vivado 2023.1" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, probe0, SLOT_0_AXI_awid, 
  SLOT_0_AXI_awaddr, SLOT_0_AXI_awlen, SLOT_0_AXI_awsize, SLOT_0_AXI_awburst, 
  SLOT_0_AXI_awlock, SLOT_0_AXI_awcache, SLOT_0_AXI_awprot, SLOT_0_AXI_awqos, 
  SLOT_0_AXI_awvalid, SLOT_0_AXI_awready, SLOT_0_AXI_wid, SLOT_0_AXI_wdata, 
  SLOT_0_AXI_wstrb, SLOT_0_AXI_wlast, SLOT_0_AXI_wvalid, SLOT_0_AXI_wready, SLOT_0_AXI_bid, 
  SLOT_0_AXI_bresp, SLOT_0_AXI_bvalid, SLOT_0_AXI_bready, SLOT_0_AXI_arid, 
  SLOT_0_AXI_araddr, SLOT_0_AXI_arlen, SLOT_0_AXI_arsize, SLOT_0_AXI_arburst, 
  SLOT_0_AXI_arlock, SLOT_0_AXI_arcache, SLOT_0_AXI_arprot, SLOT_0_AXI_arqos, 
  SLOT_0_AXI_arvalid, SLOT_0_AXI_arready, SLOT_0_AXI_rid, SLOT_0_AXI_rdata, 
  SLOT_0_AXI_rresp, SLOT_0_AXI_rlast, SLOT_0_AXI_rvalid, SLOT_0_AXI_rready, 
  SLOT_1_AXIS_tdata, SLOT_1_AXIS_tkeep, SLOT_1_AXIS_tlast, SLOT_1_AXIS_tuser, 
  SLOT_1_AXIS_tvalid, SLOT_1_AXIS_tready, SLOT_2_AXIS_tdata, SLOT_2_AXIS_tlast, 
  SLOT_2_AXIS_tvalid, SLOT_2_AXIS_tready, SLOT_3_AXIS_tdata, SLOT_3_AXIS_tlast, 
  SLOT_3_AXIS_tvalid, SLOT_3_AXIS_tready, resetn, TRIG_IN_trig, TRIG_IN_ack, TRIG_OUT_trig, 
  TRIG_OUT_ack)
/* synthesis syn_black_box black_box_pad_pin="probe0[0:0],SLOT_0_AXI_awid[11:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awlen[3:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awlock[1:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awqos[3:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wid[11:0],SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wstrb[3:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bid[11:0],SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_arid[11:0],SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arlen[3:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arlock[1:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arqos[3:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rid[11:0],SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXIS_tdata[63:0],SLOT_1_AXIS_tkeep[7:0],SLOT_1_AXIS_tlast,SLOT_1_AXIS_tuser[0:0],SLOT_1_AXIS_tvalid,SLOT_1_AXIS_tready,SLOT_2_AXIS_tdata[31:0],SLOT_2_AXIS_tlast,SLOT_2_AXIS_tvalid,SLOT_2_AXIS_tready,SLOT_3_AXIS_tdata[31:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,resetn,TRIG_IN_trig[0:0],TRIG_IN_ack[0:0],TRIG_OUT_trig[0:0],TRIG_OUT_ack[0:0]" */
/* synthesis syn_force_seq_prim="clk" */;
  input clk /* synthesis syn_isclock = 1 */;
  input [0:0]probe0;
  input [11:0]SLOT_0_AXI_awid;
  input [31:0]SLOT_0_AXI_awaddr;
  input [3:0]SLOT_0_AXI_awlen;
  input [2:0]SLOT_0_AXI_awsize;
  input [1:0]SLOT_0_AXI_awburst;
  input [1:0]SLOT_0_AXI_awlock;
  input [3:0]SLOT_0_AXI_awcache;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input SLOT_0_AXI_awvalid;
  input SLOT_0_AXI_awready;
  input [11:0]SLOT_0_AXI_wid;
  input [31:0]SLOT_0_AXI_wdata;
  input [3:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wvalid;
  input SLOT_0_AXI_wready;
  input [11:0]SLOT_0_AXI_bid;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input SLOT_0_AXI_bready;
  input [11:0]SLOT_0_AXI_arid;
  input [31:0]SLOT_0_AXI_araddr;
  input [3:0]SLOT_0_AXI_arlen;
  input [2:0]SLOT_0_AXI_arsize;
  input [1:0]SLOT_0_AXI_arburst;
  input [1:0]SLOT_0_AXI_arlock;
  input [3:0]SLOT_0_AXI_arcache;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input SLOT_0_AXI_arvalid;
  input SLOT_0_AXI_arready;
  input [11:0]SLOT_0_AXI_rid;
  input [31:0]SLOT_0_AXI_rdata;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rvalid;
  input SLOT_0_AXI_rready;
  input [63:0]SLOT_1_AXIS_tdata;
  input [7:0]SLOT_1_AXIS_tkeep;
  input SLOT_1_AXIS_tlast;
  input [0:0]SLOT_1_AXIS_tuser;
  input SLOT_1_AXIS_tvalid;
  input SLOT_1_AXIS_tready;
  input [31:0]SLOT_2_AXIS_tdata;
  input SLOT_2_AXIS_tlast;
  input SLOT_2_AXIS_tvalid;
  input SLOT_2_AXIS_tready;
  input [31:0]SLOT_3_AXIS_tdata;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tvalid;
  input SLOT_3_AXIS_tready;
  input resetn;
  input [0:0]TRIG_IN_trig;
  output [0:0]TRIG_IN_ack;
  output [0:0]TRIG_OUT_trig;
  input [0:0]TRIG_OUT_ack;
endmodule

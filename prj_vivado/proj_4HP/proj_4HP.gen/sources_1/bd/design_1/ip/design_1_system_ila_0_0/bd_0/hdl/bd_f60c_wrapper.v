//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c_wrapper.bd
//Design : bd_f60c_wrapper
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module bd_f60c_wrapper
   (SLOT_0_AXI_araddr,
    SLOT_0_AXI_arburst,
    SLOT_0_AXI_arcache,
    SLOT_0_AXI_arid,
    SLOT_0_AXI_arlen,
    SLOT_0_AXI_arlock,
    SLOT_0_AXI_arprot,
    SLOT_0_AXI_arqos,
    SLOT_0_AXI_arready,
    SLOT_0_AXI_arsize,
    SLOT_0_AXI_arvalid,
    SLOT_0_AXI_awaddr,
    SLOT_0_AXI_awburst,
    SLOT_0_AXI_awcache,
    SLOT_0_AXI_awid,
    SLOT_0_AXI_awlen,
    SLOT_0_AXI_awlock,
    SLOT_0_AXI_awprot,
    SLOT_0_AXI_awqos,
    SLOT_0_AXI_awready,
    SLOT_0_AXI_awsize,
    SLOT_0_AXI_awvalid,
    SLOT_0_AXI_bid,
    SLOT_0_AXI_bready,
    SLOT_0_AXI_bresp,
    SLOT_0_AXI_bvalid,
    SLOT_0_AXI_rdata,
    SLOT_0_AXI_rid,
    SLOT_0_AXI_rlast,
    SLOT_0_AXI_rready,
    SLOT_0_AXI_rresp,
    SLOT_0_AXI_rvalid,
    SLOT_0_AXI_wdata,
    SLOT_0_AXI_wid,
    SLOT_0_AXI_wlast,
    SLOT_0_AXI_wready,
    SLOT_0_AXI_wstrb,
    SLOT_0_AXI_wvalid,
    SLOT_10_AXIS_tdata,
    SLOT_10_AXIS_tlast,
    SLOT_10_AXIS_tready,
    SLOT_10_AXIS_tvalid,
    SLOT_11_AXIS_tdata,
    SLOT_11_AXIS_tlast,
    SLOT_11_AXIS_tready,
    SLOT_11_AXIS_tvalid,
    SLOT_12_AXIS_tdata,
    SLOT_12_AXIS_tlast,
    SLOT_12_AXIS_tready,
    SLOT_12_AXIS_tvalid,
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arburst,
    SLOT_1_AXI_arcache,
    SLOT_1_AXI_arid,
    SLOT_1_AXI_arlen,
    SLOT_1_AXI_arlock,
    SLOT_1_AXI_arprot,
    SLOT_1_AXI_arqos,
    SLOT_1_AXI_arready,
    SLOT_1_AXI_arsize,
    SLOT_1_AXI_arvalid,
    SLOT_1_AXI_awaddr,
    SLOT_1_AXI_awburst,
    SLOT_1_AXI_awcache,
    SLOT_1_AXI_awid,
    SLOT_1_AXI_awlen,
    SLOT_1_AXI_awlock,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awqos,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awregion,
    SLOT_1_AXI_awsize,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bresp,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rid,
    SLOT_1_AXI_rlast,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wid,
    SLOT_1_AXI_wlast,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wstrb,
    SLOT_1_AXI_wvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arburst,
    SLOT_2_AXI_arcache,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arlock,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arqos,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awburst,
    SLOT_2_AXI_awcache,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awlock,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rresp,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXIS_tdata,
    SLOT_3_AXIS_tkeep,
    SLOT_3_AXIS_tlast,
    SLOT_3_AXIS_tready,
    SLOT_3_AXIS_tuser,
    SLOT_3_AXIS_tvalid,
    SLOT_4_AXIS_tdata,
    SLOT_4_AXIS_tkeep,
    SLOT_4_AXIS_tlast,
    SLOT_4_AXIS_tready,
    SLOT_4_AXIS_tuser,
    SLOT_4_AXIS_tvalid,
    SLOT_5_AXI_araddr,
    SLOT_5_AXI_arburst,
    SLOT_5_AXI_arcache,
    SLOT_5_AXI_arid,
    SLOT_5_AXI_arlen,
    SLOT_5_AXI_arlock,
    SLOT_5_AXI_arprot,
    SLOT_5_AXI_arqos,
    SLOT_5_AXI_arready,
    SLOT_5_AXI_arsize,
    SLOT_5_AXI_arvalid,
    SLOT_5_AXI_awaddr,
    SLOT_5_AXI_awburst,
    SLOT_5_AXI_awcache,
    SLOT_5_AXI_awid,
    SLOT_5_AXI_awlen,
    SLOT_5_AXI_awlock,
    SLOT_5_AXI_awprot,
    SLOT_5_AXI_awqos,
    SLOT_5_AXI_awready,
    SLOT_5_AXI_awsize,
    SLOT_5_AXI_awvalid,
    SLOT_5_AXI_bid,
    SLOT_5_AXI_bready,
    SLOT_5_AXI_bresp,
    SLOT_5_AXI_bvalid,
    SLOT_5_AXI_rdata,
    SLOT_5_AXI_rid,
    SLOT_5_AXI_rlast,
    SLOT_5_AXI_rready,
    SLOT_5_AXI_rresp,
    SLOT_5_AXI_rvalid,
    SLOT_5_AXI_wdata,
    SLOT_5_AXI_wid,
    SLOT_5_AXI_wlast,
    SLOT_5_AXI_wready,
    SLOT_5_AXI_wstrb,
    SLOT_5_AXI_wvalid,
    SLOT_6_AXI_araddr,
    SLOT_6_AXI_arburst,
    SLOT_6_AXI_arcache,
    SLOT_6_AXI_arlen,
    SLOT_6_AXI_arlock,
    SLOT_6_AXI_arprot,
    SLOT_6_AXI_arqos,
    SLOT_6_AXI_arready,
    SLOT_6_AXI_arsize,
    SLOT_6_AXI_arvalid,
    SLOT_6_AXI_awaddr,
    SLOT_6_AXI_awburst,
    SLOT_6_AXI_awcache,
    SLOT_6_AXI_awlen,
    SLOT_6_AXI_awlock,
    SLOT_6_AXI_awprot,
    SLOT_6_AXI_awready,
    SLOT_6_AXI_awsize,
    SLOT_6_AXI_awvalid,
    SLOT_6_AXI_bready,
    SLOT_6_AXI_bvalid,
    SLOT_6_AXI_rdata,
    SLOT_6_AXI_rlast,
    SLOT_6_AXI_rready,
    SLOT_6_AXI_rresp,
    SLOT_6_AXI_rvalid,
    SLOT_6_AXI_wdata,
    SLOT_6_AXI_wlast,
    SLOT_6_AXI_wready,
    SLOT_6_AXI_wvalid,
    SLOT_7_AXI_araddr,
    SLOT_7_AXI_arburst,
    SLOT_7_AXI_arcache,
    SLOT_7_AXI_arlen,
    SLOT_7_AXI_arlock,
    SLOT_7_AXI_arprot,
    SLOT_7_AXI_arqos,
    SLOT_7_AXI_arready,
    SLOT_7_AXI_arsize,
    SLOT_7_AXI_arvalid,
    SLOT_7_AXI_awaddr,
    SLOT_7_AXI_awburst,
    SLOT_7_AXI_awcache,
    SLOT_7_AXI_awlen,
    SLOT_7_AXI_awlock,
    SLOT_7_AXI_awprot,
    SLOT_7_AXI_awready,
    SLOT_7_AXI_awsize,
    SLOT_7_AXI_awvalid,
    SLOT_7_AXI_bready,
    SLOT_7_AXI_bvalid,
    SLOT_7_AXI_rdata,
    SLOT_7_AXI_rlast,
    SLOT_7_AXI_rready,
    SLOT_7_AXI_rresp,
    SLOT_7_AXI_rvalid,
    SLOT_7_AXI_wdata,
    SLOT_7_AXI_wlast,
    SLOT_7_AXI_wready,
    SLOT_7_AXI_wvalid,
    SLOT_8_AXI_araddr,
    SLOT_8_AXI_arburst,
    SLOT_8_AXI_arcache,
    SLOT_8_AXI_arlen,
    SLOT_8_AXI_arlock,
    SLOT_8_AXI_arprot,
    SLOT_8_AXI_arqos,
    SLOT_8_AXI_arready,
    SLOT_8_AXI_arsize,
    SLOT_8_AXI_arvalid,
    SLOT_8_AXI_awaddr,
    SLOT_8_AXI_awburst,
    SLOT_8_AXI_awcache,
    SLOT_8_AXI_awlen,
    SLOT_8_AXI_awlock,
    SLOT_8_AXI_awprot,
    SLOT_8_AXI_awready,
    SLOT_8_AXI_awsize,
    SLOT_8_AXI_awvalid,
    SLOT_8_AXI_bready,
    SLOT_8_AXI_bvalid,
    SLOT_8_AXI_rdata,
    SLOT_8_AXI_rlast,
    SLOT_8_AXI_rready,
    SLOT_8_AXI_rresp,
    SLOT_8_AXI_rvalid,
    SLOT_8_AXI_wdata,
    SLOT_8_AXI_wlast,
    SLOT_8_AXI_wready,
    SLOT_8_AXI_wvalid,
    SLOT_9_AXIS_tdata,
    SLOT_9_AXIS_tlast,
    SLOT_9_AXIS_tready,
    SLOT_9_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    resetn);
  input [31:0]SLOT_0_AXI_araddr;
  input [1:0]SLOT_0_AXI_arburst;
  input [3:0]SLOT_0_AXI_arcache;
  input [5:0]SLOT_0_AXI_arid;
  input [3:0]SLOT_0_AXI_arlen;
  input [1:0]SLOT_0_AXI_arlock;
  input [2:0]SLOT_0_AXI_arprot;
  input [3:0]SLOT_0_AXI_arqos;
  input SLOT_0_AXI_arready;
  input [2:0]SLOT_0_AXI_arsize;
  input SLOT_0_AXI_arvalid;
  input [31:0]SLOT_0_AXI_awaddr;
  input [1:0]SLOT_0_AXI_awburst;
  input [3:0]SLOT_0_AXI_awcache;
  input [5:0]SLOT_0_AXI_awid;
  input [3:0]SLOT_0_AXI_awlen;
  input [1:0]SLOT_0_AXI_awlock;
  input [2:0]SLOT_0_AXI_awprot;
  input [3:0]SLOT_0_AXI_awqos;
  input SLOT_0_AXI_awready;
  input [2:0]SLOT_0_AXI_awsize;
  input SLOT_0_AXI_awvalid;
  input [5:0]SLOT_0_AXI_bid;
  input SLOT_0_AXI_bready;
  input [1:0]SLOT_0_AXI_bresp;
  input SLOT_0_AXI_bvalid;
  input [31:0]SLOT_0_AXI_rdata;
  input [5:0]SLOT_0_AXI_rid;
  input SLOT_0_AXI_rlast;
  input SLOT_0_AXI_rready;
  input [1:0]SLOT_0_AXI_rresp;
  input SLOT_0_AXI_rvalid;
  input [31:0]SLOT_0_AXI_wdata;
  input [5:0]SLOT_0_AXI_wid;
  input SLOT_0_AXI_wlast;
  input SLOT_0_AXI_wready;
  input [3:0]SLOT_0_AXI_wstrb;
  input SLOT_0_AXI_wvalid;
  input [31:0]SLOT_10_AXIS_tdata;
  input SLOT_10_AXIS_tlast;
  input SLOT_10_AXIS_tready;
  input SLOT_10_AXIS_tvalid;
  input [31:0]SLOT_11_AXIS_tdata;
  input SLOT_11_AXIS_tlast;
  input SLOT_11_AXIS_tready;
  input SLOT_11_AXIS_tvalid;
  input [31:0]SLOT_12_AXIS_tdata;
  input SLOT_12_AXIS_tlast;
  input SLOT_12_AXIS_tready;
  input SLOT_12_AXIS_tvalid;
  input [31:0]SLOT_1_AXI_araddr;
  input [1:0]SLOT_1_AXI_arburst;
  input [3:0]SLOT_1_AXI_arcache;
  input [5:0]SLOT_1_AXI_arid;
  input [3:0]SLOT_1_AXI_arlen;
  input [1:0]SLOT_1_AXI_arlock;
  input [2:0]SLOT_1_AXI_arprot;
  input [3:0]SLOT_1_AXI_arqos;
  input SLOT_1_AXI_arready;
  input [2:0]SLOT_1_AXI_arsize;
  input SLOT_1_AXI_arvalid;
  input [31:0]SLOT_1_AXI_awaddr;
  input [1:0]SLOT_1_AXI_awburst;
  input [3:0]SLOT_1_AXI_awcache;
  input [5:0]SLOT_1_AXI_awid;
  input [3:0]SLOT_1_AXI_awlen;
  input [1:0]SLOT_1_AXI_awlock;
  input [2:0]SLOT_1_AXI_awprot;
  input [3:0]SLOT_1_AXI_awqos;
  input SLOT_1_AXI_awready;
  input [3:0]SLOT_1_AXI_awregion;
  input [2:0]SLOT_1_AXI_awsize;
  input SLOT_1_AXI_awvalid;
  input [5:0]SLOT_1_AXI_bid;
  input SLOT_1_AXI_bready;
  input [1:0]SLOT_1_AXI_bresp;
  input SLOT_1_AXI_bvalid;
  input [31:0]SLOT_1_AXI_rdata;
  input [5:0]SLOT_1_AXI_rid;
  input SLOT_1_AXI_rlast;
  input SLOT_1_AXI_rready;
  input [1:0]SLOT_1_AXI_rresp;
  input SLOT_1_AXI_rvalid;
  input [31:0]SLOT_1_AXI_wdata;
  input [5:0]SLOT_1_AXI_wid;
  input SLOT_1_AXI_wlast;
  input SLOT_1_AXI_wready;
  input [3:0]SLOT_1_AXI_wstrb;
  input SLOT_1_AXI_wvalid;
  input [31:0]SLOT_2_AXI_araddr;
  input [1:0]SLOT_2_AXI_arburst;
  input [3:0]SLOT_2_AXI_arcache;
  input [3:0]SLOT_2_AXI_arlen;
  input [1:0]SLOT_2_AXI_arlock;
  input [2:0]SLOT_2_AXI_arprot;
  input [3:0]SLOT_2_AXI_arqos;
  input SLOT_2_AXI_arready;
  input [2:0]SLOT_2_AXI_arsize;
  input SLOT_2_AXI_arvalid;
  input [31:0]SLOT_2_AXI_awaddr;
  input [1:0]SLOT_2_AXI_awburst;
  input [3:0]SLOT_2_AXI_awcache;
  input [3:0]SLOT_2_AXI_awlen;
  input [1:0]SLOT_2_AXI_awlock;
  input [2:0]SLOT_2_AXI_awprot;
  input SLOT_2_AXI_awready;
  input [2:0]SLOT_2_AXI_awsize;
  input SLOT_2_AXI_awvalid;
  input SLOT_2_AXI_bready;
  input SLOT_2_AXI_bvalid;
  input [63:0]SLOT_2_AXI_rdata;
  input SLOT_2_AXI_rlast;
  input SLOT_2_AXI_rready;
  input [1:0]SLOT_2_AXI_rresp;
  input SLOT_2_AXI_rvalid;
  input [63:0]SLOT_2_AXI_wdata;
  input SLOT_2_AXI_wlast;
  input SLOT_2_AXI_wready;
  input SLOT_2_AXI_wvalid;
  input [63:0]SLOT_3_AXIS_tdata;
  input [7:0]SLOT_3_AXIS_tkeep;
  input SLOT_3_AXIS_tlast;
  input SLOT_3_AXIS_tready;
  input [0:0]SLOT_3_AXIS_tuser;
  input SLOT_3_AXIS_tvalid;
  input [63:0]SLOT_4_AXIS_tdata;
  input [7:0]SLOT_4_AXIS_tkeep;
  input SLOT_4_AXIS_tlast;
  input SLOT_4_AXIS_tready;
  input [0:0]SLOT_4_AXIS_tuser;
  input SLOT_4_AXIS_tvalid;
  input [31:0]SLOT_5_AXI_araddr;
  input [1:0]SLOT_5_AXI_arburst;
  input [3:0]SLOT_5_AXI_arcache;
  input [11:0]SLOT_5_AXI_arid;
  input [3:0]SLOT_5_AXI_arlen;
  input [1:0]SLOT_5_AXI_arlock;
  input [2:0]SLOT_5_AXI_arprot;
  input [3:0]SLOT_5_AXI_arqos;
  input SLOT_5_AXI_arready;
  input [2:0]SLOT_5_AXI_arsize;
  input SLOT_5_AXI_arvalid;
  input [31:0]SLOT_5_AXI_awaddr;
  input [1:0]SLOT_5_AXI_awburst;
  input [3:0]SLOT_5_AXI_awcache;
  input [11:0]SLOT_5_AXI_awid;
  input [3:0]SLOT_5_AXI_awlen;
  input [1:0]SLOT_5_AXI_awlock;
  input [2:0]SLOT_5_AXI_awprot;
  input [3:0]SLOT_5_AXI_awqos;
  input SLOT_5_AXI_awready;
  input [2:0]SLOT_5_AXI_awsize;
  input SLOT_5_AXI_awvalid;
  input [11:0]SLOT_5_AXI_bid;
  input SLOT_5_AXI_bready;
  input [1:0]SLOT_5_AXI_bresp;
  input SLOT_5_AXI_bvalid;
  input [31:0]SLOT_5_AXI_rdata;
  input [11:0]SLOT_5_AXI_rid;
  input SLOT_5_AXI_rlast;
  input SLOT_5_AXI_rready;
  input [1:0]SLOT_5_AXI_rresp;
  input SLOT_5_AXI_rvalid;
  input [31:0]SLOT_5_AXI_wdata;
  input [11:0]SLOT_5_AXI_wid;
  input SLOT_5_AXI_wlast;
  input SLOT_5_AXI_wready;
  input [3:0]SLOT_5_AXI_wstrb;
  input SLOT_5_AXI_wvalid;
  input [31:0]SLOT_6_AXI_araddr;
  input [1:0]SLOT_6_AXI_arburst;
  input [3:0]SLOT_6_AXI_arcache;
  input [3:0]SLOT_6_AXI_arlen;
  input [1:0]SLOT_6_AXI_arlock;
  input [2:0]SLOT_6_AXI_arprot;
  input [3:0]SLOT_6_AXI_arqos;
  input SLOT_6_AXI_arready;
  input [2:0]SLOT_6_AXI_arsize;
  input SLOT_6_AXI_arvalid;
  input [31:0]SLOT_6_AXI_awaddr;
  input [1:0]SLOT_6_AXI_awburst;
  input [3:0]SLOT_6_AXI_awcache;
  input [3:0]SLOT_6_AXI_awlen;
  input [1:0]SLOT_6_AXI_awlock;
  input [2:0]SLOT_6_AXI_awprot;
  input SLOT_6_AXI_awready;
  input [2:0]SLOT_6_AXI_awsize;
  input SLOT_6_AXI_awvalid;
  input SLOT_6_AXI_bready;
  input SLOT_6_AXI_bvalid;
  input [63:0]SLOT_6_AXI_rdata;
  input SLOT_6_AXI_rlast;
  input SLOT_6_AXI_rready;
  input [1:0]SLOT_6_AXI_rresp;
  input SLOT_6_AXI_rvalid;
  input [63:0]SLOT_6_AXI_wdata;
  input SLOT_6_AXI_wlast;
  input SLOT_6_AXI_wready;
  input SLOT_6_AXI_wvalid;
  input [31:0]SLOT_7_AXI_araddr;
  input [1:0]SLOT_7_AXI_arburst;
  input [1:0]SLOT_7_AXI_arcache;
  input [3:0]SLOT_7_AXI_arlen;
  input [1:0]SLOT_7_AXI_arlock;
  input [2:0]SLOT_7_AXI_arprot;
  input [3:0]SLOT_7_AXI_arqos;
  input SLOT_7_AXI_arready;
  input [2:0]SLOT_7_AXI_arsize;
  input SLOT_7_AXI_arvalid;
  input [31:0]SLOT_7_AXI_awaddr;
  input [1:0]SLOT_7_AXI_awburst;
  input [3:0]SLOT_7_AXI_awcache;
  input [3:0]SLOT_7_AXI_awlen;
  input [1:0]SLOT_7_AXI_awlock;
  input [2:0]SLOT_7_AXI_awprot;
  input SLOT_7_AXI_awready;
  input [2:0]SLOT_7_AXI_awsize;
  input SLOT_7_AXI_awvalid;
  input SLOT_7_AXI_bready;
  input SLOT_7_AXI_bvalid;
  input [31:0]SLOT_7_AXI_rdata;
  input SLOT_7_AXI_rlast;
  input SLOT_7_AXI_rready;
  input [1:0]SLOT_7_AXI_rresp;
  input SLOT_7_AXI_rvalid;
  input [31:0]SLOT_7_AXI_wdata;
  input SLOT_7_AXI_wlast;
  input SLOT_7_AXI_wready;
  input SLOT_7_AXI_wvalid;
  input [31:0]SLOT_8_AXI_araddr;
  input [1:0]SLOT_8_AXI_arburst;
  input [3:0]SLOT_8_AXI_arcache;
  input [3:0]SLOT_8_AXI_arlen;
  input [1:0]SLOT_8_AXI_arlock;
  input [2:0]SLOT_8_AXI_arprot;
  input [3:0]SLOT_8_AXI_arqos;
  input SLOT_8_AXI_arready;
  input [2:0]SLOT_8_AXI_arsize;
  input SLOT_8_AXI_arvalid;
  input [31:0]SLOT_8_AXI_awaddr;
  input [1:0]SLOT_8_AXI_awburst;
  input [3:0]SLOT_8_AXI_awcache;
  input [3:0]SLOT_8_AXI_awlen;
  input [1:0]SLOT_8_AXI_awlock;
  input [2:0]SLOT_8_AXI_awprot;
  input SLOT_8_AXI_awready;
  input [2:0]SLOT_8_AXI_awsize;
  input SLOT_8_AXI_awvalid;
  input SLOT_8_AXI_bready;
  input SLOT_8_AXI_bvalid;
  input [31:0]SLOT_8_AXI_rdata;
  input SLOT_8_AXI_rlast;
  input SLOT_8_AXI_rready;
  input [1:0]SLOT_8_AXI_rresp;
  input SLOT_8_AXI_rvalid;
  input [31:0]SLOT_8_AXI_wdata;
  input SLOT_8_AXI_wlast;
  input SLOT_8_AXI_wready;
  input SLOT_8_AXI_wvalid;
  input [31:0]SLOT_9_AXIS_tdata;
  input SLOT_9_AXIS_tlast;
  input SLOT_9_AXIS_tready;
  input SLOT_9_AXIS_tvalid;
  input clk;
  input [3:0]probe0;
  input [0:0]probe1;
  input [0:0]probe2;
  input [0:0]probe3;
  input [0:0]probe4;
  input resetn;

  wire [31:0]SLOT_0_AXI_araddr;
  wire [1:0]SLOT_0_AXI_arburst;
  wire [3:0]SLOT_0_AXI_arcache;
  wire [5:0]SLOT_0_AXI_arid;
  wire [3:0]SLOT_0_AXI_arlen;
  wire [1:0]SLOT_0_AXI_arlock;
  wire [2:0]SLOT_0_AXI_arprot;
  wire [3:0]SLOT_0_AXI_arqos;
  wire SLOT_0_AXI_arready;
  wire [2:0]SLOT_0_AXI_arsize;
  wire SLOT_0_AXI_arvalid;
  wire [31:0]SLOT_0_AXI_awaddr;
  wire [1:0]SLOT_0_AXI_awburst;
  wire [3:0]SLOT_0_AXI_awcache;
  wire [5:0]SLOT_0_AXI_awid;
  wire [3:0]SLOT_0_AXI_awlen;
  wire [1:0]SLOT_0_AXI_awlock;
  wire [2:0]SLOT_0_AXI_awprot;
  wire [3:0]SLOT_0_AXI_awqos;
  wire SLOT_0_AXI_awready;
  wire [2:0]SLOT_0_AXI_awsize;
  wire SLOT_0_AXI_awvalid;
  wire [5:0]SLOT_0_AXI_bid;
  wire SLOT_0_AXI_bready;
  wire [1:0]SLOT_0_AXI_bresp;
  wire SLOT_0_AXI_bvalid;
  wire [31:0]SLOT_0_AXI_rdata;
  wire [5:0]SLOT_0_AXI_rid;
  wire SLOT_0_AXI_rlast;
  wire SLOT_0_AXI_rready;
  wire [1:0]SLOT_0_AXI_rresp;
  wire SLOT_0_AXI_rvalid;
  wire [31:0]SLOT_0_AXI_wdata;
  wire [5:0]SLOT_0_AXI_wid;
  wire SLOT_0_AXI_wlast;
  wire SLOT_0_AXI_wready;
  wire [3:0]SLOT_0_AXI_wstrb;
  wire SLOT_0_AXI_wvalid;
  wire [31:0]SLOT_10_AXIS_tdata;
  wire SLOT_10_AXIS_tlast;
  wire SLOT_10_AXIS_tready;
  wire SLOT_10_AXIS_tvalid;
  wire [31:0]SLOT_11_AXIS_tdata;
  wire SLOT_11_AXIS_tlast;
  wire SLOT_11_AXIS_tready;
  wire SLOT_11_AXIS_tvalid;
  wire [31:0]SLOT_12_AXIS_tdata;
  wire SLOT_12_AXIS_tlast;
  wire SLOT_12_AXIS_tready;
  wire SLOT_12_AXIS_tvalid;
  wire [31:0]SLOT_1_AXI_araddr;
  wire [1:0]SLOT_1_AXI_arburst;
  wire [3:0]SLOT_1_AXI_arcache;
  wire [5:0]SLOT_1_AXI_arid;
  wire [3:0]SLOT_1_AXI_arlen;
  wire [1:0]SLOT_1_AXI_arlock;
  wire [2:0]SLOT_1_AXI_arprot;
  wire [3:0]SLOT_1_AXI_arqos;
  wire SLOT_1_AXI_arready;
  wire [2:0]SLOT_1_AXI_arsize;
  wire SLOT_1_AXI_arvalid;
  wire [31:0]SLOT_1_AXI_awaddr;
  wire [1:0]SLOT_1_AXI_awburst;
  wire [3:0]SLOT_1_AXI_awcache;
  wire [5:0]SLOT_1_AXI_awid;
  wire [3:0]SLOT_1_AXI_awlen;
  wire [1:0]SLOT_1_AXI_awlock;
  wire [2:0]SLOT_1_AXI_awprot;
  wire [3:0]SLOT_1_AXI_awqos;
  wire SLOT_1_AXI_awready;
  wire [3:0]SLOT_1_AXI_awregion;
  wire [2:0]SLOT_1_AXI_awsize;
  wire SLOT_1_AXI_awvalid;
  wire [5:0]SLOT_1_AXI_bid;
  wire SLOT_1_AXI_bready;
  wire [1:0]SLOT_1_AXI_bresp;
  wire SLOT_1_AXI_bvalid;
  wire [31:0]SLOT_1_AXI_rdata;
  wire [5:0]SLOT_1_AXI_rid;
  wire SLOT_1_AXI_rlast;
  wire SLOT_1_AXI_rready;
  wire [1:0]SLOT_1_AXI_rresp;
  wire SLOT_1_AXI_rvalid;
  wire [31:0]SLOT_1_AXI_wdata;
  wire [5:0]SLOT_1_AXI_wid;
  wire SLOT_1_AXI_wlast;
  wire SLOT_1_AXI_wready;
  wire [3:0]SLOT_1_AXI_wstrb;
  wire SLOT_1_AXI_wvalid;
  wire [31:0]SLOT_2_AXI_araddr;
  wire [1:0]SLOT_2_AXI_arburst;
  wire [3:0]SLOT_2_AXI_arcache;
  wire [3:0]SLOT_2_AXI_arlen;
  wire [1:0]SLOT_2_AXI_arlock;
  wire [2:0]SLOT_2_AXI_arprot;
  wire [3:0]SLOT_2_AXI_arqos;
  wire SLOT_2_AXI_arready;
  wire [2:0]SLOT_2_AXI_arsize;
  wire SLOT_2_AXI_arvalid;
  wire [31:0]SLOT_2_AXI_awaddr;
  wire [1:0]SLOT_2_AXI_awburst;
  wire [3:0]SLOT_2_AXI_awcache;
  wire [3:0]SLOT_2_AXI_awlen;
  wire [1:0]SLOT_2_AXI_awlock;
  wire [2:0]SLOT_2_AXI_awprot;
  wire SLOT_2_AXI_awready;
  wire [2:0]SLOT_2_AXI_awsize;
  wire SLOT_2_AXI_awvalid;
  wire SLOT_2_AXI_bready;
  wire SLOT_2_AXI_bvalid;
  wire [63:0]SLOT_2_AXI_rdata;
  wire SLOT_2_AXI_rlast;
  wire SLOT_2_AXI_rready;
  wire [1:0]SLOT_2_AXI_rresp;
  wire SLOT_2_AXI_rvalid;
  wire [63:0]SLOT_2_AXI_wdata;
  wire SLOT_2_AXI_wlast;
  wire SLOT_2_AXI_wready;
  wire SLOT_2_AXI_wvalid;
  wire [63:0]SLOT_3_AXIS_tdata;
  wire [7:0]SLOT_3_AXIS_tkeep;
  wire SLOT_3_AXIS_tlast;
  wire SLOT_3_AXIS_tready;
  wire [0:0]SLOT_3_AXIS_tuser;
  wire SLOT_3_AXIS_tvalid;
  wire [63:0]SLOT_4_AXIS_tdata;
  wire [7:0]SLOT_4_AXIS_tkeep;
  wire SLOT_4_AXIS_tlast;
  wire SLOT_4_AXIS_tready;
  wire [0:0]SLOT_4_AXIS_tuser;
  wire SLOT_4_AXIS_tvalid;
  wire [31:0]SLOT_5_AXI_araddr;
  wire [1:0]SLOT_5_AXI_arburst;
  wire [3:0]SLOT_5_AXI_arcache;
  wire [11:0]SLOT_5_AXI_arid;
  wire [3:0]SLOT_5_AXI_arlen;
  wire [1:0]SLOT_5_AXI_arlock;
  wire [2:0]SLOT_5_AXI_arprot;
  wire [3:0]SLOT_5_AXI_arqos;
  wire SLOT_5_AXI_arready;
  wire [2:0]SLOT_5_AXI_arsize;
  wire SLOT_5_AXI_arvalid;
  wire [31:0]SLOT_5_AXI_awaddr;
  wire [1:0]SLOT_5_AXI_awburst;
  wire [3:0]SLOT_5_AXI_awcache;
  wire [11:0]SLOT_5_AXI_awid;
  wire [3:0]SLOT_5_AXI_awlen;
  wire [1:0]SLOT_5_AXI_awlock;
  wire [2:0]SLOT_5_AXI_awprot;
  wire [3:0]SLOT_5_AXI_awqos;
  wire SLOT_5_AXI_awready;
  wire [2:0]SLOT_5_AXI_awsize;
  wire SLOT_5_AXI_awvalid;
  wire [11:0]SLOT_5_AXI_bid;
  wire SLOT_5_AXI_bready;
  wire [1:0]SLOT_5_AXI_bresp;
  wire SLOT_5_AXI_bvalid;
  wire [31:0]SLOT_5_AXI_rdata;
  wire [11:0]SLOT_5_AXI_rid;
  wire SLOT_5_AXI_rlast;
  wire SLOT_5_AXI_rready;
  wire [1:0]SLOT_5_AXI_rresp;
  wire SLOT_5_AXI_rvalid;
  wire [31:0]SLOT_5_AXI_wdata;
  wire [11:0]SLOT_5_AXI_wid;
  wire SLOT_5_AXI_wlast;
  wire SLOT_5_AXI_wready;
  wire [3:0]SLOT_5_AXI_wstrb;
  wire SLOT_5_AXI_wvalid;
  wire [31:0]SLOT_6_AXI_araddr;
  wire [1:0]SLOT_6_AXI_arburst;
  wire [3:0]SLOT_6_AXI_arcache;
  wire [3:0]SLOT_6_AXI_arlen;
  wire [1:0]SLOT_6_AXI_arlock;
  wire [2:0]SLOT_6_AXI_arprot;
  wire [3:0]SLOT_6_AXI_arqos;
  wire SLOT_6_AXI_arready;
  wire [2:0]SLOT_6_AXI_arsize;
  wire SLOT_6_AXI_arvalid;
  wire [31:0]SLOT_6_AXI_awaddr;
  wire [1:0]SLOT_6_AXI_awburst;
  wire [3:0]SLOT_6_AXI_awcache;
  wire [3:0]SLOT_6_AXI_awlen;
  wire [1:0]SLOT_6_AXI_awlock;
  wire [2:0]SLOT_6_AXI_awprot;
  wire SLOT_6_AXI_awready;
  wire [2:0]SLOT_6_AXI_awsize;
  wire SLOT_6_AXI_awvalid;
  wire SLOT_6_AXI_bready;
  wire SLOT_6_AXI_bvalid;
  wire [63:0]SLOT_6_AXI_rdata;
  wire SLOT_6_AXI_rlast;
  wire SLOT_6_AXI_rready;
  wire [1:0]SLOT_6_AXI_rresp;
  wire SLOT_6_AXI_rvalid;
  wire [63:0]SLOT_6_AXI_wdata;
  wire SLOT_6_AXI_wlast;
  wire SLOT_6_AXI_wready;
  wire SLOT_6_AXI_wvalid;
  wire [31:0]SLOT_7_AXI_araddr;
  wire [1:0]SLOT_7_AXI_arburst;
  wire [1:0]SLOT_7_AXI_arcache;
  wire [3:0]SLOT_7_AXI_arlen;
  wire [1:0]SLOT_7_AXI_arlock;
  wire [2:0]SLOT_7_AXI_arprot;
  wire [3:0]SLOT_7_AXI_arqos;
  wire SLOT_7_AXI_arready;
  wire [2:0]SLOT_7_AXI_arsize;
  wire SLOT_7_AXI_arvalid;
  wire [31:0]SLOT_7_AXI_awaddr;
  wire [1:0]SLOT_7_AXI_awburst;
  wire [3:0]SLOT_7_AXI_awcache;
  wire [3:0]SLOT_7_AXI_awlen;
  wire [1:0]SLOT_7_AXI_awlock;
  wire [2:0]SLOT_7_AXI_awprot;
  wire SLOT_7_AXI_awready;
  wire [2:0]SLOT_7_AXI_awsize;
  wire SLOT_7_AXI_awvalid;
  wire SLOT_7_AXI_bready;
  wire SLOT_7_AXI_bvalid;
  wire [31:0]SLOT_7_AXI_rdata;
  wire SLOT_7_AXI_rlast;
  wire SLOT_7_AXI_rready;
  wire [1:0]SLOT_7_AXI_rresp;
  wire SLOT_7_AXI_rvalid;
  wire [31:0]SLOT_7_AXI_wdata;
  wire SLOT_7_AXI_wlast;
  wire SLOT_7_AXI_wready;
  wire SLOT_7_AXI_wvalid;
  wire [31:0]SLOT_8_AXI_araddr;
  wire [1:0]SLOT_8_AXI_arburst;
  wire [3:0]SLOT_8_AXI_arcache;
  wire [3:0]SLOT_8_AXI_arlen;
  wire [1:0]SLOT_8_AXI_arlock;
  wire [2:0]SLOT_8_AXI_arprot;
  wire [3:0]SLOT_8_AXI_arqos;
  wire SLOT_8_AXI_arready;
  wire [2:0]SLOT_8_AXI_arsize;
  wire SLOT_8_AXI_arvalid;
  wire [31:0]SLOT_8_AXI_awaddr;
  wire [1:0]SLOT_8_AXI_awburst;
  wire [3:0]SLOT_8_AXI_awcache;
  wire [3:0]SLOT_8_AXI_awlen;
  wire [1:0]SLOT_8_AXI_awlock;
  wire [2:0]SLOT_8_AXI_awprot;
  wire SLOT_8_AXI_awready;
  wire [2:0]SLOT_8_AXI_awsize;
  wire SLOT_8_AXI_awvalid;
  wire SLOT_8_AXI_bready;
  wire SLOT_8_AXI_bvalid;
  wire [31:0]SLOT_8_AXI_rdata;
  wire SLOT_8_AXI_rlast;
  wire SLOT_8_AXI_rready;
  wire [1:0]SLOT_8_AXI_rresp;
  wire SLOT_8_AXI_rvalid;
  wire [31:0]SLOT_8_AXI_wdata;
  wire SLOT_8_AXI_wlast;
  wire SLOT_8_AXI_wready;
  wire SLOT_8_AXI_wvalid;
  wire [31:0]SLOT_9_AXIS_tdata;
  wire SLOT_9_AXIS_tlast;
  wire SLOT_9_AXIS_tready;
  wire SLOT_9_AXIS_tvalid;
  wire clk;
  wire [3:0]probe0;
  wire [0:0]probe1;
  wire [0:0]probe2;
  wire [0:0]probe3;
  wire [0:0]probe4;
  wire resetn;

  bd_f60c bd_f60c_i
       (.SLOT_0_AXI_araddr(SLOT_0_AXI_araddr),
        .SLOT_0_AXI_arburst(SLOT_0_AXI_arburst),
        .SLOT_0_AXI_arcache(SLOT_0_AXI_arcache),
        .SLOT_0_AXI_arid(SLOT_0_AXI_arid),
        .SLOT_0_AXI_arlen(SLOT_0_AXI_arlen),
        .SLOT_0_AXI_arlock(SLOT_0_AXI_arlock),
        .SLOT_0_AXI_arprot(SLOT_0_AXI_arprot),
        .SLOT_0_AXI_arqos(SLOT_0_AXI_arqos),
        .SLOT_0_AXI_arready(SLOT_0_AXI_arready),
        .SLOT_0_AXI_arsize(SLOT_0_AXI_arsize),
        .SLOT_0_AXI_arvalid(SLOT_0_AXI_arvalid),
        .SLOT_0_AXI_awaddr(SLOT_0_AXI_awaddr),
        .SLOT_0_AXI_awburst(SLOT_0_AXI_awburst),
        .SLOT_0_AXI_awcache(SLOT_0_AXI_awcache),
        .SLOT_0_AXI_awid(SLOT_0_AXI_awid),
        .SLOT_0_AXI_awlen(SLOT_0_AXI_awlen),
        .SLOT_0_AXI_awlock(SLOT_0_AXI_awlock),
        .SLOT_0_AXI_awprot(SLOT_0_AXI_awprot),
        .SLOT_0_AXI_awqos(SLOT_0_AXI_awqos),
        .SLOT_0_AXI_awready(SLOT_0_AXI_awready),
        .SLOT_0_AXI_awsize(SLOT_0_AXI_awsize),
        .SLOT_0_AXI_awvalid(SLOT_0_AXI_awvalid),
        .SLOT_0_AXI_bid(SLOT_0_AXI_bid),
        .SLOT_0_AXI_bready(SLOT_0_AXI_bready),
        .SLOT_0_AXI_bresp(SLOT_0_AXI_bresp),
        .SLOT_0_AXI_bvalid(SLOT_0_AXI_bvalid),
        .SLOT_0_AXI_rdata(SLOT_0_AXI_rdata),
        .SLOT_0_AXI_rid(SLOT_0_AXI_rid),
        .SLOT_0_AXI_rlast(SLOT_0_AXI_rlast),
        .SLOT_0_AXI_rready(SLOT_0_AXI_rready),
        .SLOT_0_AXI_rresp(SLOT_0_AXI_rresp),
        .SLOT_0_AXI_rvalid(SLOT_0_AXI_rvalid),
        .SLOT_0_AXI_wdata(SLOT_0_AXI_wdata),
        .SLOT_0_AXI_wid(SLOT_0_AXI_wid),
        .SLOT_0_AXI_wlast(SLOT_0_AXI_wlast),
        .SLOT_0_AXI_wready(SLOT_0_AXI_wready),
        .SLOT_0_AXI_wstrb(SLOT_0_AXI_wstrb),
        .SLOT_0_AXI_wvalid(SLOT_0_AXI_wvalid),
        .SLOT_10_AXIS_tdata(SLOT_10_AXIS_tdata),
        .SLOT_10_AXIS_tlast(SLOT_10_AXIS_tlast),
        .SLOT_10_AXIS_tready(SLOT_10_AXIS_tready),
        .SLOT_10_AXIS_tvalid(SLOT_10_AXIS_tvalid),
        .SLOT_11_AXIS_tdata(SLOT_11_AXIS_tdata),
        .SLOT_11_AXIS_tlast(SLOT_11_AXIS_tlast),
        .SLOT_11_AXIS_tready(SLOT_11_AXIS_tready),
        .SLOT_11_AXIS_tvalid(SLOT_11_AXIS_tvalid),
        .SLOT_12_AXIS_tdata(SLOT_12_AXIS_tdata),
        .SLOT_12_AXIS_tlast(SLOT_12_AXIS_tlast),
        .SLOT_12_AXIS_tready(SLOT_12_AXIS_tready),
        .SLOT_12_AXIS_tvalid(SLOT_12_AXIS_tvalid),
        .SLOT_1_AXI_araddr(SLOT_1_AXI_araddr),
        .SLOT_1_AXI_arburst(SLOT_1_AXI_arburst),
        .SLOT_1_AXI_arcache(SLOT_1_AXI_arcache),
        .SLOT_1_AXI_arid(SLOT_1_AXI_arid),
        .SLOT_1_AXI_arlen(SLOT_1_AXI_arlen),
        .SLOT_1_AXI_arlock(SLOT_1_AXI_arlock),
        .SLOT_1_AXI_arprot(SLOT_1_AXI_arprot),
        .SLOT_1_AXI_arqos(SLOT_1_AXI_arqos),
        .SLOT_1_AXI_arready(SLOT_1_AXI_arready),
        .SLOT_1_AXI_arsize(SLOT_1_AXI_arsize),
        .SLOT_1_AXI_arvalid(SLOT_1_AXI_arvalid),
        .SLOT_1_AXI_awaddr(SLOT_1_AXI_awaddr),
        .SLOT_1_AXI_awburst(SLOT_1_AXI_awburst),
        .SLOT_1_AXI_awcache(SLOT_1_AXI_awcache),
        .SLOT_1_AXI_awid(SLOT_1_AXI_awid),
        .SLOT_1_AXI_awlen(SLOT_1_AXI_awlen),
        .SLOT_1_AXI_awlock(SLOT_1_AXI_awlock),
        .SLOT_1_AXI_awprot(SLOT_1_AXI_awprot),
        .SLOT_1_AXI_awqos(SLOT_1_AXI_awqos),
        .SLOT_1_AXI_awready(SLOT_1_AXI_awready),
        .SLOT_1_AXI_awregion(SLOT_1_AXI_awregion),
        .SLOT_1_AXI_awsize(SLOT_1_AXI_awsize),
        .SLOT_1_AXI_awvalid(SLOT_1_AXI_awvalid),
        .SLOT_1_AXI_bid(SLOT_1_AXI_bid),
        .SLOT_1_AXI_bready(SLOT_1_AXI_bready),
        .SLOT_1_AXI_bresp(SLOT_1_AXI_bresp),
        .SLOT_1_AXI_bvalid(SLOT_1_AXI_bvalid),
        .SLOT_1_AXI_rdata(SLOT_1_AXI_rdata),
        .SLOT_1_AXI_rid(SLOT_1_AXI_rid),
        .SLOT_1_AXI_rlast(SLOT_1_AXI_rlast),
        .SLOT_1_AXI_rready(SLOT_1_AXI_rready),
        .SLOT_1_AXI_rresp(SLOT_1_AXI_rresp),
        .SLOT_1_AXI_rvalid(SLOT_1_AXI_rvalid),
        .SLOT_1_AXI_wdata(SLOT_1_AXI_wdata),
        .SLOT_1_AXI_wid(SLOT_1_AXI_wid),
        .SLOT_1_AXI_wlast(SLOT_1_AXI_wlast),
        .SLOT_1_AXI_wready(SLOT_1_AXI_wready),
        .SLOT_1_AXI_wstrb(SLOT_1_AXI_wstrb),
        .SLOT_1_AXI_wvalid(SLOT_1_AXI_wvalid),
        .SLOT_2_AXI_araddr(SLOT_2_AXI_araddr),
        .SLOT_2_AXI_arburst(SLOT_2_AXI_arburst),
        .SLOT_2_AXI_arcache(SLOT_2_AXI_arcache),
        .SLOT_2_AXI_arlen(SLOT_2_AXI_arlen),
        .SLOT_2_AXI_arlock(SLOT_2_AXI_arlock),
        .SLOT_2_AXI_arprot(SLOT_2_AXI_arprot),
        .SLOT_2_AXI_arqos(SLOT_2_AXI_arqos),
        .SLOT_2_AXI_arready(SLOT_2_AXI_arready),
        .SLOT_2_AXI_arsize(SLOT_2_AXI_arsize),
        .SLOT_2_AXI_arvalid(SLOT_2_AXI_arvalid),
        .SLOT_2_AXI_awaddr(SLOT_2_AXI_awaddr),
        .SLOT_2_AXI_awburst(SLOT_2_AXI_awburst),
        .SLOT_2_AXI_awcache(SLOT_2_AXI_awcache),
        .SLOT_2_AXI_awlen(SLOT_2_AXI_awlen),
        .SLOT_2_AXI_awlock(SLOT_2_AXI_awlock),
        .SLOT_2_AXI_awprot(SLOT_2_AXI_awprot),
        .SLOT_2_AXI_awready(SLOT_2_AXI_awready),
        .SLOT_2_AXI_awsize(SLOT_2_AXI_awsize),
        .SLOT_2_AXI_awvalid(SLOT_2_AXI_awvalid),
        .SLOT_2_AXI_bready(SLOT_2_AXI_bready),
        .SLOT_2_AXI_bvalid(SLOT_2_AXI_bvalid),
        .SLOT_2_AXI_rdata(SLOT_2_AXI_rdata),
        .SLOT_2_AXI_rlast(SLOT_2_AXI_rlast),
        .SLOT_2_AXI_rready(SLOT_2_AXI_rready),
        .SLOT_2_AXI_rresp(SLOT_2_AXI_rresp),
        .SLOT_2_AXI_rvalid(SLOT_2_AXI_rvalid),
        .SLOT_2_AXI_wdata(SLOT_2_AXI_wdata),
        .SLOT_2_AXI_wlast(SLOT_2_AXI_wlast),
        .SLOT_2_AXI_wready(SLOT_2_AXI_wready),
        .SLOT_2_AXI_wvalid(SLOT_2_AXI_wvalid),
        .SLOT_3_AXIS_tdata(SLOT_3_AXIS_tdata),
        .SLOT_3_AXIS_tkeep(SLOT_3_AXIS_tkeep),
        .SLOT_3_AXIS_tlast(SLOT_3_AXIS_tlast),
        .SLOT_3_AXIS_tready(SLOT_3_AXIS_tready),
        .SLOT_3_AXIS_tuser(SLOT_3_AXIS_tuser),
        .SLOT_3_AXIS_tvalid(SLOT_3_AXIS_tvalid),
        .SLOT_4_AXIS_tdata(SLOT_4_AXIS_tdata),
        .SLOT_4_AXIS_tkeep(SLOT_4_AXIS_tkeep),
        .SLOT_4_AXIS_tlast(SLOT_4_AXIS_tlast),
        .SLOT_4_AXIS_tready(SLOT_4_AXIS_tready),
        .SLOT_4_AXIS_tuser(SLOT_4_AXIS_tuser),
        .SLOT_4_AXIS_tvalid(SLOT_4_AXIS_tvalid),
        .SLOT_5_AXI_araddr(SLOT_5_AXI_araddr),
        .SLOT_5_AXI_arburst(SLOT_5_AXI_arburst),
        .SLOT_5_AXI_arcache(SLOT_5_AXI_arcache),
        .SLOT_5_AXI_arid(SLOT_5_AXI_arid),
        .SLOT_5_AXI_arlen(SLOT_5_AXI_arlen),
        .SLOT_5_AXI_arlock(SLOT_5_AXI_arlock),
        .SLOT_5_AXI_arprot(SLOT_5_AXI_arprot),
        .SLOT_5_AXI_arqos(SLOT_5_AXI_arqos),
        .SLOT_5_AXI_arready(SLOT_5_AXI_arready),
        .SLOT_5_AXI_arsize(SLOT_5_AXI_arsize),
        .SLOT_5_AXI_arvalid(SLOT_5_AXI_arvalid),
        .SLOT_5_AXI_awaddr(SLOT_5_AXI_awaddr),
        .SLOT_5_AXI_awburst(SLOT_5_AXI_awburst),
        .SLOT_5_AXI_awcache(SLOT_5_AXI_awcache),
        .SLOT_5_AXI_awid(SLOT_5_AXI_awid),
        .SLOT_5_AXI_awlen(SLOT_5_AXI_awlen),
        .SLOT_5_AXI_awlock(SLOT_5_AXI_awlock),
        .SLOT_5_AXI_awprot(SLOT_5_AXI_awprot),
        .SLOT_5_AXI_awqos(SLOT_5_AXI_awqos),
        .SLOT_5_AXI_awready(SLOT_5_AXI_awready),
        .SLOT_5_AXI_awsize(SLOT_5_AXI_awsize),
        .SLOT_5_AXI_awvalid(SLOT_5_AXI_awvalid),
        .SLOT_5_AXI_bid(SLOT_5_AXI_bid),
        .SLOT_5_AXI_bready(SLOT_5_AXI_bready),
        .SLOT_5_AXI_bresp(SLOT_5_AXI_bresp),
        .SLOT_5_AXI_bvalid(SLOT_5_AXI_bvalid),
        .SLOT_5_AXI_rdata(SLOT_5_AXI_rdata),
        .SLOT_5_AXI_rid(SLOT_5_AXI_rid),
        .SLOT_5_AXI_rlast(SLOT_5_AXI_rlast),
        .SLOT_5_AXI_rready(SLOT_5_AXI_rready),
        .SLOT_5_AXI_rresp(SLOT_5_AXI_rresp),
        .SLOT_5_AXI_rvalid(SLOT_5_AXI_rvalid),
        .SLOT_5_AXI_wdata(SLOT_5_AXI_wdata),
        .SLOT_5_AXI_wid(SLOT_5_AXI_wid),
        .SLOT_5_AXI_wlast(SLOT_5_AXI_wlast),
        .SLOT_5_AXI_wready(SLOT_5_AXI_wready),
        .SLOT_5_AXI_wstrb(SLOT_5_AXI_wstrb),
        .SLOT_5_AXI_wvalid(SLOT_5_AXI_wvalid),
        .SLOT_6_AXI_araddr(SLOT_6_AXI_araddr),
        .SLOT_6_AXI_arburst(SLOT_6_AXI_arburst),
        .SLOT_6_AXI_arcache(SLOT_6_AXI_arcache),
        .SLOT_6_AXI_arlen(SLOT_6_AXI_arlen),
        .SLOT_6_AXI_arlock(SLOT_6_AXI_arlock),
        .SLOT_6_AXI_arprot(SLOT_6_AXI_arprot),
        .SLOT_6_AXI_arqos(SLOT_6_AXI_arqos),
        .SLOT_6_AXI_arready(SLOT_6_AXI_arready),
        .SLOT_6_AXI_arsize(SLOT_6_AXI_arsize),
        .SLOT_6_AXI_arvalid(SLOT_6_AXI_arvalid),
        .SLOT_6_AXI_awaddr(SLOT_6_AXI_awaddr),
        .SLOT_6_AXI_awburst(SLOT_6_AXI_awburst),
        .SLOT_6_AXI_awcache(SLOT_6_AXI_awcache),
        .SLOT_6_AXI_awlen(SLOT_6_AXI_awlen),
        .SLOT_6_AXI_awlock(SLOT_6_AXI_awlock),
        .SLOT_6_AXI_awprot(SLOT_6_AXI_awprot),
        .SLOT_6_AXI_awready(SLOT_6_AXI_awready),
        .SLOT_6_AXI_awsize(SLOT_6_AXI_awsize),
        .SLOT_6_AXI_awvalid(SLOT_6_AXI_awvalid),
        .SLOT_6_AXI_bready(SLOT_6_AXI_bready),
        .SLOT_6_AXI_bvalid(SLOT_6_AXI_bvalid),
        .SLOT_6_AXI_rdata(SLOT_6_AXI_rdata),
        .SLOT_6_AXI_rlast(SLOT_6_AXI_rlast),
        .SLOT_6_AXI_rready(SLOT_6_AXI_rready),
        .SLOT_6_AXI_rresp(SLOT_6_AXI_rresp),
        .SLOT_6_AXI_rvalid(SLOT_6_AXI_rvalid),
        .SLOT_6_AXI_wdata(SLOT_6_AXI_wdata),
        .SLOT_6_AXI_wlast(SLOT_6_AXI_wlast),
        .SLOT_6_AXI_wready(SLOT_6_AXI_wready),
        .SLOT_6_AXI_wvalid(SLOT_6_AXI_wvalid),
        .SLOT_7_AXI_araddr(SLOT_7_AXI_araddr),
        .SLOT_7_AXI_arburst(SLOT_7_AXI_arburst),
        .SLOT_7_AXI_arcache(SLOT_7_AXI_arcache),
        .SLOT_7_AXI_arlen(SLOT_7_AXI_arlen),
        .SLOT_7_AXI_arlock(SLOT_7_AXI_arlock),
        .SLOT_7_AXI_arprot(SLOT_7_AXI_arprot),
        .SLOT_7_AXI_arqos(SLOT_7_AXI_arqos),
        .SLOT_7_AXI_arready(SLOT_7_AXI_arready),
        .SLOT_7_AXI_arsize(SLOT_7_AXI_arsize),
        .SLOT_7_AXI_arvalid(SLOT_7_AXI_arvalid),
        .SLOT_7_AXI_awaddr(SLOT_7_AXI_awaddr),
        .SLOT_7_AXI_awburst(SLOT_7_AXI_awburst),
        .SLOT_7_AXI_awcache(SLOT_7_AXI_awcache),
        .SLOT_7_AXI_awlen(SLOT_7_AXI_awlen),
        .SLOT_7_AXI_awlock(SLOT_7_AXI_awlock),
        .SLOT_7_AXI_awprot(SLOT_7_AXI_awprot),
        .SLOT_7_AXI_awready(SLOT_7_AXI_awready),
        .SLOT_7_AXI_awsize(SLOT_7_AXI_awsize),
        .SLOT_7_AXI_awvalid(SLOT_7_AXI_awvalid),
        .SLOT_7_AXI_bready(SLOT_7_AXI_bready),
        .SLOT_7_AXI_bvalid(SLOT_7_AXI_bvalid),
        .SLOT_7_AXI_rdata(SLOT_7_AXI_rdata),
        .SLOT_7_AXI_rlast(SLOT_7_AXI_rlast),
        .SLOT_7_AXI_rready(SLOT_7_AXI_rready),
        .SLOT_7_AXI_rresp(SLOT_7_AXI_rresp),
        .SLOT_7_AXI_rvalid(SLOT_7_AXI_rvalid),
        .SLOT_7_AXI_wdata(SLOT_7_AXI_wdata),
        .SLOT_7_AXI_wlast(SLOT_7_AXI_wlast),
        .SLOT_7_AXI_wready(SLOT_7_AXI_wready),
        .SLOT_7_AXI_wvalid(SLOT_7_AXI_wvalid),
        .SLOT_8_AXI_araddr(SLOT_8_AXI_araddr),
        .SLOT_8_AXI_arburst(SLOT_8_AXI_arburst),
        .SLOT_8_AXI_arcache(SLOT_8_AXI_arcache),
        .SLOT_8_AXI_arlen(SLOT_8_AXI_arlen),
        .SLOT_8_AXI_arlock(SLOT_8_AXI_arlock),
        .SLOT_8_AXI_arprot(SLOT_8_AXI_arprot),
        .SLOT_8_AXI_arqos(SLOT_8_AXI_arqos),
        .SLOT_8_AXI_arready(SLOT_8_AXI_arready),
        .SLOT_8_AXI_arsize(SLOT_8_AXI_arsize),
        .SLOT_8_AXI_arvalid(SLOT_8_AXI_arvalid),
        .SLOT_8_AXI_awaddr(SLOT_8_AXI_awaddr),
        .SLOT_8_AXI_awburst(SLOT_8_AXI_awburst),
        .SLOT_8_AXI_awcache(SLOT_8_AXI_awcache),
        .SLOT_8_AXI_awlen(SLOT_8_AXI_awlen),
        .SLOT_8_AXI_awlock(SLOT_8_AXI_awlock),
        .SLOT_8_AXI_awprot(SLOT_8_AXI_awprot),
        .SLOT_8_AXI_awready(SLOT_8_AXI_awready),
        .SLOT_8_AXI_awsize(SLOT_8_AXI_awsize),
        .SLOT_8_AXI_awvalid(SLOT_8_AXI_awvalid),
        .SLOT_8_AXI_bready(SLOT_8_AXI_bready),
        .SLOT_8_AXI_bvalid(SLOT_8_AXI_bvalid),
        .SLOT_8_AXI_rdata(SLOT_8_AXI_rdata),
        .SLOT_8_AXI_rlast(SLOT_8_AXI_rlast),
        .SLOT_8_AXI_rready(SLOT_8_AXI_rready),
        .SLOT_8_AXI_rresp(SLOT_8_AXI_rresp),
        .SLOT_8_AXI_rvalid(SLOT_8_AXI_rvalid),
        .SLOT_8_AXI_wdata(SLOT_8_AXI_wdata),
        .SLOT_8_AXI_wlast(SLOT_8_AXI_wlast),
        .SLOT_8_AXI_wready(SLOT_8_AXI_wready),
        .SLOT_8_AXI_wvalid(SLOT_8_AXI_wvalid),
        .SLOT_9_AXIS_tdata(SLOT_9_AXIS_tdata),
        .SLOT_9_AXIS_tlast(SLOT_9_AXIS_tlast),
        .SLOT_9_AXIS_tready(SLOT_9_AXIS_tready),
        .SLOT_9_AXIS_tvalid(SLOT_9_AXIS_tvalid),
        .clk(clk),
        .probe0(probe0),
        .probe1(probe1),
        .probe2(probe2),
        .probe3(probe3),
        .probe4(probe4),
        .resetn(resetn));
endmodule

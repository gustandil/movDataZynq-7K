//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c.bd
//Design : bd_f60c
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_f60c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f60c,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=22,numReposBlks=22,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "design_1_system_ila_0_0.hwdef" *) 
module bd_f60c
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
    SLOT_1_AXI_araddr,
    SLOT_1_AXI_arburst,
    SLOT_1_AXI_arcache,
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
    SLOT_1_AXI_awlen,
    SLOT_1_AXI_awlock,
    SLOT_1_AXI_awprot,
    SLOT_1_AXI_awqos,
    SLOT_1_AXI_awready,
    SLOT_1_AXI_awsize,
    SLOT_1_AXI_awvalid,
    SLOT_1_AXI_bready,
    SLOT_1_AXI_bvalid,
    SLOT_1_AXI_rdata,
    SLOT_1_AXI_rlast,
    SLOT_1_AXI_rready,
    SLOT_1_AXI_rresp,
    SLOT_1_AXI_rvalid,
    SLOT_1_AXI_wdata,
    SLOT_1_AXI_wlast,
    SLOT_1_AXI_wready,
    SLOT_1_AXI_wvalid,
    SLOT_2_AXI_araddr,
    SLOT_2_AXI_arcache,
    SLOT_2_AXI_arid,
    SLOT_2_AXI_arlen,
    SLOT_2_AXI_arlock,
    SLOT_2_AXI_arprot,
    SLOT_2_AXI_arqos,
    SLOT_2_AXI_arready,
    SLOT_2_AXI_arregion,
    SLOT_2_AXI_arsize,
    SLOT_2_AXI_arvalid,
    SLOT_2_AXI_awaddr,
    SLOT_2_AXI_awcache,
    SLOT_2_AXI_awid,
    SLOT_2_AXI_awlen,
    SLOT_2_AXI_awlock,
    SLOT_2_AXI_awprot,
    SLOT_2_AXI_awqos,
    SLOT_2_AXI_awready,
    SLOT_2_AXI_awregion,
    SLOT_2_AXI_awsize,
    SLOT_2_AXI_awvalid,
    SLOT_2_AXI_bid,
    SLOT_2_AXI_bready,
    SLOT_2_AXI_bresp,
    SLOT_2_AXI_bvalid,
    SLOT_2_AXI_rdata,
    SLOT_2_AXI_rid,
    SLOT_2_AXI_rlast,
    SLOT_2_AXI_rready,
    SLOT_2_AXI_rresp,
    SLOT_2_AXI_rvalid,
    SLOT_2_AXI_wdata,
    SLOT_2_AXI_wlast,
    SLOT_2_AXI_wready,
    SLOT_2_AXI_wstrb,
    SLOT_2_AXI_wvalid,
    SLOT_3_AXI_araddr,
    SLOT_3_AXI_arburst,
    SLOT_3_AXI_arcache,
    SLOT_3_AXI_arlen,
    SLOT_3_AXI_arlock,
    SLOT_3_AXI_arprot,
    SLOT_3_AXI_arready,
    SLOT_3_AXI_arsize,
    SLOT_3_AXI_arvalid,
    SLOT_3_AXI_awaddr,
    SLOT_3_AXI_awburst,
    SLOT_3_AXI_awcache,
    SLOT_3_AXI_awlen,
    SLOT_3_AXI_awlock,
    SLOT_3_AXI_awprot,
    SLOT_3_AXI_awqos,
    SLOT_3_AXI_awready,
    SLOT_3_AXI_awsize,
    SLOT_3_AXI_awvalid,
    SLOT_3_AXI_bready,
    SLOT_3_AXI_bresp,
    SLOT_3_AXI_bvalid,
    SLOT_3_AXI_rdata,
    SLOT_3_AXI_rlast,
    SLOT_3_AXI_rready,
    SLOT_3_AXI_rvalid,
    SLOT_3_AXI_wdata,
    SLOT_3_AXI_wlast,
    SLOT_3_AXI_wready,
    SLOT_3_AXI_wstrb,
    SLOT_3_AXI_wvalid,
    SLOT_4_AXIS_tdata,
    SLOT_4_AXIS_tkeep,
    SLOT_4_AXIS_tlast,
    SLOT_4_AXIS_tready,
    SLOT_4_AXIS_tuser,
    SLOT_4_AXIS_tvalid,
    clk,
    probe0,
    probe1,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    resetn);
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_0_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 166666672, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 12, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 8, NUM_READ_THREADS 4, NUM_WRITE_OUTSTANDING 8, NUM_WRITE_THREADS 4, PHASE 0.0, PROTOCOL AXI3, READ_WRITE_MODE READ_WRITE, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_0_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARBURST" *) input [1:0]SLOT_0_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARCACHE" *) input [3:0]SLOT_0_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARID" *) input [11:0]SLOT_0_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLEN" *) input [3:0]SLOT_0_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARLOCK" *) input [1:0]SLOT_0_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARPROT" *) input [2:0]SLOT_0_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARQOS" *) input [3:0]SLOT_0_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARREADY" *) input SLOT_0_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARSIZE" *) input [2:0]SLOT_0_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI ARVALID" *) input SLOT_0_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWADDR" *) input [31:0]SLOT_0_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWBURST" *) input [1:0]SLOT_0_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWCACHE" *) input [3:0]SLOT_0_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWID" *) input [11:0]SLOT_0_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLEN" *) input [3:0]SLOT_0_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWLOCK" *) input [1:0]SLOT_0_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWPROT" *) input [2:0]SLOT_0_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWQOS" *) input [3:0]SLOT_0_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWREADY" *) input SLOT_0_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWSIZE" *) input [2:0]SLOT_0_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI AWVALID" *) input SLOT_0_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BID" *) input [11:0]SLOT_0_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BREADY" *) input SLOT_0_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BRESP" *) input [1:0]SLOT_0_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI BVALID" *) input SLOT_0_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RDATA" *) input [31:0]SLOT_0_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RID" *) input [11:0]SLOT_0_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RLAST" *) input SLOT_0_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RREADY" *) input SLOT_0_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RRESP" *) input [1:0]SLOT_0_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI RVALID" *) input SLOT_0_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WDATA" *) input [31:0]SLOT_0_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WID" *) input [11:0]SLOT_0_AXI_wid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WLAST" *) input SLOT_0_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WREADY" *) input SLOT_0_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WSTRB" *) input [3:0]SLOT_0_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_0_AXI WVALID" *) input SLOT_0_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 166666672, HAS_BRESP 0, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 8, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI3, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_1_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARBURST" *) input [1:0]SLOT_1_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARCACHE" *) input [3:0]SLOT_1_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLEN" *) input [3:0]SLOT_1_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARLOCK" *) input [1:0]SLOT_1_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARPROT" *) input [2:0]SLOT_1_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARQOS" *) input [3:0]SLOT_1_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARREADY" *) input SLOT_1_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARSIZE" *) input [2:0]SLOT_1_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI ARVALID" *) input SLOT_1_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWADDR" *) input [31:0]SLOT_1_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWBURST" *) input [1:0]SLOT_1_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWCACHE" *) input [3:0]SLOT_1_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLEN" *) input [3:0]SLOT_1_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWLOCK" *) input [1:0]SLOT_1_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWPROT" *) input [2:0]SLOT_1_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWQOS" *) input [3:0]SLOT_1_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWREADY" *) input SLOT_1_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWSIZE" *) input [2:0]SLOT_1_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI AWVALID" *) input SLOT_1_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BREADY" *) input SLOT_1_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI BVALID" *) input SLOT_1_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RDATA" *) input [63:0]SLOT_1_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RLAST" *) input SLOT_1_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RREADY" *) input SLOT_1_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RRESP" *) input [1:0]SLOT_1_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI RVALID" *) input SLOT_1_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WDATA" *) input [63:0]SLOT_1_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WLAST" *) input SLOT_1_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WREADY" *) input SLOT_1_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_1_AXI WVALID" *) input SLOT_1_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 64, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 32, FREQ_HZ 166666672, HAS_BRESP 1, HAS_BURST 0, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 1, HAS_RRESP 1, HAS_WSTRB 1, ID_WIDTH 1, INSERT_VIP 0, MAX_BURST_LENGTH 256, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI4, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [63:0]SLOT_2_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE" *) input [3:0]SLOT_2_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARID" *) input [0:0]SLOT_2_AXI_arid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN" *) input [7:0]SLOT_2_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK" *) input [0:0]SLOT_2_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *) input [2:0]SLOT_2_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS" *) input [3:0]SLOT_2_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *) input SLOT_2_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREGION" *) input [3:0]SLOT_2_AXI_arregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE" *) input [2:0]SLOT_2_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *) input SLOT_2_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *) input [63:0]SLOT_2_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE" *) input [3:0]SLOT_2_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWID" *) input [0:0]SLOT_2_AXI_awid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN" *) input [7:0]SLOT_2_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK" *) input [0:0]SLOT_2_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *) input [2:0]SLOT_2_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWQOS" *) input [3:0]SLOT_2_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *) input SLOT_2_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREGION" *) input [3:0]SLOT_2_AXI_awregion;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE" *) input [2:0]SLOT_2_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *) input SLOT_2_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BID" *) input [0:0]SLOT_2_AXI_bid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *) input SLOT_2_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BRESP" *) input [1:0]SLOT_2_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *) input SLOT_2_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *) input [31:0]SLOT_2_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RID" *) input [0:0]SLOT_2_AXI_rid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST" *) input SLOT_2_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *) input SLOT_2_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP" *) input [1:0]SLOT_2_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *) input SLOT_2_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *) input [31:0]SLOT_2_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST" *) input SLOT_2_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *) input SLOT_2_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WSTRB" *) input [3:0]SLOT_2_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *) input SLOT_2_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_3_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 166666672, HAS_BRESP 1, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 0, HAS_WSTRB 1, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 16, NUM_READ_OUTSTANDING 16, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 16, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI3, READ_WRITE_MODE WRITE_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_3_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARBURST" *) input [1:0]SLOT_3_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARCACHE" *) input [3:0]SLOT_3_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLEN" *) input [3:0]SLOT_3_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARLOCK" *) input [1:0]SLOT_3_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARPROT" *) input [2:0]SLOT_3_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARREADY" *) input SLOT_3_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARSIZE" *) input [2:0]SLOT_3_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI ARVALID" *) input SLOT_3_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWADDR" *) input [31:0]SLOT_3_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWBURST" *) input [1:0]SLOT_3_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWCACHE" *) input [3:0]SLOT_3_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLEN" *) input [3:0]SLOT_3_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWLOCK" *) input [1:0]SLOT_3_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWPROT" *) input [2:0]SLOT_3_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWQOS" *) input [3:0]SLOT_3_AXI_awqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWREADY" *) input SLOT_3_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWSIZE" *) input [2:0]SLOT_3_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI AWVALID" *) input SLOT_3_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BREADY" *) input SLOT_3_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BRESP" *) input [1:0]SLOT_3_AXI_bresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI BVALID" *) input SLOT_3_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RDATA" *) input [63:0]SLOT_3_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RLAST" *) input SLOT_3_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RREADY" *) input SLOT_3_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI RVALID" *) input SLOT_3_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WDATA" *) input [63:0]SLOT_3_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WLAST" *) input SLOT_3_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WREADY" *) input SLOT_3_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WSTRB" *) input [7:0]SLOT_3_AXI_wstrb;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_3_AXI WVALID" *) input SLOT_3_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_4_AXIS, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 166666672, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [63:0]SLOT_4_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TKEEP" *) input [7:0]SLOT_4_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TLAST" *) input SLOT_4_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TREADY" *) input SLOT_4_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TUSER" *) input [0:0]SLOT_4_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_4_AXIS TVALID" *) input SLOT_4_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_1_AXI:SLOT_2_AXI:SLOT_3_AXI:SLOT_4_AXIS, ASSOCIATED_RESET resetn, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 166666672, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [7:0]probe0;
  input [7:0]probe1;
  input [2:0]probe2;
  input [5:0]probe3;
  input [7:0]probe4;
  input [7:0]probe5;
  input [2:0]probe6;
  input [5:0]probe7;
  input [0:0]probe8;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [31:0]Conn1_ARADDR;
  wire [1:0]Conn1_ARBURST;
  wire [3:0]Conn1_ARCACHE;
  wire [3:0]Conn1_ARLEN;
  wire [1:0]Conn1_ARLOCK;
  wire [2:0]Conn1_ARPROT;
  wire [3:0]Conn1_ARQOS;
  wire Conn1_ARREADY;
  wire [2:0]Conn1_ARSIZE;
  wire Conn1_ARVALID;
  wire [31:0]Conn1_AWADDR;
  wire [1:0]Conn1_AWBURST;
  wire [3:0]Conn1_AWCACHE;
  wire [3:0]Conn1_AWLEN;
  wire [1:0]Conn1_AWLOCK;
  wire [2:0]Conn1_AWPROT;
  wire [3:0]Conn1_AWQOS;
  wire Conn1_AWREADY;
  wire [2:0]Conn1_AWSIZE;
  wire Conn1_AWVALID;
  wire Conn1_BREADY;
  wire Conn1_BVALID;
  wire [63:0]Conn1_RDATA;
  wire Conn1_RLAST;
  wire Conn1_RREADY;
  wire [1:0]Conn1_RRESP;
  wire Conn1_RVALID;
  wire [63:0]Conn1_WDATA;
  wire Conn1_WLAST;
  wire Conn1_WREADY;
  wire Conn1_WVALID;
  wire [63:0]Conn2_ARADDR;
  wire [3:0]Conn2_ARCACHE;
  wire [0:0]Conn2_ARID;
  wire [7:0]Conn2_ARLEN;
  wire [0:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [3:0]Conn2_ARREGION;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [63:0]Conn2_AWADDR;
  wire [3:0]Conn2_AWCACHE;
  wire [0:0]Conn2_AWID;
  wire [7:0]Conn2_AWLEN;
  wire [0:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire [3:0]Conn2_AWQOS;
  wire Conn2_AWREADY;
  wire [3:0]Conn2_AWREGION;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire [0:0]Conn2_BID;
  wire Conn2_BREADY;
  wire [1:0]Conn2_BRESP;
  wire Conn2_BVALID;
  wire [31:0]Conn2_RDATA;
  wire [0:0]Conn2_RID;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [31:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire [3:0]Conn2_WSTRB;
  wire Conn2_WVALID;
  wire [31:0]Conn3_ARADDR;
  wire [1:0]Conn3_ARBURST;
  wire [3:0]Conn3_ARCACHE;
  wire [3:0]Conn3_ARLEN;
  wire [1:0]Conn3_ARLOCK;
  wire [2:0]Conn3_ARPROT;
  wire Conn3_ARREADY;
  wire [2:0]Conn3_ARSIZE;
  wire Conn3_ARVALID;
  wire [31:0]Conn3_AWADDR;
  wire [1:0]Conn3_AWBURST;
  wire [3:0]Conn3_AWCACHE;
  wire [3:0]Conn3_AWLEN;
  wire [1:0]Conn3_AWLOCK;
  wire [2:0]Conn3_AWPROT;
  wire [3:0]Conn3_AWQOS;
  wire Conn3_AWREADY;
  wire [2:0]Conn3_AWSIZE;
  wire Conn3_AWVALID;
  wire Conn3_BREADY;
  wire [1:0]Conn3_BRESP;
  wire Conn3_BVALID;
  wire [63:0]Conn3_RDATA;
  wire Conn3_RLAST;
  wire Conn3_RREADY;
  wire Conn3_RVALID;
  wire [63:0]Conn3_WDATA;
  wire Conn3_WLAST;
  wire Conn3_WREADY;
  wire [7:0]Conn3_WSTRB;
  wire Conn3_WVALID;
  wire [63:0]Conn4_TDATA;
  wire [7:0]Conn4_TKEEP;
  wire Conn4_TLAST;
  wire Conn4_TREADY;
  wire [0:0]Conn4_TUSER;
  wire Conn4_TVALID;
  wire [31:0]Conn_ARADDR;
  wire [1:0]Conn_ARBURST;
  wire [3:0]Conn_ARCACHE;
  wire [11:0]Conn_ARID;
  wire [3:0]Conn_ARLEN;
  wire [1:0]Conn_ARLOCK;
  wire [2:0]Conn_ARPROT;
  wire [3:0]Conn_ARQOS;
  wire Conn_ARREADY;
  wire [2:0]Conn_ARSIZE;
  wire Conn_ARVALID;
  wire [31:0]Conn_AWADDR;
  wire [1:0]Conn_AWBURST;
  wire [3:0]Conn_AWCACHE;
  wire [11:0]Conn_AWID;
  wire [3:0]Conn_AWLEN;
  wire [1:0]Conn_AWLOCK;
  wire [2:0]Conn_AWPROT;
  wire [3:0]Conn_AWQOS;
  wire Conn_AWREADY;
  wire [2:0]Conn_AWSIZE;
  wire Conn_AWVALID;
  wire [11:0]Conn_BID;
  wire Conn_BREADY;
  wire [1:0]Conn_BRESP;
  wire Conn_BVALID;
  wire [31:0]Conn_RDATA;
  wire [11:0]Conn_RID;
  wire Conn_RLAST;
  wire Conn_RREADY;
  wire [1:0]Conn_RRESP;
  wire Conn_RVALID;
  wire [31:0]Conn_WDATA;
  wire [11:0]Conn_WID;
  wire Conn_WLAST;
  wire Conn_WREADY;
  wire [3:0]Conn_WSTRB;
  wire Conn_WVALID;
  wire clk_1;
  wire [1:0]net_slot_0_axi_ar_cnt;
  wire [1:0]net_slot_0_axi_ar_ctrl;
  wire [31:0]net_slot_0_axi_araddr;
  wire [1:0]net_slot_0_axi_arburst;
  wire [3:0]net_slot_0_axi_arcache;
  wire [11:0]net_slot_0_axi_arid;
  wire [3:0]net_slot_0_axi_arlen;
  wire [1:0]net_slot_0_axi_arlock;
  wire [2:0]net_slot_0_axi_arprot;
  wire [3:0]net_slot_0_axi_arqos;
  wire net_slot_0_axi_arready;
  wire [2:0]net_slot_0_axi_arsize;
  wire net_slot_0_axi_arvalid;
  wire [1:0]net_slot_0_axi_aw_cnt;
  wire [1:0]net_slot_0_axi_aw_ctrl;
  wire [31:0]net_slot_0_axi_awaddr;
  wire [1:0]net_slot_0_axi_awburst;
  wire [3:0]net_slot_0_axi_awcache;
  wire [11:0]net_slot_0_axi_awid;
  wire [3:0]net_slot_0_axi_awlen;
  wire [1:0]net_slot_0_axi_awlock;
  wire [2:0]net_slot_0_axi_awprot;
  wire [3:0]net_slot_0_axi_awqos;
  wire net_slot_0_axi_awready;
  wire [2:0]net_slot_0_axi_awsize;
  wire net_slot_0_axi_awvalid;
  wire [1:0]net_slot_0_axi_b_cnt;
  wire [1:0]net_slot_0_axi_b_ctrl;
  wire [11:0]net_slot_0_axi_bid;
  wire net_slot_0_axi_bready;
  wire [1:0]net_slot_0_axi_bresp;
  wire net_slot_0_axi_bvalid;
  wire [1:0]net_slot_0_axi_r_cnt;
  wire [2:0]net_slot_0_axi_r_ctrl;
  wire [31:0]net_slot_0_axi_rdata;
  wire [11:0]net_slot_0_axi_rid;
  wire net_slot_0_axi_rlast;
  wire net_slot_0_axi_rready;
  wire [1:0]net_slot_0_axi_rresp;
  wire net_slot_0_axi_rvalid;
  wire [2:0]net_slot_0_axi_w_ctrl;
  wire [31:0]net_slot_0_axi_wdata;
  wire [11:0]net_slot_0_axi_wid;
  wire net_slot_0_axi_wlast;
  wire net_slot_0_axi_wready;
  wire [3:0]net_slot_0_axi_wstrb;
  wire net_slot_0_axi_wvalid;
  wire [5:0]net_slot_1_axi_ar_cnt;
  wire [1:0]net_slot_1_axi_ar_ctrl;
  wire [31:0]net_slot_1_axi_araddr;
  wire [1:0]net_slot_1_axi_arburst;
  wire [3:0]net_slot_1_axi_arcache;
  wire [3:0]net_slot_1_axi_arlen;
  wire [1:0]net_slot_1_axi_arlock;
  wire [2:0]net_slot_1_axi_arprot;
  wire [3:0]net_slot_1_axi_arqos;
  wire net_slot_1_axi_arready;
  wire [2:0]net_slot_1_axi_arsize;
  wire net_slot_1_axi_arvalid;
  wire [5:0]net_slot_1_axi_aw_cnt;
  wire [1:0]net_slot_1_axi_aw_ctrl;
  wire [31:0]net_slot_1_axi_awaddr;
  wire [1:0]net_slot_1_axi_awburst;
  wire [3:0]net_slot_1_axi_awcache;
  wire [3:0]net_slot_1_axi_awlen;
  wire [1:0]net_slot_1_axi_awlock;
  wire [2:0]net_slot_1_axi_awprot;
  wire [3:0]net_slot_1_axi_awqos;
  wire net_slot_1_axi_awready;
  wire [2:0]net_slot_1_axi_awsize;
  wire net_slot_1_axi_awvalid;
  wire [5:0]net_slot_1_axi_b_cnt;
  wire [1:0]net_slot_1_axi_b_ctrl;
  wire net_slot_1_axi_bready;
  wire net_slot_1_axi_bvalid;
  wire [5:0]net_slot_1_axi_r_cnt;
  wire [2:0]net_slot_1_axi_r_ctrl;
  wire [63:0]net_slot_1_axi_rdata;
  wire net_slot_1_axi_rlast;
  wire net_slot_1_axi_rready;
  wire [1:0]net_slot_1_axi_rresp;
  wire net_slot_1_axi_rvalid;
  wire [2:0]net_slot_1_axi_w_ctrl;
  wire net_slot_1_axi_wlast;
  wire net_slot_1_axi_wready;
  wire net_slot_1_axi_wvalid;
  wire [5:0]net_slot_2_axi_ar_cnt;
  wire [1:0]net_slot_2_axi_ar_ctrl;
  wire [63:0]net_slot_2_axi_araddr;
  wire [3:0]net_slot_2_axi_arcache;
  wire [0:0]net_slot_2_axi_arid;
  wire [7:0]net_slot_2_axi_arlen;
  wire [0:0]net_slot_2_axi_arlock;
  wire [2:0]net_slot_2_axi_arprot;
  wire [3:0]net_slot_2_axi_arqos;
  wire net_slot_2_axi_arready;
  wire [3:0]net_slot_2_axi_arregion;
  wire [2:0]net_slot_2_axi_arsize;
  wire net_slot_2_axi_arvalid;
  wire [5:0]net_slot_2_axi_aw_cnt;
  wire [1:0]net_slot_2_axi_aw_ctrl;
  wire [63:0]net_slot_2_axi_awaddr;
  wire [3:0]net_slot_2_axi_awcache;
  wire [0:0]net_slot_2_axi_awid;
  wire [7:0]net_slot_2_axi_awlen;
  wire [0:0]net_slot_2_axi_awlock;
  wire [2:0]net_slot_2_axi_awprot;
  wire [3:0]net_slot_2_axi_awqos;
  wire net_slot_2_axi_awready;
  wire [3:0]net_slot_2_axi_awregion;
  wire [2:0]net_slot_2_axi_awsize;
  wire net_slot_2_axi_awvalid;
  wire [5:0]net_slot_2_axi_b_cnt;
  wire [1:0]net_slot_2_axi_b_ctrl;
  wire [0:0]net_slot_2_axi_bid;
  wire net_slot_2_axi_bready;
  wire [1:0]net_slot_2_axi_bresp;
  wire net_slot_2_axi_bvalid;
  wire [5:0]net_slot_2_axi_r_cnt;
  wire [2:0]net_slot_2_axi_r_ctrl;
  wire [31:0]net_slot_2_axi_rdata;
  wire [0:0]net_slot_2_axi_rid;
  wire net_slot_2_axi_rlast;
  wire net_slot_2_axi_rready;
  wire [1:0]net_slot_2_axi_rresp;
  wire net_slot_2_axi_rvalid;
  wire [2:0]net_slot_2_axi_w_ctrl;
  wire [31:0]net_slot_2_axi_wdata;
  wire net_slot_2_axi_wlast;
  wire net_slot_2_axi_wready;
  wire [3:0]net_slot_2_axi_wstrb;
  wire net_slot_2_axi_wvalid;
  wire [5:0]net_slot_3_axi_ar_cnt;
  wire [1:0]net_slot_3_axi_ar_ctrl;
  wire net_slot_3_axi_arready;
  wire net_slot_3_axi_arvalid;
  wire [5:0]net_slot_3_axi_aw_cnt;
  wire [1:0]net_slot_3_axi_aw_ctrl;
  wire [31:0]net_slot_3_axi_awaddr;
  wire [1:0]net_slot_3_axi_awburst;
  wire [3:0]net_slot_3_axi_awcache;
  wire [3:0]net_slot_3_axi_awlen;
  wire [1:0]net_slot_3_axi_awlock;
  wire [2:0]net_slot_3_axi_awprot;
  wire [3:0]net_slot_3_axi_awqos;
  wire net_slot_3_axi_awready;
  wire [2:0]net_slot_3_axi_awsize;
  wire net_slot_3_axi_awvalid;
  wire [5:0]net_slot_3_axi_b_cnt;
  wire [1:0]net_slot_3_axi_b_ctrl;
  wire net_slot_3_axi_bready;
  wire [1:0]net_slot_3_axi_bresp;
  wire net_slot_3_axi_bvalid;
  wire [5:0]net_slot_3_axi_r_cnt;
  wire [2:0]net_slot_3_axi_r_ctrl;
  wire net_slot_3_axi_rlast;
  wire net_slot_3_axi_rready;
  wire net_slot_3_axi_rvalid;
  wire [2:0]net_slot_3_axi_w_ctrl;
  wire [63:0]net_slot_3_axi_wdata;
  wire net_slot_3_axi_wlast;
  wire net_slot_3_axi_wready;
  wire [7:0]net_slot_3_axi_wstrb;
  wire net_slot_3_axi_wvalid;
  wire [63:0]net_slot_4_axis_tdata;
  wire [7:0]net_slot_4_axis_tkeep;
  wire net_slot_4_axis_tlast;
  wire net_slot_4_axis_tready;
  wire [0:0]net_slot_4_axis_tuser;
  wire net_slot_4_axis_tvalid;
  wire [7:0]probe0_1;
  wire [7:0]probe1_1;
  wire [2:0]probe2_1;
  wire [5:0]probe3_1;
  wire [7:0]probe4_1;
  wire [7:0]probe5_1;
  wire [2:0]probe6_1;
  wire [5:0]probe7_1;
  wire [0:0]probe8_1;
  wire resetn_1;

  assign Conn1_ARADDR = SLOT_1_AXI_araddr[31:0];
  assign Conn1_ARBURST = SLOT_1_AXI_arburst[1:0];
  assign Conn1_ARCACHE = SLOT_1_AXI_arcache[3:0];
  assign Conn1_ARLEN = SLOT_1_AXI_arlen[3:0];
  assign Conn1_ARLOCK = SLOT_1_AXI_arlock[1:0];
  assign Conn1_ARPROT = SLOT_1_AXI_arprot[2:0];
  assign Conn1_ARQOS = SLOT_1_AXI_arqos[3:0];
  assign Conn1_ARREADY = SLOT_1_AXI_arready;
  assign Conn1_ARSIZE = SLOT_1_AXI_arsize[2:0];
  assign Conn1_ARVALID = SLOT_1_AXI_arvalid;
  assign Conn1_AWADDR = SLOT_1_AXI_awaddr[31:0];
  assign Conn1_AWBURST = SLOT_1_AXI_awburst[1:0];
  assign Conn1_AWCACHE = SLOT_1_AXI_awcache[3:0];
  assign Conn1_AWLEN = SLOT_1_AXI_awlen[3:0];
  assign Conn1_AWLOCK = SLOT_1_AXI_awlock[1:0];
  assign Conn1_AWPROT = SLOT_1_AXI_awprot[2:0];
  assign Conn1_AWQOS = SLOT_1_AXI_awqos[3:0];
  assign Conn1_AWREADY = SLOT_1_AXI_awready;
  assign Conn1_AWSIZE = SLOT_1_AXI_awsize[2:0];
  assign Conn1_AWVALID = SLOT_1_AXI_awvalid;
  assign Conn1_BREADY = SLOT_1_AXI_bready;
  assign Conn1_BVALID = SLOT_1_AXI_bvalid;
  assign Conn1_RDATA = SLOT_1_AXI_rdata[63:0];
  assign Conn1_RLAST = SLOT_1_AXI_rlast;
  assign Conn1_RREADY = SLOT_1_AXI_rready;
  assign Conn1_RRESP = SLOT_1_AXI_rresp[1:0];
  assign Conn1_RVALID = SLOT_1_AXI_rvalid;
  assign Conn1_WDATA = SLOT_1_AXI_wdata[63:0];
  assign Conn1_WLAST = SLOT_1_AXI_wlast;
  assign Conn1_WREADY = SLOT_1_AXI_wready;
  assign Conn1_WVALID = SLOT_1_AXI_wvalid;
  assign Conn2_ARADDR = SLOT_2_AXI_araddr[63:0];
  assign Conn2_ARCACHE = SLOT_2_AXI_arcache[3:0];
  assign Conn2_ARID = SLOT_2_AXI_arid[0];
  assign Conn2_ARLEN = SLOT_2_AXI_arlen[7:0];
  assign Conn2_ARLOCK = SLOT_2_AXI_arlock[0];
  assign Conn2_ARPROT = SLOT_2_AXI_arprot[2:0];
  assign Conn2_ARQOS = SLOT_2_AXI_arqos[3:0];
  assign Conn2_ARREADY = SLOT_2_AXI_arready;
  assign Conn2_ARREGION = SLOT_2_AXI_arregion[3:0];
  assign Conn2_ARSIZE = SLOT_2_AXI_arsize[2:0];
  assign Conn2_ARVALID = SLOT_2_AXI_arvalid;
  assign Conn2_AWADDR = SLOT_2_AXI_awaddr[63:0];
  assign Conn2_AWCACHE = SLOT_2_AXI_awcache[3:0];
  assign Conn2_AWID = SLOT_2_AXI_awid[0];
  assign Conn2_AWLEN = SLOT_2_AXI_awlen[7:0];
  assign Conn2_AWLOCK = SLOT_2_AXI_awlock[0];
  assign Conn2_AWPROT = SLOT_2_AXI_awprot[2:0];
  assign Conn2_AWQOS = SLOT_2_AXI_awqos[3:0];
  assign Conn2_AWREADY = SLOT_2_AXI_awready;
  assign Conn2_AWREGION = SLOT_2_AXI_awregion[3:0];
  assign Conn2_AWSIZE = SLOT_2_AXI_awsize[2:0];
  assign Conn2_AWVALID = SLOT_2_AXI_awvalid;
  assign Conn2_BID = SLOT_2_AXI_bid[0];
  assign Conn2_BREADY = SLOT_2_AXI_bready;
  assign Conn2_BRESP = SLOT_2_AXI_bresp[1:0];
  assign Conn2_BVALID = SLOT_2_AXI_bvalid;
  assign Conn2_RDATA = SLOT_2_AXI_rdata[31:0];
  assign Conn2_RID = SLOT_2_AXI_rid[0];
  assign Conn2_RLAST = SLOT_2_AXI_rlast;
  assign Conn2_RREADY = SLOT_2_AXI_rready;
  assign Conn2_RRESP = SLOT_2_AXI_rresp[1:0];
  assign Conn2_RVALID = SLOT_2_AXI_rvalid;
  assign Conn2_WDATA = SLOT_2_AXI_wdata[31:0];
  assign Conn2_WLAST = SLOT_2_AXI_wlast;
  assign Conn2_WREADY = SLOT_2_AXI_wready;
  assign Conn2_WSTRB = SLOT_2_AXI_wstrb[3:0];
  assign Conn2_WVALID = SLOT_2_AXI_wvalid;
  assign Conn3_ARADDR = SLOT_3_AXI_araddr[31:0];
  assign Conn3_ARBURST = SLOT_3_AXI_arburst[1:0];
  assign Conn3_ARCACHE = SLOT_3_AXI_arcache[3:0];
  assign Conn3_ARLEN = SLOT_3_AXI_arlen[3:0];
  assign Conn3_ARLOCK = SLOT_3_AXI_arlock[1:0];
  assign Conn3_ARPROT = SLOT_3_AXI_arprot[2:0];
  assign Conn3_ARREADY = SLOT_3_AXI_arready;
  assign Conn3_ARSIZE = SLOT_3_AXI_arsize[2:0];
  assign Conn3_ARVALID = SLOT_3_AXI_arvalid;
  assign Conn3_AWADDR = SLOT_3_AXI_awaddr[31:0];
  assign Conn3_AWBURST = SLOT_3_AXI_awburst[1:0];
  assign Conn3_AWCACHE = SLOT_3_AXI_awcache[3:0];
  assign Conn3_AWLEN = SLOT_3_AXI_awlen[3:0];
  assign Conn3_AWLOCK = SLOT_3_AXI_awlock[1:0];
  assign Conn3_AWPROT = SLOT_3_AXI_awprot[2:0];
  assign Conn3_AWQOS = SLOT_3_AXI_awqos[3:0];
  assign Conn3_AWREADY = SLOT_3_AXI_awready;
  assign Conn3_AWSIZE = SLOT_3_AXI_awsize[2:0];
  assign Conn3_AWVALID = SLOT_3_AXI_awvalid;
  assign Conn3_BREADY = SLOT_3_AXI_bready;
  assign Conn3_BRESP = SLOT_3_AXI_bresp[1:0];
  assign Conn3_BVALID = SLOT_3_AXI_bvalid;
  assign Conn3_RDATA = SLOT_3_AXI_rdata[63:0];
  assign Conn3_RLAST = SLOT_3_AXI_rlast;
  assign Conn3_RREADY = SLOT_3_AXI_rready;
  assign Conn3_RVALID = SLOT_3_AXI_rvalid;
  assign Conn3_WDATA = SLOT_3_AXI_wdata[63:0];
  assign Conn3_WLAST = SLOT_3_AXI_wlast;
  assign Conn3_WREADY = SLOT_3_AXI_wready;
  assign Conn3_WSTRB = SLOT_3_AXI_wstrb[7:0];
  assign Conn3_WVALID = SLOT_3_AXI_wvalid;
  assign Conn4_TDATA = SLOT_4_AXIS_tdata[63:0];
  assign Conn4_TKEEP = SLOT_4_AXIS_tkeep[7:0];
  assign Conn4_TLAST = SLOT_4_AXIS_tlast;
  assign Conn4_TREADY = SLOT_4_AXIS_tready;
  assign Conn4_TUSER = SLOT_4_AXIS_tuser[0];
  assign Conn4_TVALID = SLOT_4_AXIS_tvalid;
  assign Conn_ARADDR = SLOT_0_AXI_araddr[31:0];
  assign Conn_ARBURST = SLOT_0_AXI_arburst[1:0];
  assign Conn_ARCACHE = SLOT_0_AXI_arcache[3:0];
  assign Conn_ARID = SLOT_0_AXI_arid[11:0];
  assign Conn_ARLEN = SLOT_0_AXI_arlen[3:0];
  assign Conn_ARLOCK = SLOT_0_AXI_arlock[1:0];
  assign Conn_ARPROT = SLOT_0_AXI_arprot[2:0];
  assign Conn_ARQOS = SLOT_0_AXI_arqos[3:0];
  assign Conn_ARREADY = SLOT_0_AXI_arready;
  assign Conn_ARSIZE = SLOT_0_AXI_arsize[2:0];
  assign Conn_ARVALID = SLOT_0_AXI_arvalid;
  assign Conn_AWADDR = SLOT_0_AXI_awaddr[31:0];
  assign Conn_AWBURST = SLOT_0_AXI_awburst[1:0];
  assign Conn_AWCACHE = SLOT_0_AXI_awcache[3:0];
  assign Conn_AWID = SLOT_0_AXI_awid[11:0];
  assign Conn_AWLEN = SLOT_0_AXI_awlen[3:0];
  assign Conn_AWLOCK = SLOT_0_AXI_awlock[1:0];
  assign Conn_AWPROT = SLOT_0_AXI_awprot[2:0];
  assign Conn_AWQOS = SLOT_0_AXI_awqos[3:0];
  assign Conn_AWREADY = SLOT_0_AXI_awready;
  assign Conn_AWSIZE = SLOT_0_AXI_awsize[2:0];
  assign Conn_AWVALID = SLOT_0_AXI_awvalid;
  assign Conn_BID = SLOT_0_AXI_bid[11:0];
  assign Conn_BREADY = SLOT_0_AXI_bready;
  assign Conn_BRESP = SLOT_0_AXI_bresp[1:0];
  assign Conn_BVALID = SLOT_0_AXI_bvalid;
  assign Conn_RDATA = SLOT_0_AXI_rdata[31:0];
  assign Conn_RID = SLOT_0_AXI_rid[11:0];
  assign Conn_RLAST = SLOT_0_AXI_rlast;
  assign Conn_RREADY = SLOT_0_AXI_rready;
  assign Conn_RRESP = SLOT_0_AXI_rresp[1:0];
  assign Conn_RVALID = SLOT_0_AXI_rvalid;
  assign Conn_WDATA = SLOT_0_AXI_wdata[31:0];
  assign Conn_WID = SLOT_0_AXI_wid[11:0];
  assign Conn_WLAST = SLOT_0_AXI_wlast;
  assign Conn_WREADY = SLOT_0_AXI_wready;
  assign Conn_WSTRB = SLOT_0_AXI_wstrb[3:0];
  assign Conn_WVALID = SLOT_0_AXI_wvalid;
  assign clk_1 = clk;
  assign probe0_1 = probe0[7:0];
  assign probe1_1 = probe1[7:0];
  assign probe2_1 = probe2[2:0];
  assign probe3_1 = probe3[5:0];
  assign probe4_1 = probe4[7:0];
  assign probe5_1 = probe5[7:0];
  assign probe6_1 = probe6[2:0];
  assign probe7_1 = probe7[5:0];
  assign probe8_1 = probe8[0];
  assign resetn_1 = resetn;
  bd_f60c_g_inst_0 g_inst
       (.aclk(clk_1),
        .aresetn(resetn_1),
        .m_slot_0_axi_ar_cnt(net_slot_0_axi_ar_cnt),
        .m_slot_0_axi_araddr(net_slot_0_axi_araddr),
        .m_slot_0_axi_arburst(net_slot_0_axi_arburst),
        .m_slot_0_axi_arcache(net_slot_0_axi_arcache),
        .m_slot_0_axi_arid(net_slot_0_axi_arid),
        .m_slot_0_axi_arlen(net_slot_0_axi_arlen),
        .m_slot_0_axi_arlock(net_slot_0_axi_arlock),
        .m_slot_0_axi_arprot(net_slot_0_axi_arprot),
        .m_slot_0_axi_arqos(net_slot_0_axi_arqos),
        .m_slot_0_axi_arready(net_slot_0_axi_arready),
        .m_slot_0_axi_arsize(net_slot_0_axi_arsize),
        .m_slot_0_axi_arvalid(net_slot_0_axi_arvalid),
        .m_slot_0_axi_aw_cnt(net_slot_0_axi_aw_cnt),
        .m_slot_0_axi_awaddr(net_slot_0_axi_awaddr),
        .m_slot_0_axi_awburst(net_slot_0_axi_awburst),
        .m_slot_0_axi_awcache(net_slot_0_axi_awcache),
        .m_slot_0_axi_awid(net_slot_0_axi_awid),
        .m_slot_0_axi_awlen(net_slot_0_axi_awlen),
        .m_slot_0_axi_awlock(net_slot_0_axi_awlock),
        .m_slot_0_axi_awprot(net_slot_0_axi_awprot),
        .m_slot_0_axi_awqos(net_slot_0_axi_awqos),
        .m_slot_0_axi_awready(net_slot_0_axi_awready),
        .m_slot_0_axi_awsize(net_slot_0_axi_awsize),
        .m_slot_0_axi_awvalid(net_slot_0_axi_awvalid),
        .m_slot_0_axi_b_cnt(net_slot_0_axi_b_cnt),
        .m_slot_0_axi_bid(net_slot_0_axi_bid),
        .m_slot_0_axi_bready(net_slot_0_axi_bready),
        .m_slot_0_axi_bresp(net_slot_0_axi_bresp),
        .m_slot_0_axi_bvalid(net_slot_0_axi_bvalid),
        .m_slot_0_axi_r_cnt(net_slot_0_axi_r_cnt),
        .m_slot_0_axi_rdata(net_slot_0_axi_rdata),
        .m_slot_0_axi_rid(net_slot_0_axi_rid),
        .m_slot_0_axi_rlast(net_slot_0_axi_rlast),
        .m_slot_0_axi_rready(net_slot_0_axi_rready),
        .m_slot_0_axi_rresp(net_slot_0_axi_rresp),
        .m_slot_0_axi_rvalid(net_slot_0_axi_rvalid),
        .m_slot_0_axi_wdata(net_slot_0_axi_wdata),
        .m_slot_0_axi_wid(net_slot_0_axi_wid),
        .m_slot_0_axi_wlast(net_slot_0_axi_wlast),
        .m_slot_0_axi_wready(net_slot_0_axi_wready),
        .m_slot_0_axi_wstrb(net_slot_0_axi_wstrb),
        .m_slot_0_axi_wvalid(net_slot_0_axi_wvalid),
        .m_slot_1_axi_ar_cnt(net_slot_1_axi_ar_cnt),
        .m_slot_1_axi_araddr(net_slot_1_axi_araddr),
        .m_slot_1_axi_arburst(net_slot_1_axi_arburst),
        .m_slot_1_axi_arcache(net_slot_1_axi_arcache),
        .m_slot_1_axi_arlen(net_slot_1_axi_arlen),
        .m_slot_1_axi_arlock(net_slot_1_axi_arlock),
        .m_slot_1_axi_arprot(net_slot_1_axi_arprot),
        .m_slot_1_axi_arqos(net_slot_1_axi_arqos),
        .m_slot_1_axi_arready(net_slot_1_axi_arready),
        .m_slot_1_axi_arsize(net_slot_1_axi_arsize),
        .m_slot_1_axi_arvalid(net_slot_1_axi_arvalid),
        .m_slot_1_axi_aw_cnt(net_slot_1_axi_aw_cnt),
        .m_slot_1_axi_awaddr(net_slot_1_axi_awaddr),
        .m_slot_1_axi_awburst(net_slot_1_axi_awburst),
        .m_slot_1_axi_awcache(net_slot_1_axi_awcache),
        .m_slot_1_axi_awlen(net_slot_1_axi_awlen),
        .m_slot_1_axi_awlock(net_slot_1_axi_awlock),
        .m_slot_1_axi_awprot(net_slot_1_axi_awprot),
        .m_slot_1_axi_awqos(net_slot_1_axi_awqos),
        .m_slot_1_axi_awready(net_slot_1_axi_awready),
        .m_slot_1_axi_awsize(net_slot_1_axi_awsize),
        .m_slot_1_axi_awvalid(net_slot_1_axi_awvalid),
        .m_slot_1_axi_b_cnt(net_slot_1_axi_b_cnt),
        .m_slot_1_axi_bready(net_slot_1_axi_bready),
        .m_slot_1_axi_bvalid(net_slot_1_axi_bvalid),
        .m_slot_1_axi_r_cnt(net_slot_1_axi_r_cnt),
        .m_slot_1_axi_rdata(net_slot_1_axi_rdata),
        .m_slot_1_axi_rlast(net_slot_1_axi_rlast),
        .m_slot_1_axi_rready(net_slot_1_axi_rready),
        .m_slot_1_axi_rresp(net_slot_1_axi_rresp),
        .m_slot_1_axi_rvalid(net_slot_1_axi_rvalid),
        .m_slot_1_axi_wlast(net_slot_1_axi_wlast),
        .m_slot_1_axi_wready(net_slot_1_axi_wready),
        .m_slot_1_axi_wvalid(net_slot_1_axi_wvalid),
        .m_slot_2_axi_ar_cnt(net_slot_2_axi_ar_cnt),
        .m_slot_2_axi_araddr(net_slot_2_axi_araddr),
        .m_slot_2_axi_arcache(net_slot_2_axi_arcache),
        .m_slot_2_axi_arid(net_slot_2_axi_arid),
        .m_slot_2_axi_arlen(net_slot_2_axi_arlen),
        .m_slot_2_axi_arlock(net_slot_2_axi_arlock),
        .m_slot_2_axi_arprot(net_slot_2_axi_arprot),
        .m_slot_2_axi_arqos(net_slot_2_axi_arqos),
        .m_slot_2_axi_arready(net_slot_2_axi_arready),
        .m_slot_2_axi_arregion(net_slot_2_axi_arregion),
        .m_slot_2_axi_arsize(net_slot_2_axi_arsize),
        .m_slot_2_axi_arvalid(net_slot_2_axi_arvalid),
        .m_slot_2_axi_aw_cnt(net_slot_2_axi_aw_cnt),
        .m_slot_2_axi_awaddr(net_slot_2_axi_awaddr),
        .m_slot_2_axi_awcache(net_slot_2_axi_awcache),
        .m_slot_2_axi_awid(net_slot_2_axi_awid),
        .m_slot_2_axi_awlen(net_slot_2_axi_awlen),
        .m_slot_2_axi_awlock(net_slot_2_axi_awlock),
        .m_slot_2_axi_awprot(net_slot_2_axi_awprot),
        .m_slot_2_axi_awqos(net_slot_2_axi_awqos),
        .m_slot_2_axi_awready(net_slot_2_axi_awready),
        .m_slot_2_axi_awregion(net_slot_2_axi_awregion),
        .m_slot_2_axi_awsize(net_slot_2_axi_awsize),
        .m_slot_2_axi_awvalid(net_slot_2_axi_awvalid),
        .m_slot_2_axi_b_cnt(net_slot_2_axi_b_cnt),
        .m_slot_2_axi_bid(net_slot_2_axi_bid),
        .m_slot_2_axi_bready(net_slot_2_axi_bready),
        .m_slot_2_axi_bresp(net_slot_2_axi_bresp),
        .m_slot_2_axi_bvalid(net_slot_2_axi_bvalid),
        .m_slot_2_axi_r_cnt(net_slot_2_axi_r_cnt),
        .m_slot_2_axi_rdata(net_slot_2_axi_rdata),
        .m_slot_2_axi_rid(net_slot_2_axi_rid),
        .m_slot_2_axi_rlast(net_slot_2_axi_rlast),
        .m_slot_2_axi_rready(net_slot_2_axi_rready),
        .m_slot_2_axi_rresp(net_slot_2_axi_rresp),
        .m_slot_2_axi_rvalid(net_slot_2_axi_rvalid),
        .m_slot_2_axi_wdata(net_slot_2_axi_wdata),
        .m_slot_2_axi_wlast(net_slot_2_axi_wlast),
        .m_slot_2_axi_wready(net_slot_2_axi_wready),
        .m_slot_2_axi_wstrb(net_slot_2_axi_wstrb),
        .m_slot_2_axi_wvalid(net_slot_2_axi_wvalid),
        .m_slot_3_axi_ar_cnt(net_slot_3_axi_ar_cnt),
        .m_slot_3_axi_arready(net_slot_3_axi_arready),
        .m_slot_3_axi_arvalid(net_slot_3_axi_arvalid),
        .m_slot_3_axi_aw_cnt(net_slot_3_axi_aw_cnt),
        .m_slot_3_axi_awaddr(net_slot_3_axi_awaddr),
        .m_slot_3_axi_awburst(net_slot_3_axi_awburst),
        .m_slot_3_axi_awcache(net_slot_3_axi_awcache),
        .m_slot_3_axi_awlen(net_slot_3_axi_awlen),
        .m_slot_3_axi_awlock(net_slot_3_axi_awlock),
        .m_slot_3_axi_awprot(net_slot_3_axi_awprot),
        .m_slot_3_axi_awqos(net_slot_3_axi_awqos),
        .m_slot_3_axi_awready(net_slot_3_axi_awready),
        .m_slot_3_axi_awsize(net_slot_3_axi_awsize),
        .m_slot_3_axi_awvalid(net_slot_3_axi_awvalid),
        .m_slot_3_axi_b_cnt(net_slot_3_axi_b_cnt),
        .m_slot_3_axi_bready(net_slot_3_axi_bready),
        .m_slot_3_axi_bresp(net_slot_3_axi_bresp),
        .m_slot_3_axi_bvalid(net_slot_3_axi_bvalid),
        .m_slot_3_axi_r_cnt(net_slot_3_axi_r_cnt),
        .m_slot_3_axi_rlast(net_slot_3_axi_rlast),
        .m_slot_3_axi_rready(net_slot_3_axi_rready),
        .m_slot_3_axi_rvalid(net_slot_3_axi_rvalid),
        .m_slot_3_axi_wdata(net_slot_3_axi_wdata),
        .m_slot_3_axi_wlast(net_slot_3_axi_wlast),
        .m_slot_3_axi_wready(net_slot_3_axi_wready),
        .m_slot_3_axi_wstrb(net_slot_3_axi_wstrb),
        .m_slot_3_axi_wvalid(net_slot_3_axi_wvalid),
        .m_slot_4_axis_tdata(net_slot_4_axis_tdata),
        .m_slot_4_axis_tkeep(net_slot_4_axis_tkeep),
        .m_slot_4_axis_tlast(net_slot_4_axis_tlast),
        .m_slot_4_axis_tready(net_slot_4_axis_tready),
        .m_slot_4_axis_tuser(net_slot_4_axis_tuser),
        .m_slot_4_axis_tvalid(net_slot_4_axis_tvalid),
        .slot_0_axi_araddr(Conn_ARADDR),
        .slot_0_axi_arburst(Conn_ARBURST),
        .slot_0_axi_arcache(Conn_ARCACHE),
        .slot_0_axi_arid(Conn_ARID),
        .slot_0_axi_arlen(Conn_ARLEN),
        .slot_0_axi_arlock(Conn_ARLOCK),
        .slot_0_axi_arprot(Conn_ARPROT),
        .slot_0_axi_arqos(Conn_ARQOS),
        .slot_0_axi_arready(Conn_ARREADY),
        .slot_0_axi_arsize(Conn_ARSIZE),
        .slot_0_axi_arvalid(Conn_ARVALID),
        .slot_0_axi_awaddr(Conn_AWADDR),
        .slot_0_axi_awburst(Conn_AWBURST),
        .slot_0_axi_awcache(Conn_AWCACHE),
        .slot_0_axi_awid(Conn_AWID),
        .slot_0_axi_awlen(Conn_AWLEN),
        .slot_0_axi_awlock(Conn_AWLOCK),
        .slot_0_axi_awprot(Conn_AWPROT),
        .slot_0_axi_awqos(Conn_AWQOS),
        .slot_0_axi_awready(Conn_AWREADY),
        .slot_0_axi_awsize(Conn_AWSIZE),
        .slot_0_axi_awvalid(Conn_AWVALID),
        .slot_0_axi_bid(Conn_BID),
        .slot_0_axi_bready(Conn_BREADY),
        .slot_0_axi_bresp(Conn_BRESP),
        .slot_0_axi_bvalid(Conn_BVALID),
        .slot_0_axi_rdata(Conn_RDATA),
        .slot_0_axi_rid(Conn_RID),
        .slot_0_axi_rlast(Conn_RLAST),
        .slot_0_axi_rready(Conn_RREADY),
        .slot_0_axi_rresp(Conn_RRESP),
        .slot_0_axi_rvalid(Conn_RVALID),
        .slot_0_axi_wdata(Conn_WDATA),
        .slot_0_axi_wid(Conn_WID),
        .slot_0_axi_wlast(Conn_WLAST),
        .slot_0_axi_wready(Conn_WREADY),
        .slot_0_axi_wstrb(Conn_WSTRB),
        .slot_0_axi_wvalid(Conn_WVALID),
        .slot_1_axi_araddr(Conn1_ARADDR),
        .slot_1_axi_arburst(Conn1_ARBURST),
        .slot_1_axi_arcache(Conn1_ARCACHE),
        .slot_1_axi_arlen(Conn1_ARLEN),
        .slot_1_axi_arlock(Conn1_ARLOCK),
        .slot_1_axi_arprot(Conn1_ARPROT),
        .slot_1_axi_arqos(Conn1_ARQOS),
        .slot_1_axi_arready(Conn1_ARREADY),
        .slot_1_axi_arsize(Conn1_ARSIZE),
        .slot_1_axi_arvalid(Conn1_ARVALID),
        .slot_1_axi_awaddr(Conn1_AWADDR),
        .slot_1_axi_awburst(Conn1_AWBURST),
        .slot_1_axi_awcache(Conn1_AWCACHE),
        .slot_1_axi_awlen(Conn1_AWLEN),
        .slot_1_axi_awlock(Conn1_AWLOCK),
        .slot_1_axi_awprot(Conn1_AWPROT),
        .slot_1_axi_awqos(Conn1_AWQOS),
        .slot_1_axi_awready(Conn1_AWREADY),
        .slot_1_axi_awsize(Conn1_AWSIZE),
        .slot_1_axi_awvalid(Conn1_AWVALID),
        .slot_1_axi_bready(Conn1_BREADY),
        .slot_1_axi_bvalid(Conn1_BVALID),
        .slot_1_axi_rdata(Conn1_RDATA),
        .slot_1_axi_rlast(Conn1_RLAST),
        .slot_1_axi_rready(Conn1_RREADY),
        .slot_1_axi_rresp(Conn1_RRESP),
        .slot_1_axi_rvalid(Conn1_RVALID),
        .slot_1_axi_wdata(Conn1_WDATA),
        .slot_1_axi_wlast(Conn1_WLAST),
        .slot_1_axi_wready(Conn1_WREADY),
        .slot_1_axi_wvalid(Conn1_WVALID),
        .slot_2_axi_araddr(Conn2_ARADDR),
        .slot_2_axi_arcache(Conn2_ARCACHE),
        .slot_2_axi_arid(Conn2_ARID),
        .slot_2_axi_arlen(Conn2_ARLEN),
        .slot_2_axi_arlock(Conn2_ARLOCK),
        .slot_2_axi_arprot(Conn2_ARPROT),
        .slot_2_axi_arqos(Conn2_ARQOS),
        .slot_2_axi_arready(Conn2_ARREADY),
        .slot_2_axi_arregion(Conn2_ARREGION),
        .slot_2_axi_arsize(Conn2_ARSIZE),
        .slot_2_axi_arvalid(Conn2_ARVALID),
        .slot_2_axi_awaddr(Conn2_AWADDR),
        .slot_2_axi_awcache(Conn2_AWCACHE),
        .slot_2_axi_awid(Conn2_AWID),
        .slot_2_axi_awlen(Conn2_AWLEN),
        .slot_2_axi_awlock(Conn2_AWLOCK),
        .slot_2_axi_awprot(Conn2_AWPROT),
        .slot_2_axi_awqos(Conn2_AWQOS),
        .slot_2_axi_awready(Conn2_AWREADY),
        .slot_2_axi_awregion(Conn2_AWREGION),
        .slot_2_axi_awsize(Conn2_AWSIZE),
        .slot_2_axi_awvalid(Conn2_AWVALID),
        .slot_2_axi_bid(Conn2_BID),
        .slot_2_axi_bready(Conn2_BREADY),
        .slot_2_axi_bresp(Conn2_BRESP),
        .slot_2_axi_bvalid(Conn2_BVALID),
        .slot_2_axi_rdata(Conn2_RDATA),
        .slot_2_axi_rid(Conn2_RID),
        .slot_2_axi_rlast(Conn2_RLAST),
        .slot_2_axi_rready(Conn2_RREADY),
        .slot_2_axi_rresp(Conn2_RRESP),
        .slot_2_axi_rvalid(Conn2_RVALID),
        .slot_2_axi_wdata(Conn2_WDATA),
        .slot_2_axi_wlast(Conn2_WLAST),
        .slot_2_axi_wready(Conn2_WREADY),
        .slot_2_axi_wstrb(Conn2_WSTRB),
        .slot_2_axi_wvalid(Conn2_WVALID),
        .slot_3_axi_araddr(Conn3_ARADDR),
        .slot_3_axi_arburst(Conn3_ARBURST),
        .slot_3_axi_arcache(Conn3_ARCACHE),
        .slot_3_axi_arlen(Conn3_ARLEN),
        .slot_3_axi_arlock(Conn3_ARLOCK),
        .slot_3_axi_arprot(Conn3_ARPROT),
        .slot_3_axi_arready(Conn3_ARREADY),
        .slot_3_axi_arsize(Conn3_ARSIZE),
        .slot_3_axi_arvalid(Conn3_ARVALID),
        .slot_3_axi_awaddr(Conn3_AWADDR),
        .slot_3_axi_awburst(Conn3_AWBURST),
        .slot_3_axi_awcache(Conn3_AWCACHE),
        .slot_3_axi_awlen(Conn3_AWLEN),
        .slot_3_axi_awlock(Conn3_AWLOCK),
        .slot_3_axi_awprot(Conn3_AWPROT),
        .slot_3_axi_awqos(Conn3_AWQOS),
        .slot_3_axi_awready(Conn3_AWREADY),
        .slot_3_axi_awsize(Conn3_AWSIZE),
        .slot_3_axi_awvalid(Conn3_AWVALID),
        .slot_3_axi_bready(Conn3_BREADY),
        .slot_3_axi_bresp(Conn3_BRESP),
        .slot_3_axi_bvalid(Conn3_BVALID),
        .slot_3_axi_rdata(Conn3_RDATA),
        .slot_3_axi_rlast(Conn3_RLAST),
        .slot_3_axi_rready(Conn3_RREADY),
        .slot_3_axi_rvalid(Conn3_RVALID),
        .slot_3_axi_wdata(Conn3_WDATA),
        .slot_3_axi_wlast(Conn3_WLAST),
        .slot_3_axi_wready(Conn3_WREADY),
        .slot_3_axi_wstrb(Conn3_WSTRB),
        .slot_3_axi_wvalid(Conn3_WVALID),
        .slot_4_axis_tdata(Conn4_TDATA),
        .slot_4_axis_tkeep(Conn4_TKEEP),
        .slot_4_axis_tlast(Conn4_TLAST),
        .slot_4_axis_tready(Conn4_TREADY),
        .slot_4_axis_tuser(Conn4_TUSER),
        .slot_4_axis_tvalid(Conn4_TVALID));
  bd_f60c_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(net_slot_0_axi_araddr),
        .probe100(net_slot_2_axi_aw_ctrl),
        .probe101(net_slot_2_axi_w_ctrl),
        .probe102(net_slot_2_axi_b_ctrl),
        .probe103(net_slot_2_axi_ar_ctrl),
        .probe104(net_slot_2_axi_r_ctrl),
        .probe105(net_slot_3_axi_ar_cnt),
        .probe106(net_slot_3_axi_aw_cnt),
        .probe107(net_slot_3_axi_awaddr),
        .probe108(net_slot_3_axi_awburst),
        .probe109(net_slot_3_axi_awcache),
        .probe11(net_slot_0_axi_arburst),
        .probe110(net_slot_3_axi_awlen),
        .probe111(net_slot_3_axi_awlock),
        .probe112(net_slot_3_axi_awprot),
        .probe113(net_slot_3_axi_awqos),
        .probe114(net_slot_3_axi_awsize),
        .probe115(net_slot_3_axi_b_cnt),
        .probe116(net_slot_3_axi_bresp),
        .probe117(net_slot_3_axi_r_cnt),
        .probe118(net_slot_3_axi_wdata),
        .probe119(net_slot_3_axi_wstrb),
        .probe12(net_slot_0_axi_arcache),
        .probe120(net_slot_3_axi_aw_ctrl),
        .probe121(net_slot_3_axi_w_ctrl),
        .probe122(net_slot_3_axi_b_ctrl),
        .probe123(net_slot_3_axi_ar_ctrl),
        .probe124(net_slot_3_axi_r_ctrl),
        .probe125(net_slot_4_axis_tdata),
        .probe126(net_slot_4_axis_tkeep),
        .probe127(net_slot_4_axis_tuser),
        .probe128(net_slot_4_axis_tvalid),
        .probe129(net_slot_4_axis_tready),
        .probe13(net_slot_0_axi_arid),
        .probe130(net_slot_4_axis_tlast),
        .probe14(net_slot_0_axi_arlen),
        .probe15(net_slot_0_axi_arlock),
        .probe16(net_slot_0_axi_arprot),
        .probe17(net_slot_0_axi_arqos),
        .probe18(net_slot_0_axi_arsize),
        .probe19(net_slot_0_axi_aw_cnt),
        .probe2(probe2_1),
        .probe20(net_slot_0_axi_awaddr),
        .probe21(net_slot_0_axi_awburst),
        .probe22(net_slot_0_axi_awcache),
        .probe23(net_slot_0_axi_awid),
        .probe24(net_slot_0_axi_awlen),
        .probe25(net_slot_0_axi_awlock),
        .probe26(net_slot_0_axi_awprot),
        .probe27(net_slot_0_axi_awqos),
        .probe28(net_slot_0_axi_awsize),
        .probe29(net_slot_0_axi_b_cnt),
        .probe3(probe3_1),
        .probe30(net_slot_0_axi_bid),
        .probe31(net_slot_0_axi_bresp),
        .probe32(net_slot_0_axi_r_cnt),
        .probe33(net_slot_0_axi_rdata),
        .probe34(net_slot_0_axi_rid),
        .probe35(net_slot_0_axi_rresp),
        .probe36(net_slot_0_axi_wdata),
        .probe37(net_slot_0_axi_wid),
        .probe38(net_slot_0_axi_wstrb),
        .probe39(net_slot_0_axi_aw_ctrl),
        .probe4(probe4_1),
        .probe40(net_slot_0_axi_w_ctrl),
        .probe41(net_slot_0_axi_b_ctrl),
        .probe42(net_slot_0_axi_ar_ctrl),
        .probe43(net_slot_0_axi_r_ctrl),
        .probe44(net_slot_1_axi_ar_cnt),
        .probe45(net_slot_1_axi_araddr),
        .probe46(net_slot_1_axi_arburst),
        .probe47(net_slot_1_axi_arcache),
        .probe48(net_slot_1_axi_arlen),
        .probe49(net_slot_1_axi_arlock),
        .probe5(probe5_1),
        .probe50(net_slot_1_axi_arprot),
        .probe51(net_slot_1_axi_arqos),
        .probe52(net_slot_1_axi_arsize),
        .probe53(net_slot_1_axi_aw_cnt),
        .probe54(net_slot_1_axi_awaddr),
        .probe55(net_slot_1_axi_awburst),
        .probe56(net_slot_1_axi_awcache),
        .probe57(net_slot_1_axi_awlen),
        .probe58(net_slot_1_axi_awlock),
        .probe59(net_slot_1_axi_awprot),
        .probe6(probe6_1),
        .probe60(net_slot_1_axi_awqos),
        .probe61(net_slot_1_axi_awsize),
        .probe62(net_slot_1_axi_b_cnt),
        .probe63(net_slot_1_axi_r_cnt),
        .probe64(net_slot_1_axi_rdata),
        .probe65(net_slot_1_axi_rresp),
        .probe66(net_slot_1_axi_aw_ctrl),
        .probe67(net_slot_1_axi_w_ctrl),
        .probe68(net_slot_1_axi_b_ctrl),
        .probe69(net_slot_1_axi_ar_ctrl),
        .probe7(probe7_1),
        .probe70(net_slot_1_axi_r_ctrl),
        .probe71(net_slot_2_axi_ar_cnt),
        .probe72(net_slot_2_axi_araddr),
        .probe73(net_slot_2_axi_arcache),
        .probe74(net_slot_2_axi_arid),
        .probe75(net_slot_2_axi_arlen),
        .probe76(net_slot_2_axi_arlock),
        .probe77(net_slot_2_axi_arprot),
        .probe78(net_slot_2_axi_arqos),
        .probe79(net_slot_2_axi_arregion),
        .probe8(probe8_1),
        .probe80(net_slot_2_axi_arsize),
        .probe81(net_slot_2_axi_aw_cnt),
        .probe82(net_slot_2_axi_awaddr),
        .probe83(net_slot_2_axi_awcache),
        .probe84(net_slot_2_axi_awid),
        .probe85(net_slot_2_axi_awlen),
        .probe86(net_slot_2_axi_awlock),
        .probe87(net_slot_2_axi_awprot),
        .probe88(net_slot_2_axi_awqos),
        .probe89(net_slot_2_axi_awregion),
        .probe9(net_slot_0_axi_ar_cnt),
        .probe90(net_slot_2_axi_awsize),
        .probe91(net_slot_2_axi_b_cnt),
        .probe92(net_slot_2_axi_bid),
        .probe93(net_slot_2_axi_bresp),
        .probe94(net_slot_2_axi_r_cnt),
        .probe95(net_slot_2_axi_rdata),
        .probe96(net_slot_2_axi_rid),
        .probe97(net_slot_2_axi_rresp),
        .probe98(net_slot_2_axi_wdata),
        .probe99(net_slot_2_axi_wstrb));
  bd_f60c_slot_0_ar_0 slot_0_ar
       (.In0(net_slot_0_axi_arvalid),
        .In1(net_slot_0_axi_arready),
        .dout(net_slot_0_axi_ar_ctrl));
  bd_f60c_slot_0_aw_0 slot_0_aw
       (.In0(net_slot_0_axi_awvalid),
        .In1(net_slot_0_axi_awready),
        .dout(net_slot_0_axi_aw_ctrl));
  bd_f60c_slot_0_b_0 slot_0_b
       (.In0(net_slot_0_axi_bvalid),
        .In1(net_slot_0_axi_bready),
        .dout(net_slot_0_axi_b_ctrl));
  bd_f60c_slot_0_r_0 slot_0_r
       (.In0(net_slot_0_axi_rvalid),
        .In1(net_slot_0_axi_rready),
        .In2(net_slot_0_axi_rlast),
        .dout(net_slot_0_axi_r_ctrl));
  bd_f60c_slot_0_w_0 slot_0_w
       (.In0(net_slot_0_axi_wvalid),
        .In1(net_slot_0_axi_wready),
        .In2(net_slot_0_axi_wlast),
        .dout(net_slot_0_axi_w_ctrl));
  bd_f60c_slot_1_ar_0 slot_1_ar
       (.In0(net_slot_1_axi_arvalid),
        .In1(net_slot_1_axi_arready),
        .dout(net_slot_1_axi_ar_ctrl));
  bd_f60c_slot_1_aw_0 slot_1_aw
       (.In0(net_slot_1_axi_awvalid),
        .In1(net_slot_1_axi_awready),
        .dout(net_slot_1_axi_aw_ctrl));
  bd_f60c_slot_1_b_0 slot_1_b
       (.In0(net_slot_1_axi_bvalid),
        .In1(net_slot_1_axi_bready),
        .dout(net_slot_1_axi_b_ctrl));
  bd_f60c_slot_1_r_0 slot_1_r
       (.In0(net_slot_1_axi_rvalid),
        .In1(net_slot_1_axi_rready),
        .In2(net_slot_1_axi_rlast),
        .dout(net_slot_1_axi_r_ctrl));
  bd_f60c_slot_1_w_0 slot_1_w
       (.In0(net_slot_1_axi_wvalid),
        .In1(net_slot_1_axi_wready),
        .In2(net_slot_1_axi_wlast),
        .dout(net_slot_1_axi_w_ctrl));
  bd_f60c_slot_2_ar_0 slot_2_ar
       (.In0(net_slot_2_axi_arvalid),
        .In1(net_slot_2_axi_arready),
        .dout(net_slot_2_axi_ar_ctrl));
  bd_f60c_slot_2_aw_0 slot_2_aw
       (.In0(net_slot_2_axi_awvalid),
        .In1(net_slot_2_axi_awready),
        .dout(net_slot_2_axi_aw_ctrl));
  bd_f60c_slot_2_b_0 slot_2_b
       (.In0(net_slot_2_axi_bvalid),
        .In1(net_slot_2_axi_bready),
        .dout(net_slot_2_axi_b_ctrl));
  bd_f60c_slot_2_r_0 slot_2_r
       (.In0(net_slot_2_axi_rvalid),
        .In1(net_slot_2_axi_rready),
        .In2(net_slot_2_axi_rlast),
        .dout(net_slot_2_axi_r_ctrl));
  bd_f60c_slot_2_w_0 slot_2_w
       (.In0(net_slot_2_axi_wvalid),
        .In1(net_slot_2_axi_wready),
        .In2(net_slot_2_axi_wlast),
        .dout(net_slot_2_axi_w_ctrl));
  bd_f60c_slot_3_ar_0 slot_3_ar
       (.In0(net_slot_3_axi_arvalid),
        .In1(net_slot_3_axi_arready),
        .dout(net_slot_3_axi_ar_ctrl));
  bd_f60c_slot_3_aw_0 slot_3_aw
       (.In0(net_slot_3_axi_awvalid),
        .In1(net_slot_3_axi_awready),
        .dout(net_slot_3_axi_aw_ctrl));
  bd_f60c_slot_3_b_0 slot_3_b
       (.In0(net_slot_3_axi_bvalid),
        .In1(net_slot_3_axi_bready),
        .dout(net_slot_3_axi_b_ctrl));
  bd_f60c_slot_3_r_0 slot_3_r
       (.In0(net_slot_3_axi_rvalid),
        .In1(net_slot_3_axi_rready),
        .In2(net_slot_3_axi_rlast),
        .dout(net_slot_3_axi_r_ctrl));
  bd_f60c_slot_3_w_0 slot_3_w
       (.In0(net_slot_3_axi_wvalid),
        .In1(net_slot_3_axi_wready),
        .In2(net_slot_3_axi_wlast),
        .dout(net_slot_3_axi_w_ctrl));
endmodule

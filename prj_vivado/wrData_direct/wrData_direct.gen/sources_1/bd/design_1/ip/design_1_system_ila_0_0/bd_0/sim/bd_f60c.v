//Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
//Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Command: generate_target bd_f60c.bd
//Design : bd_f60c
//Purpose: IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "bd_f60c,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=bd_f60c,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=12,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=0,numPkgbdBlks=0,bdsource=SBD,synth_mode=Global}" *) (* HW_HANDOFF = "design_1_system_ila_0_0.hwdef" *) 
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
    SLOT_1_AXIS_tdata,
    SLOT_1_AXIS_tkeep,
    SLOT_1_AXIS_tlast,
    SLOT_1_AXIS_tready,
    SLOT_1_AXIS_tuser,
    SLOT_1_AXIS_tvalid,
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
    clk,
    probe0,
    probe1,
    probe10,
    probe2,
    probe3,
    probe4,
    probe5,
    probe6,
    probe7,
    probe8,
    probe9,
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
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TDATA" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_1_AXIS, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 166666672, HAS_TKEEP 1, HAS_TLAST 1, HAS_TREADY 1, HAS_TSTRB 0, INSERT_VIP 0, LAYERED_METADATA undef, PHASE 0.0, TDATA_NUM_BYTES 8, TDEST_WIDTH 0, TID_WIDTH 0, TUSER_WIDTH 1" *) input [63:0]SLOT_1_AXIS_tdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TKEEP" *) input [7:0]SLOT_1_AXIS_tkeep;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TLAST" *) input SLOT_1_AXIS_tlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TREADY" *) input SLOT_1_AXIS_tready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TUSER" *) input [0:0]SLOT_1_AXIS_tuser;
  (* X_INTERFACE_INFO = "xilinx.com:interface:axis:1.0 SLOT_1_AXIS TVALID" *) input SLOT_1_AXIS_tvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARADDR" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME SLOT_2_AXI, ADDR_WIDTH 32, ARUSER_WIDTH 0, AWUSER_WIDTH 0, BUSER_WIDTH 0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, DATA_WIDTH 64, FREQ_HZ 166666672, HAS_BRESP 0, HAS_BURST 1, HAS_CACHE 1, HAS_LOCK 1, HAS_PROT 1, HAS_QOS 1, HAS_REGION 0, HAS_RRESP 1, HAS_WSTRB 0, ID_WIDTH 0, INSERT_VIP 0, MAX_BURST_LENGTH 8, NUM_READ_OUTSTANDING 2, NUM_READ_THREADS 1, NUM_WRITE_OUTSTANDING 2, NUM_WRITE_THREADS 1, PHASE 0.0, PROTOCOL AXI3, READ_WRITE_MODE READ_ONLY, RUSER_BITS_PER_BYTE 0, RUSER_WIDTH 0, SUPPORTS_NARROW_BURST 0, WUSER_BITS_PER_BYTE 0, WUSER_WIDTH 0" *) input [31:0]SLOT_2_AXI_araddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARBURST" *) input [1:0]SLOT_2_AXI_arburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARCACHE" *) input [3:0]SLOT_2_AXI_arcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLEN" *) input [3:0]SLOT_2_AXI_arlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARLOCK" *) input [1:0]SLOT_2_AXI_arlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARPROT" *) input [2:0]SLOT_2_AXI_arprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARQOS" *) input [3:0]SLOT_2_AXI_arqos;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARREADY" *) input SLOT_2_AXI_arready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARSIZE" *) input [2:0]SLOT_2_AXI_arsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI ARVALID" *) input SLOT_2_AXI_arvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWADDR" *) input [31:0]SLOT_2_AXI_awaddr;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWBURST" *) input [1:0]SLOT_2_AXI_awburst;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWCACHE" *) input [3:0]SLOT_2_AXI_awcache;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLEN" *) input [3:0]SLOT_2_AXI_awlen;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWLOCK" *) input [1:0]SLOT_2_AXI_awlock;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWPROT" *) input [2:0]SLOT_2_AXI_awprot;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWREADY" *) input SLOT_2_AXI_awready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWSIZE" *) input [2:0]SLOT_2_AXI_awsize;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI AWVALID" *) input SLOT_2_AXI_awvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BREADY" *) input SLOT_2_AXI_bready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI BVALID" *) input SLOT_2_AXI_bvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RDATA" *) input [63:0]SLOT_2_AXI_rdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RLAST" *) input SLOT_2_AXI_rlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RREADY" *) input SLOT_2_AXI_rready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RRESP" *) input [1:0]SLOT_2_AXI_rresp;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI RVALID" *) input SLOT_2_AXI_rvalid;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WDATA" *) input [63:0]SLOT_2_AXI_wdata;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WLAST" *) input SLOT_2_AXI_wlast;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WREADY" *) input SLOT_2_AXI_wready;
  (* X_INTERFACE_INFO = "xilinx.com:interface:aximm:1.0 SLOT_2_AXI WVALID" *) input SLOT_2_AXI_wvalid;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.CLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.CLK, ASSOCIATED_BUSIF SLOT_0_AXI:SLOT_1_AXIS:SLOT_2_AXI, ASSOCIATED_RESET resetn, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, FREQ_HZ 166666672, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input clk;
  input [0:0]probe0;
  input [7:0]probe1;
  input [0:0]probe10;
  input [2:0]probe2;
  input [7:0]probe3;
  input [5:0]probe4;
  input [31:0]probe5;
  input [31:0]probe6;
  input [0:0]probe7;
  input [0:0]probe8;
  input [0:0]probe9;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESETN RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESETN, INSERT_VIP 0, POLARITY ACTIVE_LOW" *) input resetn;

  wire [63:0]Conn1_TDATA;
  wire [7:0]Conn1_TKEEP;
  wire Conn1_TLAST;
  wire Conn1_TREADY;
  wire [0:0]Conn1_TUSER;
  wire Conn1_TVALID;
  wire [31:0]Conn2_ARADDR;
  wire [1:0]Conn2_ARBURST;
  wire [3:0]Conn2_ARCACHE;
  wire [3:0]Conn2_ARLEN;
  wire [1:0]Conn2_ARLOCK;
  wire [2:0]Conn2_ARPROT;
  wire [3:0]Conn2_ARQOS;
  wire Conn2_ARREADY;
  wire [2:0]Conn2_ARSIZE;
  wire Conn2_ARVALID;
  wire [31:0]Conn2_AWADDR;
  wire [1:0]Conn2_AWBURST;
  wire [3:0]Conn2_AWCACHE;
  wire [3:0]Conn2_AWLEN;
  wire [1:0]Conn2_AWLOCK;
  wire [2:0]Conn2_AWPROT;
  wire Conn2_AWREADY;
  wire [2:0]Conn2_AWSIZE;
  wire Conn2_AWVALID;
  wire Conn2_BREADY;
  wire Conn2_BVALID;
  wire [63:0]Conn2_RDATA;
  wire Conn2_RLAST;
  wire Conn2_RREADY;
  wire [1:0]Conn2_RRESP;
  wire Conn2_RVALID;
  wire [63:0]Conn2_WDATA;
  wire Conn2_WLAST;
  wire Conn2_WREADY;
  wire Conn2_WVALID;
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
  wire [63:0]net_slot_1_axis_tdata;
  wire [7:0]net_slot_1_axis_tkeep;
  wire net_slot_1_axis_tlast;
  wire net_slot_1_axis_tready;
  wire [0:0]net_slot_1_axis_tuser;
  wire net_slot_1_axis_tvalid;
  wire [1:0]net_slot_2_axi_ar_cnt;
  wire [1:0]net_slot_2_axi_ar_ctrl;
  wire [31:0]net_slot_2_axi_araddr;
  wire [1:0]net_slot_2_axi_arburst;
  wire [3:0]net_slot_2_axi_arcache;
  wire [3:0]net_slot_2_axi_arlen;
  wire [1:0]net_slot_2_axi_arlock;
  wire [2:0]net_slot_2_axi_arprot;
  wire [3:0]net_slot_2_axi_arqos;
  wire net_slot_2_axi_arready;
  wire [2:0]net_slot_2_axi_arsize;
  wire net_slot_2_axi_arvalid;
  wire [1:0]net_slot_2_axi_aw_cnt;
  wire [1:0]net_slot_2_axi_aw_ctrl;
  wire net_slot_2_axi_awready;
  wire net_slot_2_axi_awvalid;
  wire [1:0]net_slot_2_axi_b_cnt;
  wire [1:0]net_slot_2_axi_b_ctrl;
  wire net_slot_2_axi_bready;
  wire net_slot_2_axi_bvalid;
  wire [1:0]net_slot_2_axi_r_cnt;
  wire [2:0]net_slot_2_axi_r_ctrl;
  wire [63:0]net_slot_2_axi_rdata;
  wire net_slot_2_axi_rlast;
  wire net_slot_2_axi_rready;
  wire [1:0]net_slot_2_axi_rresp;
  wire net_slot_2_axi_rvalid;
  wire [2:0]net_slot_2_axi_w_ctrl;
  wire net_slot_2_axi_wlast;
  wire net_slot_2_axi_wready;
  wire net_slot_2_axi_wvalid;
  wire [0:0]probe0_1;
  wire [0:0]probe10_1;
  wire [7:0]probe1_1;
  wire [2:0]probe2_1;
  wire [7:0]probe3_1;
  wire [5:0]probe4_1;
  wire [31:0]probe5_1;
  wire [31:0]probe6_1;
  wire [0:0]probe7_1;
  wire [0:0]probe8_1;
  wire [0:0]probe9_1;
  wire resetn_1;

  assign Conn1_TDATA = SLOT_1_AXIS_tdata[63:0];
  assign Conn1_TKEEP = SLOT_1_AXIS_tkeep[7:0];
  assign Conn1_TLAST = SLOT_1_AXIS_tlast;
  assign Conn1_TREADY = SLOT_1_AXIS_tready;
  assign Conn1_TUSER = SLOT_1_AXIS_tuser[0];
  assign Conn1_TVALID = SLOT_1_AXIS_tvalid;
  assign Conn2_ARADDR = SLOT_2_AXI_araddr[31:0];
  assign Conn2_ARBURST = SLOT_2_AXI_arburst[1:0];
  assign Conn2_ARCACHE = SLOT_2_AXI_arcache[3:0];
  assign Conn2_ARLEN = SLOT_2_AXI_arlen[3:0];
  assign Conn2_ARLOCK = SLOT_2_AXI_arlock[1:0];
  assign Conn2_ARPROT = SLOT_2_AXI_arprot[2:0];
  assign Conn2_ARQOS = SLOT_2_AXI_arqos[3:0];
  assign Conn2_ARREADY = SLOT_2_AXI_arready;
  assign Conn2_ARSIZE = SLOT_2_AXI_arsize[2:0];
  assign Conn2_ARVALID = SLOT_2_AXI_arvalid;
  assign Conn2_AWADDR = SLOT_2_AXI_awaddr[31:0];
  assign Conn2_AWBURST = SLOT_2_AXI_awburst[1:0];
  assign Conn2_AWCACHE = SLOT_2_AXI_awcache[3:0];
  assign Conn2_AWLEN = SLOT_2_AXI_awlen[3:0];
  assign Conn2_AWLOCK = SLOT_2_AXI_awlock[1:0];
  assign Conn2_AWPROT = SLOT_2_AXI_awprot[2:0];
  assign Conn2_AWREADY = SLOT_2_AXI_awready;
  assign Conn2_AWSIZE = SLOT_2_AXI_awsize[2:0];
  assign Conn2_AWVALID = SLOT_2_AXI_awvalid;
  assign Conn2_BREADY = SLOT_2_AXI_bready;
  assign Conn2_BVALID = SLOT_2_AXI_bvalid;
  assign Conn2_RDATA = SLOT_2_AXI_rdata[63:0];
  assign Conn2_RLAST = SLOT_2_AXI_rlast;
  assign Conn2_RREADY = SLOT_2_AXI_rready;
  assign Conn2_RRESP = SLOT_2_AXI_rresp[1:0];
  assign Conn2_RVALID = SLOT_2_AXI_rvalid;
  assign Conn2_WDATA = SLOT_2_AXI_wdata[63:0];
  assign Conn2_WLAST = SLOT_2_AXI_wlast;
  assign Conn2_WREADY = SLOT_2_AXI_wready;
  assign Conn2_WVALID = SLOT_2_AXI_wvalid;
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
  assign probe0_1 = probe0[0];
  assign probe10_1 = probe10[0];
  assign probe1_1 = probe1[7:0];
  assign probe2_1 = probe2[2:0];
  assign probe3_1 = probe3[7:0];
  assign probe4_1 = probe4[5:0];
  assign probe5_1 = probe5[31:0];
  assign probe6_1 = probe6[31:0];
  assign probe7_1 = probe7[0];
  assign probe8_1 = probe8[0];
  assign probe9_1 = probe9[0];
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
        .m_slot_1_axis_tdata(net_slot_1_axis_tdata),
        .m_slot_1_axis_tkeep(net_slot_1_axis_tkeep),
        .m_slot_1_axis_tlast(net_slot_1_axis_tlast),
        .m_slot_1_axis_tready(net_slot_1_axis_tready),
        .m_slot_1_axis_tuser(net_slot_1_axis_tuser),
        .m_slot_1_axis_tvalid(net_slot_1_axis_tvalid),
        .m_slot_2_axi_ar_cnt(net_slot_2_axi_ar_cnt),
        .m_slot_2_axi_araddr(net_slot_2_axi_araddr),
        .m_slot_2_axi_arburst(net_slot_2_axi_arburst),
        .m_slot_2_axi_arcache(net_slot_2_axi_arcache),
        .m_slot_2_axi_arlen(net_slot_2_axi_arlen),
        .m_slot_2_axi_arlock(net_slot_2_axi_arlock),
        .m_slot_2_axi_arprot(net_slot_2_axi_arprot),
        .m_slot_2_axi_arqos(net_slot_2_axi_arqos),
        .m_slot_2_axi_arready(net_slot_2_axi_arready),
        .m_slot_2_axi_arsize(net_slot_2_axi_arsize),
        .m_slot_2_axi_arvalid(net_slot_2_axi_arvalid),
        .m_slot_2_axi_aw_cnt(net_slot_2_axi_aw_cnt),
        .m_slot_2_axi_awready(net_slot_2_axi_awready),
        .m_slot_2_axi_awvalid(net_slot_2_axi_awvalid),
        .m_slot_2_axi_b_cnt(net_slot_2_axi_b_cnt),
        .m_slot_2_axi_bready(net_slot_2_axi_bready),
        .m_slot_2_axi_bvalid(net_slot_2_axi_bvalid),
        .m_slot_2_axi_r_cnt(net_slot_2_axi_r_cnt),
        .m_slot_2_axi_rdata(net_slot_2_axi_rdata),
        .m_slot_2_axi_rlast(net_slot_2_axi_rlast),
        .m_slot_2_axi_rready(net_slot_2_axi_rready),
        .m_slot_2_axi_rresp(net_slot_2_axi_rresp),
        .m_slot_2_axi_rvalid(net_slot_2_axi_rvalid),
        .m_slot_2_axi_wlast(net_slot_2_axi_wlast),
        .m_slot_2_axi_wready(net_slot_2_axi_wready),
        .m_slot_2_axi_wvalid(net_slot_2_axi_wvalid),
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
        .slot_1_axis_tdata(Conn1_TDATA),
        .slot_1_axis_tkeep(Conn1_TKEEP),
        .slot_1_axis_tlast(Conn1_TLAST),
        .slot_1_axis_tready(Conn1_TREADY),
        .slot_1_axis_tuser(Conn1_TUSER),
        .slot_1_axis_tvalid(Conn1_TVALID),
        .slot_2_axi_araddr(Conn2_ARADDR),
        .slot_2_axi_arburst(Conn2_ARBURST),
        .slot_2_axi_arcache(Conn2_ARCACHE),
        .slot_2_axi_arlen(Conn2_ARLEN),
        .slot_2_axi_arlock(Conn2_ARLOCK),
        .slot_2_axi_arprot(Conn2_ARPROT),
        .slot_2_axi_arqos(Conn2_ARQOS),
        .slot_2_axi_arready(Conn2_ARREADY),
        .slot_2_axi_arsize(Conn2_ARSIZE),
        .slot_2_axi_arvalid(Conn2_ARVALID),
        .slot_2_axi_awaddr(Conn2_AWADDR),
        .slot_2_axi_awburst(Conn2_AWBURST),
        .slot_2_axi_awcache(Conn2_AWCACHE),
        .slot_2_axi_awlen(Conn2_AWLEN),
        .slot_2_axi_awlock(Conn2_AWLOCK),
        .slot_2_axi_awprot(Conn2_AWPROT),
        .slot_2_axi_awready(Conn2_AWREADY),
        .slot_2_axi_awsize(Conn2_AWSIZE),
        .slot_2_axi_awvalid(Conn2_AWVALID),
        .slot_2_axi_bready(Conn2_BREADY),
        .slot_2_axi_bvalid(Conn2_BVALID),
        .slot_2_axi_rdata(Conn2_RDATA),
        .slot_2_axi_rlast(Conn2_RLAST),
        .slot_2_axi_rready(Conn2_RREADY),
        .slot_2_axi_rresp(Conn2_RRESP),
        .slot_2_axi_rvalid(Conn2_RVALID),
        .slot_2_axi_wdata(Conn2_WDATA),
        .slot_2_axi_wlast(Conn2_WLAST),
        .slot_2_axi_wready(Conn2_WREADY),
        .slot_2_axi_wvalid(Conn2_WVALID));
  bd_f60c_ila_lib_0 ila_lib
       (.clk(clk_1),
        .probe0(probe0_1),
        .probe1(probe1_1),
        .probe10(probe10_1),
        .probe11(net_slot_0_axi_ar_cnt),
        .probe12(net_slot_0_axi_araddr),
        .probe13(net_slot_0_axi_arburst),
        .probe14(net_slot_0_axi_arcache),
        .probe15(net_slot_0_axi_arid),
        .probe16(net_slot_0_axi_arlen),
        .probe17(net_slot_0_axi_arlock),
        .probe18(net_slot_0_axi_arprot),
        .probe19(net_slot_0_axi_arqos),
        .probe2(probe2_1),
        .probe20(net_slot_0_axi_arsize),
        .probe21(net_slot_0_axi_aw_cnt),
        .probe22(net_slot_0_axi_awaddr),
        .probe23(net_slot_0_axi_awburst),
        .probe24(net_slot_0_axi_awcache),
        .probe25(net_slot_0_axi_awid),
        .probe26(net_slot_0_axi_awlen),
        .probe27(net_slot_0_axi_awlock),
        .probe28(net_slot_0_axi_awprot),
        .probe29(net_slot_0_axi_awqos),
        .probe3(probe3_1),
        .probe30(net_slot_0_axi_awsize),
        .probe31(net_slot_0_axi_b_cnt),
        .probe32(net_slot_0_axi_bid),
        .probe33(net_slot_0_axi_bresp),
        .probe34(net_slot_0_axi_r_cnt),
        .probe35(net_slot_0_axi_rdata),
        .probe36(net_slot_0_axi_rid),
        .probe37(net_slot_0_axi_rresp),
        .probe38(net_slot_0_axi_wdata),
        .probe39(net_slot_0_axi_wid),
        .probe4(probe4_1),
        .probe40(net_slot_0_axi_wstrb),
        .probe41(net_slot_0_axi_aw_ctrl),
        .probe42(net_slot_0_axi_w_ctrl),
        .probe43(net_slot_0_axi_b_ctrl),
        .probe44(net_slot_0_axi_ar_ctrl),
        .probe45(net_slot_0_axi_r_ctrl),
        .probe46(net_slot_1_axis_tdata),
        .probe47(net_slot_1_axis_tkeep),
        .probe48(net_slot_1_axis_tuser),
        .probe49(net_slot_1_axis_tvalid),
        .probe5(probe5_1),
        .probe50(net_slot_1_axis_tready),
        .probe51(net_slot_1_axis_tlast),
        .probe52(net_slot_2_axi_ar_cnt),
        .probe53(net_slot_2_axi_araddr),
        .probe54(net_slot_2_axi_arburst),
        .probe55(net_slot_2_axi_arcache),
        .probe56(net_slot_2_axi_arlen),
        .probe57(net_slot_2_axi_arlock),
        .probe58(net_slot_2_axi_arprot),
        .probe59(net_slot_2_axi_arqos),
        .probe6(probe6_1),
        .probe60(net_slot_2_axi_arsize),
        .probe61(net_slot_2_axi_aw_cnt),
        .probe62(net_slot_2_axi_b_cnt),
        .probe63(net_slot_2_axi_r_cnt),
        .probe64(net_slot_2_axi_rdata),
        .probe65(net_slot_2_axi_rresp),
        .probe66(net_slot_2_axi_aw_ctrl),
        .probe67(net_slot_2_axi_w_ctrl),
        .probe68(net_slot_2_axi_b_ctrl),
        .probe69(net_slot_2_axi_ar_ctrl),
        .probe7(probe7_1),
        .probe70(net_slot_2_axi_r_ctrl),
        .probe8(probe8_1),
        .probe9(probe9_1));
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
endmodule

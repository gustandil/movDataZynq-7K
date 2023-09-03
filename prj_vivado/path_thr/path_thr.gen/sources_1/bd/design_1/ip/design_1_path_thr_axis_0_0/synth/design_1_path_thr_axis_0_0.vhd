-- (c) Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- (c) Copyright 2022-2023 Advanced Micro Devices, Inc. All rights reserved.
-- 
-- This file contains confidential and proprietary information
-- of AMD and is protected under U.S. and international copyright
-- and other intellectual property laws.
-- 
-- DISCLAIMER
-- This disclaimer is not a license and does not grant any
-- rights to the materials distributed herewith. Except as
-- otherwise provided in a valid license issued to you by
-- AMD, and to the maximum extent permitted by applicable
-- law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
-- WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
-- AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
-- BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
-- INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
-- (2) AMD shall not be liable (whether in contract or tort,
-- including negligence, or under any other theory of
-- liability) for any loss or damage of any kind or nature
-- related to, arising under or in connection with these
-- materials, including for any direct, or any indirect,
-- special, incidental, or consequential loss or damage
-- (including loss of data, profits, goodwill, or any type of
-- loss or damage suffered as a result of any action brought
-- by a third party) even if such damage or loss was
-- reasonably foreseeable or AMD had been advised of the
-- possibility of the same.
-- 
-- CRITICAL APPLICATIONS
-- AMD products are not designed or intended to be fail-
-- safe, or for use in any application requiring fail-safe
-- performance, such as life-support or safety devices or
-- systems, Class III medical devices, nuclear facilities,
-- applications related to the deployment of airbags, or any
-- other applications that could lead to death, personal
-- injury, or severe property or environmental damage
-- (individually and collectively, "Critical
-- Applications"). Customer assumes the sole risk and
-- liability of any use of AMD products in Critical
-- Applications, subject only to applicable laws and
-- regulations governing limitations on product liability.
-- 
-- THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
-- PART OF THIS FILE AT ALL TIMES.
-- 
-- DO NOT MODIFY THIS FILE.

-- IP VLNV: xilinx.com:hls:path_thr_axis:1.0
-- IP Revision: 2113185562

LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
USE ieee.numeric_std.ALL;

ENTITY design_1_path_thr_axis_0_0 IS
  PORT (
    s_axi_Axi_lite_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_Axi_lite_AWVALID : IN STD_LOGIC;
    s_axi_Axi_lite_AWREADY : OUT STD_LOGIC;
    s_axi_Axi_lite_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_Axi_lite_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
    s_axi_Axi_lite_WVALID : IN STD_LOGIC;
    s_axi_Axi_lite_WREADY : OUT STD_LOGIC;
    s_axi_Axi_lite_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_Axi_lite_BVALID : OUT STD_LOGIC;
    s_axi_Axi_lite_BREADY : IN STD_LOGIC;
    s_axi_Axi_lite_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
    s_axi_Axi_lite_ARVALID : IN STD_LOGIC;
    s_axi_Axi_lite_ARREADY : OUT STD_LOGIC;
    s_axi_Axi_lite_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    s_axi_Axi_lite_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
    s_axi_Axi_lite_RVALID : OUT STD_LOGIC;
    s_axi_Axi_lite_RREADY : IN STD_LOGIC;
    ap_clk : IN STD_LOGIC;
    ap_rst_n : IN STD_LOGIC;
    strm_in_TVALID : IN STD_LOGIC;
    strm_in_TREADY : OUT STD_LOGIC;
    strm_in_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
    strm_in_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    strm_in_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    strm_in_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
    strm_in_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    strm_in_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    strm_in_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
    strm_out_TVALID : OUT STD_LOGIC;
    strm_out_TREADY : IN STD_LOGIC;
    strm_out_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
    strm_out_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    strm_out_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    strm_out_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
    strm_out_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    strm_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
    strm_out_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
  );
END design_1_path_thr_axis_0_0;

ARCHITECTURE design_1_path_thr_axis_0_0_arch OF design_1_path_thr_axis_0_0 IS
  ATTRIBUTE DowngradeIPIdentifiedWarnings : STRING;
  ATTRIBUTE DowngradeIPIdentifiedWarnings OF design_1_path_thr_axis_0_0_arch: ARCHITECTURE IS "yes";
  COMPONENT path_thr_axis IS
    GENERIC (
      C_S_AXI_AXI_LITE_ADDR_WIDTH : INTEGER;
      C_S_AXI_AXI_LITE_DATA_WIDTH : INTEGER
    );
    PORT (
      s_axi_Axi_lite_AWADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_Axi_lite_AWVALID : IN STD_LOGIC;
      s_axi_Axi_lite_AWREADY : OUT STD_LOGIC;
      s_axi_Axi_lite_WDATA : IN STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_Axi_lite_WSTRB : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
      s_axi_Axi_lite_WVALID : IN STD_LOGIC;
      s_axi_Axi_lite_WREADY : OUT STD_LOGIC;
      s_axi_Axi_lite_BRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_Axi_lite_BVALID : OUT STD_LOGIC;
      s_axi_Axi_lite_BREADY : IN STD_LOGIC;
      s_axi_Axi_lite_ARADDR : IN STD_LOGIC_VECTOR(4 DOWNTO 0);
      s_axi_Axi_lite_ARVALID : IN STD_LOGIC;
      s_axi_Axi_lite_ARREADY : OUT STD_LOGIC;
      s_axi_Axi_lite_RDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      s_axi_Axi_lite_RRESP : OUT STD_LOGIC_VECTOR(1 DOWNTO 0);
      s_axi_Axi_lite_RVALID : OUT STD_LOGIC;
      s_axi_Axi_lite_RREADY : IN STD_LOGIC;
      ap_clk : IN STD_LOGIC;
      ap_rst_n : IN STD_LOGIC;
      strm_in_TVALID : IN STD_LOGIC;
      strm_in_TREADY : OUT STD_LOGIC;
      strm_in_TDATA : IN STD_LOGIC_VECTOR(63 DOWNTO 0);
      strm_in_TDEST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      strm_in_TKEEP : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      strm_in_TSTRB : IN STD_LOGIC_VECTOR(7 DOWNTO 0);
      strm_in_TUSER : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      strm_in_TLAST : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      strm_in_TID : IN STD_LOGIC_VECTOR(0 DOWNTO 0);
      strm_out_TVALID : OUT STD_LOGIC;
      strm_out_TREADY : IN STD_LOGIC;
      strm_out_TDATA : OUT STD_LOGIC_VECTOR(31 DOWNTO 0);
      strm_out_TDEST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      strm_out_TKEEP : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      strm_out_TSTRB : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
      strm_out_TUSER : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      strm_out_TLAST : OUT STD_LOGIC_VECTOR(0 DOWNTO 0);
      strm_out_TID : OUT STD_LOGIC_VECTOR(0 DOWNTO 0)
    );
  END COMPONENT path_thr_axis;
  ATTRIBUTE X_CORE_INFO : STRING;
  ATTRIBUTE X_CORE_INFO OF design_1_path_thr_axis_0_0_arch: ARCHITECTURE IS "path_thr_axis,Vivado 2023.1";
  ATTRIBUTE CHECK_LICENSE_TYPE : STRING;
  ATTRIBUTE CHECK_LICENSE_TYPE OF design_1_path_thr_axis_0_0_arch : ARCHITECTURE IS "design_1_path_thr_axis_0_0,path_thr_axis,{}";
  ATTRIBUTE CORE_GENERATION_INFO : STRING;
  ATTRIBUTE CORE_GENERATION_INFO OF design_1_path_thr_axis_0_0_arch: ARCHITECTURE IS "design_1_path_thr_axis_0_0,path_thr_axis,{x_ipProduct=Vivado 2023.1,x_ipVendor=xilinx.com,x_ipLibrary=hls,x_ipName=path_thr_axis,x_ipVersion=1.0,x_ipCoreRevision=2113185562,x_ipLanguage=VHDL,x_ipSimLanguage=MIXED,C_S_AXI_AXI_LITE_ADDR_WIDTH=5,C_S_AXI_AXI_LITE_DATA_WIDTH=32}";
  ATTRIBUTE SDX_KERNEL : STRING;
  ATTRIBUTE SDX_KERNEL OF path_thr_axis: COMPONENT IS "true";
  ATTRIBUTE SDX_KERNEL_TYPE : STRING;
  ATTRIBUTE SDX_KERNEL_TYPE OF path_thr_axis: COMPONENT IS "hls";
  ATTRIBUTE SDX_KERNEL_SYNTH_INST : STRING;
  ATTRIBUTE SDX_KERNEL_SYNTH_INST OF path_thr_axis: COMPONENT IS "U0";
  ATTRIBUTE IP_DEFINITION_SOURCE : STRING;
  ATTRIBUTE IP_DEFINITION_SOURCE OF design_1_path_thr_axis_0_0_arch: ARCHITECTURE IS "HLS";
  ATTRIBUTE X_INTERFACE_INFO : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER : STRING;
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_clk: SIGNAL IS "XIL_INTERFACENAME ap_clk, ASSOCIATED_BUSIF s_axi_Axi_lite:strm_in:strm_out, ASSOCIATED_RESET ap_rst_n, FREQ_HZ 100000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_clk: SIGNAL IS "xilinx.com:signal:clock:1.0 ap_clk CLK";
  ATTRIBUTE X_INTERFACE_PARAMETER OF ap_rst_n: SIGNAL IS "XIL_INTERFACENAME ap_rst_n, POLARITY ACTIVE_LOW, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF ap_rst_n: SIGNAL IS "xilinx.com:signal:reset:1.0 ap_rst_n RST";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_ARADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite ARADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_ARREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite ARREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_ARVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite ARVALID";
  ATTRIBUTE X_INTERFACE_PARAMETER OF s_axi_Axi_lite_AWADDR: SIGNAL IS "XIL_INTERFACENAME s_axi_Axi_lite, ADDR_WIDTH 5, DATA_WIDTH 32, PROTOCOL AXI4LITE, READ_WRITE_MODE READ_WRITE, FREQ_HZ 100000000, ID_WIDTH 0, AWUSER_WIDTH 0, ARUSER_WIDTH 0, WUSER_WIDTH 0, RUSER_WIDTH 0, BUSER_WIDTH 0, HAS_BURST 0, HAS_LOCK 0, HAS_PROT 0, HAS_CACHE 0, HAS_QOS 0, HAS_REGION 0, HAS_WSTRB 1, HAS_BRESP 1, HAS_RRESP 1, SUPPORTS_NARROW_BURST 0, NUM_READ_OUTSTANDING 8, NUM_WRITE_OUTSTANDING 8, MAX_BURST_LENGTH 1, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, NUM_READ_" & 
"THREADS 1, NUM_WRITE_THREADS 1, RUSER_BITS_PER_BYTE 0, WUSER_BITS_PER_BYTE 0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_AWADDR: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite AWADDR";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_AWREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite AWREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_AWVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite AWVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_BREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite BREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_BRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite BRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_BVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite BVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_RDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite RDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_RREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite RREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_RRESP: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite RRESP";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_RVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite RVALID";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_WDATA: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite WDATA";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_WREADY: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite WREADY";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_WSTRB: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite WSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF s_axi_Axi_lite_WVALID: SIGNAL IS "xilinx.com:interface:aximm:1.0 s_axi_Axi_lite WVALID";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TID";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TUSER";
  ATTRIBUTE X_INTERFACE_PARAMETER OF strm_in_TVALID: SIGNAL IS "XIL_INTERFACENAME strm_in, TDATA_NUM_BYTES 8, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA undef, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF strm_in_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_in TVALID";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TDATA: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TDATA";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TDEST: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TDEST";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TID: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TID";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TKEEP: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TKEEP";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TLAST: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TLAST";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TREADY: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TREADY";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TSTRB: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TSTRB";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TUSER: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TUSER";
  ATTRIBUTE X_INTERFACE_PARAMETER OF strm_out_TVALID: SIGNAL IS "XIL_INTERFACENAME strm_out, TDATA_NUM_BYTES 4, TDEST_WIDTH 1, TID_WIDTH 1, TUSER_WIDTH 1, LAYERED_METADATA xilinx.com:interface:datatypes:1.0 {TDATA {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 32} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type " & 
"immediate dependency {} format bool minimum {} maximum {}} value false}}}} TDATA_WIDTH 32 TUSER {datatype {name {attribs {resolve_type immediate dependency {} format string minimum {} maximum {}} value {}} bitwidth {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 1} bitoffset {attribs {resolve_type immediate dependency {} format long minimum {} maximum {}} value 0} integer {signed {attribs {resolve_type immediate dependency {} format bool minimum {} maximum" & 
" {}} value false}}}} TUSER_WIDTH 1}, HAS_TREADY 1, HAS_TSTRB 1, HAS_TKEEP 1, HAS_TLAST 1, FREQ_HZ 100000000, PHASE 0.0, CLK_DOMAIN design_1_processing_system7_0_0_FCLK_CLK0, INSERT_VIP 0";
  ATTRIBUTE X_INTERFACE_INFO OF strm_out_TVALID: SIGNAL IS "xilinx.com:interface:axis:1.0 strm_out TVALID";
BEGIN
  U0 : path_thr_axis
    GENERIC MAP (
      C_S_AXI_AXI_LITE_ADDR_WIDTH => 5,
      C_S_AXI_AXI_LITE_DATA_WIDTH => 32
    )
    PORT MAP (
      s_axi_Axi_lite_AWADDR => s_axi_Axi_lite_AWADDR,
      s_axi_Axi_lite_AWVALID => s_axi_Axi_lite_AWVALID,
      s_axi_Axi_lite_AWREADY => s_axi_Axi_lite_AWREADY,
      s_axi_Axi_lite_WDATA => s_axi_Axi_lite_WDATA,
      s_axi_Axi_lite_WSTRB => s_axi_Axi_lite_WSTRB,
      s_axi_Axi_lite_WVALID => s_axi_Axi_lite_WVALID,
      s_axi_Axi_lite_WREADY => s_axi_Axi_lite_WREADY,
      s_axi_Axi_lite_BRESP => s_axi_Axi_lite_BRESP,
      s_axi_Axi_lite_BVALID => s_axi_Axi_lite_BVALID,
      s_axi_Axi_lite_BREADY => s_axi_Axi_lite_BREADY,
      s_axi_Axi_lite_ARADDR => s_axi_Axi_lite_ARADDR,
      s_axi_Axi_lite_ARVALID => s_axi_Axi_lite_ARVALID,
      s_axi_Axi_lite_ARREADY => s_axi_Axi_lite_ARREADY,
      s_axi_Axi_lite_RDATA => s_axi_Axi_lite_RDATA,
      s_axi_Axi_lite_RRESP => s_axi_Axi_lite_RRESP,
      s_axi_Axi_lite_RVALID => s_axi_Axi_lite_RVALID,
      s_axi_Axi_lite_RREADY => s_axi_Axi_lite_RREADY,
      ap_clk => ap_clk,
      ap_rst_n => ap_rst_n,
      strm_in_TVALID => strm_in_TVALID,
      strm_in_TREADY => strm_in_TREADY,
      strm_in_TDATA => strm_in_TDATA,
      strm_in_TDEST => strm_in_TDEST,
      strm_in_TKEEP => strm_in_TKEEP,
      strm_in_TSTRB => strm_in_TSTRB,
      strm_in_TUSER => strm_in_TUSER,
      strm_in_TLAST => strm_in_TLAST,
      strm_in_TID => strm_in_TID,
      strm_out_TVALID => strm_out_TVALID,
      strm_out_TREADY => strm_out_TREADY,
      strm_out_TDATA => strm_out_TDATA,
      strm_out_TDEST => strm_out_TDEST,
      strm_out_TKEEP => strm_out_TKEEP,
      strm_out_TSTRB => strm_out_TSTRB,
      strm_out_TUSER => strm_out_TUSER,
      strm_out_TLAST => strm_out_TLAST,
      strm_out_TID => strm_out_TID
    );
END design_1_path_thr_axis_0_0_arch;

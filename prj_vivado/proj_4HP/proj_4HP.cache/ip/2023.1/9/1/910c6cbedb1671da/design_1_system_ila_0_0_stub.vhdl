-- Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
-- Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2023.1 (win64) Build 3865809 Sun May  7 15:05:29 MDT 2023
-- Date        : Sat Sep  2 17:30:56 2023
-- Host        : Fryg-X1 running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ design_1_system_ila_0_0_stub.vhdl
-- Design      : design_1_system_ila_0_0
-- Purpose     : Stub declaration of top-level module interface
-- Device      : xc7z020clg400-1
-- --------------------------------------------------------------------------------
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  Port ( 
    clk : in STD_LOGIC;
    probe0 : in STD_LOGIC_VECTOR ( 3 downto 0 );
    probe1 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe2 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe3 : in STD_LOGIC_VECTOR ( 0 to 0 );
    probe4 : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_0_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_0_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_awvalid : in STD_LOGIC;
    SLOT_0_AXI_awready : in STD_LOGIC;
    SLOT_0_AXI_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_0_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_wlast : in STD_LOGIC;
    SLOT_0_AXI_wvalid : in STD_LOGIC;
    SLOT_0_AXI_wready : in STD_LOGIC;
    SLOT_0_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_0_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_bvalid : in STD_LOGIC;
    SLOT_0_AXI_bready : in STD_LOGIC;
    SLOT_0_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_0_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_0_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_0_AXI_arvalid : in STD_LOGIC;
    SLOT_0_AXI_arready : in STD_LOGIC;
    SLOT_0_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_0_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_0_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_0_AXI_rlast : in STD_LOGIC;
    SLOT_0_AXI_rvalid : in STD_LOGIC;
    SLOT_0_AXI_rready : in STD_LOGIC;
    SLOT_1_AXI_awid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_1_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_awregion : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_awvalid : in STD_LOGIC;
    SLOT_1_AXI_awready : in STD_LOGIC;
    SLOT_1_AXI_wid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_1_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_wlast : in STD_LOGIC;
    SLOT_1_AXI_wvalid : in STD_LOGIC;
    SLOT_1_AXI_wready : in STD_LOGIC;
    SLOT_1_AXI_bid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_1_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_bvalid : in STD_LOGIC;
    SLOT_1_AXI_bready : in STD_LOGIC;
    SLOT_1_AXI_arid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_1_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_1_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_1_AXI_arvalid : in STD_LOGIC;
    SLOT_1_AXI_arready : in STD_LOGIC;
    SLOT_1_AXI_rid : in STD_LOGIC_VECTOR ( 5 downto 0 );
    SLOT_1_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_1_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_1_AXI_rlast : in STD_LOGIC;
    SLOT_1_AXI_rvalid : in STD_LOGIC;
    SLOT_1_AXI_rready : in STD_LOGIC;
    SLOT_2_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_awvalid : in STD_LOGIC;
    SLOT_2_AXI_awready : in STD_LOGIC;
    SLOT_2_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_2_AXI_wlast : in STD_LOGIC;
    SLOT_2_AXI_wvalid : in STD_LOGIC;
    SLOT_2_AXI_wready : in STD_LOGIC;
    SLOT_2_AXI_bvalid : in STD_LOGIC;
    SLOT_2_AXI_bready : in STD_LOGIC;
    SLOT_2_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_2_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_2_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_2_AXI_arvalid : in STD_LOGIC;
    SLOT_2_AXI_arready : in STD_LOGIC;
    SLOT_2_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_2_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_2_AXI_rlast : in STD_LOGIC;
    SLOT_2_AXI_rvalid : in STD_LOGIC;
    SLOT_2_AXI_rready : in STD_LOGIC;
    SLOT_3_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_3_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_3_AXIS_tlast : in STD_LOGIC;
    SLOT_3_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_3_AXIS_tvalid : in STD_LOGIC;
    SLOT_3_AXIS_tready : in STD_LOGIC;
    SLOT_4_AXIS_tdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_4_AXIS_tkeep : in STD_LOGIC_VECTOR ( 7 downto 0 );
    SLOT_4_AXIS_tlast : in STD_LOGIC;
    SLOT_4_AXIS_tuser : in STD_LOGIC_VECTOR ( 0 to 0 );
    SLOT_4_AXIS_tvalid : in STD_LOGIC;
    SLOT_4_AXIS_tready : in STD_LOGIC;
    SLOT_5_AXI_awid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_5_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_awqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_awvalid : in STD_LOGIC;
    SLOT_5_AXI_awready : in STD_LOGIC;
    SLOT_5_AXI_wid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_5_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_wstrb : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_wlast : in STD_LOGIC;
    SLOT_5_AXI_wvalid : in STD_LOGIC;
    SLOT_5_AXI_wready : in STD_LOGIC;
    SLOT_5_AXI_bid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_5_AXI_bresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_bvalid : in STD_LOGIC;
    SLOT_5_AXI_bready : in STD_LOGIC;
    SLOT_5_AXI_arid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_5_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_5_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_5_AXI_arvalid : in STD_LOGIC;
    SLOT_5_AXI_arready : in STD_LOGIC;
    SLOT_5_AXI_rid : in STD_LOGIC_VECTOR ( 11 downto 0 );
    SLOT_5_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_5_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_5_AXI_rlast : in STD_LOGIC;
    SLOT_5_AXI_rvalid : in STD_LOGIC;
    SLOT_5_AXI_rready : in STD_LOGIC;
    SLOT_6_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_awvalid : in STD_LOGIC;
    SLOT_6_AXI_awready : in STD_LOGIC;
    SLOT_6_AXI_wdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_6_AXI_wlast : in STD_LOGIC;
    SLOT_6_AXI_wvalid : in STD_LOGIC;
    SLOT_6_AXI_wready : in STD_LOGIC;
    SLOT_6_AXI_bvalid : in STD_LOGIC;
    SLOT_6_AXI_bready : in STD_LOGIC;
    SLOT_6_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_6_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_6_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_6_AXI_arvalid : in STD_LOGIC;
    SLOT_6_AXI_arready : in STD_LOGIC;
    SLOT_6_AXI_rdata : in STD_LOGIC_VECTOR ( 63 downto 0 );
    SLOT_6_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_6_AXI_rlast : in STD_LOGIC;
    SLOT_6_AXI_rvalid : in STD_LOGIC;
    SLOT_6_AXI_rready : in STD_LOGIC;
    SLOT_7_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_awvalid : in STD_LOGIC;
    SLOT_7_AXI_awready : in STD_LOGIC;
    SLOT_7_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_wlast : in STD_LOGIC;
    SLOT_7_AXI_wvalid : in STD_LOGIC;
    SLOT_7_AXI_wready : in STD_LOGIC;
    SLOT_7_AXI_bvalid : in STD_LOGIC;
    SLOT_7_AXI_bready : in STD_LOGIC;
    SLOT_7_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_arcache : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_7_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_7_AXI_arvalid : in STD_LOGIC;
    SLOT_7_AXI_arready : in STD_LOGIC;
    SLOT_7_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_7_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_7_AXI_rlast : in STD_LOGIC;
    SLOT_7_AXI_rvalid : in STD_LOGIC;
    SLOT_7_AXI_rready : in STD_LOGIC;
    SLOT_8_AXI_awaddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_awlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_awsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_awburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_awlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_awcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_awprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_awvalid : in STD_LOGIC;
    SLOT_8_AXI_awready : in STD_LOGIC;
    SLOT_8_AXI_wdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_wlast : in STD_LOGIC;
    SLOT_8_AXI_wvalid : in STD_LOGIC;
    SLOT_8_AXI_wready : in STD_LOGIC;
    SLOT_8_AXI_bvalid : in STD_LOGIC;
    SLOT_8_AXI_bready : in STD_LOGIC;
    SLOT_8_AXI_araddr : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_arlen : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_arsize : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_arburst : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_arlock : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_arcache : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_arprot : in STD_LOGIC_VECTOR ( 2 downto 0 );
    SLOT_8_AXI_arqos : in STD_LOGIC_VECTOR ( 3 downto 0 );
    SLOT_8_AXI_arvalid : in STD_LOGIC;
    SLOT_8_AXI_arready : in STD_LOGIC;
    SLOT_8_AXI_rdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_8_AXI_rresp : in STD_LOGIC_VECTOR ( 1 downto 0 );
    SLOT_8_AXI_rlast : in STD_LOGIC;
    SLOT_8_AXI_rvalid : in STD_LOGIC;
    SLOT_8_AXI_rready : in STD_LOGIC;
    SLOT_9_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_9_AXIS_tlast : in STD_LOGIC;
    SLOT_9_AXIS_tvalid : in STD_LOGIC;
    SLOT_9_AXIS_tready : in STD_LOGIC;
    SLOT_10_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_10_AXIS_tlast : in STD_LOGIC;
    SLOT_10_AXIS_tvalid : in STD_LOGIC;
    SLOT_10_AXIS_tready : in STD_LOGIC;
    SLOT_11_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_11_AXIS_tlast : in STD_LOGIC;
    SLOT_11_AXIS_tvalid : in STD_LOGIC;
    SLOT_11_AXIS_tready : in STD_LOGIC;
    SLOT_12_AXIS_tdata : in STD_LOGIC_VECTOR ( 31 downto 0 );
    SLOT_12_AXIS_tlast : in STD_LOGIC;
    SLOT_12_AXIS_tvalid : in STD_LOGIC;
    SLOT_12_AXIS_tready : in STD_LOGIC;
    resetn : in STD_LOGIC
  );

end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture stub of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
attribute syn_black_box : boolean;
attribute black_box_pad_pin : string;
attribute syn_black_box of stub : architecture is true;
attribute black_box_pad_pin of stub : architecture is "clk,probe0[3:0],probe1[0:0],probe2[0:0],probe3[0:0],probe4[0:0],SLOT_0_AXI_awid[5:0],SLOT_0_AXI_awaddr[31:0],SLOT_0_AXI_awlen[3:0],SLOT_0_AXI_awsize[2:0],SLOT_0_AXI_awburst[1:0],SLOT_0_AXI_awlock[1:0],SLOT_0_AXI_awcache[3:0],SLOT_0_AXI_awprot[2:0],SLOT_0_AXI_awqos[3:0],SLOT_0_AXI_awvalid,SLOT_0_AXI_awready,SLOT_0_AXI_wid[5:0],SLOT_0_AXI_wdata[31:0],SLOT_0_AXI_wstrb[3:0],SLOT_0_AXI_wlast,SLOT_0_AXI_wvalid,SLOT_0_AXI_wready,SLOT_0_AXI_bid[5:0],SLOT_0_AXI_bresp[1:0],SLOT_0_AXI_bvalid,SLOT_0_AXI_bready,SLOT_0_AXI_arid[5:0],SLOT_0_AXI_araddr[31:0],SLOT_0_AXI_arlen[3:0],SLOT_0_AXI_arsize[2:0],SLOT_0_AXI_arburst[1:0],SLOT_0_AXI_arlock[1:0],SLOT_0_AXI_arcache[3:0],SLOT_0_AXI_arprot[2:0],SLOT_0_AXI_arqos[3:0],SLOT_0_AXI_arvalid,SLOT_0_AXI_arready,SLOT_0_AXI_rid[5:0],SLOT_0_AXI_rdata[31:0],SLOT_0_AXI_rresp[1:0],SLOT_0_AXI_rlast,SLOT_0_AXI_rvalid,SLOT_0_AXI_rready,SLOT_1_AXI_awid[5:0],SLOT_1_AXI_awaddr[31:0],SLOT_1_AXI_awlen[3:0],SLOT_1_AXI_awsize[2:0],SLOT_1_AXI_awburst[1:0],SLOT_1_AXI_awlock[1:0],SLOT_1_AXI_awcache[3:0],SLOT_1_AXI_awprot[2:0],SLOT_1_AXI_awregion[3:0],SLOT_1_AXI_awqos[3:0],SLOT_1_AXI_awvalid,SLOT_1_AXI_awready,SLOT_1_AXI_wid[5:0],SLOT_1_AXI_wdata[31:0],SLOT_1_AXI_wstrb[3:0],SLOT_1_AXI_wlast,SLOT_1_AXI_wvalid,SLOT_1_AXI_wready,SLOT_1_AXI_bid[5:0],SLOT_1_AXI_bresp[1:0],SLOT_1_AXI_bvalid,SLOT_1_AXI_bready,SLOT_1_AXI_arid[5:0],SLOT_1_AXI_araddr[31:0],SLOT_1_AXI_arlen[3:0],SLOT_1_AXI_arsize[2:0],SLOT_1_AXI_arburst[1:0],SLOT_1_AXI_arlock[1:0],SLOT_1_AXI_arcache[3:0],SLOT_1_AXI_arprot[2:0],SLOT_1_AXI_arqos[3:0],SLOT_1_AXI_arvalid,SLOT_1_AXI_arready,SLOT_1_AXI_rid[5:0],SLOT_1_AXI_rdata[31:0],SLOT_1_AXI_rresp[1:0],SLOT_1_AXI_rlast,SLOT_1_AXI_rvalid,SLOT_1_AXI_rready,SLOT_2_AXI_awaddr[31:0],SLOT_2_AXI_awlen[3:0],SLOT_2_AXI_awsize[2:0],SLOT_2_AXI_awburst[1:0],SLOT_2_AXI_awlock[1:0],SLOT_2_AXI_awcache[3:0],SLOT_2_AXI_awprot[2:0],SLOT_2_AXI_awvalid,SLOT_2_AXI_awready,SLOT_2_AXI_wdata[63:0],SLOT_2_AXI_wlast,SLOT_2_AXI_wvalid,SLOT_2_AXI_wready,SLOT_2_AXI_bvalid,SLOT_2_AXI_bready,SLOT_2_AXI_araddr[31:0],SLOT_2_AXI_arlen[3:0],SLOT_2_AXI_arsize[2:0],SLOT_2_AXI_arburst[1:0],SLOT_2_AXI_arlock[1:0],SLOT_2_AXI_arcache[3:0],SLOT_2_AXI_arprot[2:0],SLOT_2_AXI_arqos[3:0],SLOT_2_AXI_arvalid,SLOT_2_AXI_arready,SLOT_2_AXI_rdata[63:0],SLOT_2_AXI_rresp[1:0],SLOT_2_AXI_rlast,SLOT_2_AXI_rvalid,SLOT_2_AXI_rready,SLOT_3_AXIS_tdata[63:0],SLOT_3_AXIS_tkeep[7:0],SLOT_3_AXIS_tlast,SLOT_3_AXIS_tuser[0:0],SLOT_3_AXIS_tvalid,SLOT_3_AXIS_tready,SLOT_4_AXIS_tdata[63:0],SLOT_4_AXIS_tkeep[7:0],SLOT_4_AXIS_tlast,SLOT_4_AXIS_tuser[0:0],SLOT_4_AXIS_tvalid,SLOT_4_AXIS_tready,SLOT_5_AXI_awid[11:0],SLOT_5_AXI_awaddr[31:0],SLOT_5_AXI_awlen[3:0],SLOT_5_AXI_awsize[2:0],SLOT_5_AXI_awburst[1:0],SLOT_5_AXI_awlock[1:0],SLOT_5_AXI_awcache[3:0],SLOT_5_AXI_awprot[2:0],SLOT_5_AXI_awqos[3:0],SLOT_5_AXI_awvalid,SLOT_5_AXI_awready,SLOT_5_AXI_wid[11:0],SLOT_5_AXI_wdata[31:0],SLOT_5_AXI_wstrb[3:0],SLOT_5_AXI_wlast,SLOT_5_AXI_wvalid,SLOT_5_AXI_wready,SLOT_5_AXI_bid[11:0],SLOT_5_AXI_bresp[1:0],SLOT_5_AXI_bvalid,SLOT_5_AXI_bready,SLOT_5_AXI_arid[11:0],SLOT_5_AXI_araddr[31:0],SLOT_5_AXI_arlen[3:0],SLOT_5_AXI_arsize[2:0],SLOT_5_AXI_arburst[1:0],SLOT_5_AXI_arlock[1:0],SLOT_5_AXI_arcache[3:0],SLOT_5_AXI_arprot[2:0],SLOT_5_AXI_arqos[3:0],SLOT_5_AXI_arvalid,SLOT_5_AXI_arready,SLOT_5_AXI_rid[11:0],SLOT_5_AXI_rdata[31:0],SLOT_5_AXI_rresp[1:0],SLOT_5_AXI_rlast,SLOT_5_AXI_rvalid,SLOT_5_AXI_rready,SLOT_6_AXI_awaddr[31:0],SLOT_6_AXI_awlen[3:0],SLOT_6_AXI_awsize[2:0],SLOT_6_AXI_awburst[1:0],SLOT_6_AXI_awlock[1:0],SLOT_6_AXI_awcache[3:0],SLOT_6_AXI_awprot[2:0],SLOT_6_AXI_awvalid,SLOT_6_AXI_awready,SLOT_6_AXI_wdata[63:0],SLOT_6_AXI_wlast,SLOT_6_AXI_wvalid,SLOT_6_AXI_wready,SLOT_6_AXI_bvalid,SLOT_6_AXI_bready,SLOT_6_AXI_araddr[31:0],SLOT_6_AXI_arlen[3:0],SLOT_6_AXI_arsize[2:0],SLOT_6_AXI_arburst[1:0],SLOT_6_AXI_arlock[1:0],SLOT_6_AXI_arcache[3:0],SLOT_6_AXI_arprot[2:0],SLOT_6_AXI_arqos[3:0],SLOT_6_AXI_arvalid,SLOT_6_AXI_arready,SLOT_6_AXI_rdata[63:0],SLOT_6_AXI_rresp[1:0],SLOT_6_AXI_rlast,SLOT_6_AXI_rvalid,SLOT_6_AXI_rready,SLOT_7_AXI_awaddr[31:0],SLOT_7_AXI_awlen[3:0],SLOT_7_AXI_awsize[2:0],SLOT_7_AXI_awburst[1:0],SLOT_7_AXI_awlock[1:0],SLOT_7_AXI_awcache[3:0],SLOT_7_AXI_awprot[2:0],SLOT_7_AXI_awvalid,SLOT_7_AXI_awready,SLOT_7_AXI_wdata[31:0],SLOT_7_AXI_wlast,SLOT_7_AXI_wvalid,SLOT_7_AXI_wready,SLOT_7_AXI_bvalid,SLOT_7_AXI_bready,SLOT_7_AXI_araddr[31:0],SLOT_7_AXI_arlen[3:0],SLOT_7_AXI_arsize[2:0],SLOT_7_AXI_arburst[1:0],SLOT_7_AXI_arlock[1:0],SLOT_7_AXI_arcache[1:0],SLOT_7_AXI_arprot[2:0],SLOT_7_AXI_arqos[3:0],SLOT_7_AXI_arvalid,SLOT_7_AXI_arready,SLOT_7_AXI_rdata[31:0],SLOT_7_AXI_rresp[1:0],SLOT_7_AXI_rlast,SLOT_7_AXI_rvalid,SLOT_7_AXI_rready,SLOT_8_AXI_awaddr[31:0],SLOT_8_AXI_awlen[3:0],SLOT_8_AXI_awsize[2:0],SLOT_8_AXI_awburst[1:0],SLOT_8_AXI_awlock[1:0],SLOT_8_AXI_awcache[3:0],SLOT_8_AXI_awprot[2:0],SLOT_8_AXI_awvalid,SLOT_8_AXI_awready,SLOT_8_AXI_wdata[31:0],SLOT_8_AXI_wlast,SLOT_8_AXI_wvalid,SLOT_8_AXI_wready,SLOT_8_AXI_bvalid,SLOT_8_AXI_bready,SLOT_8_AXI_araddr[31:0],SLOT_8_AXI_arlen[3:0],SLOT_8_AXI_arsize[2:0],SLOT_8_AXI_arburst[1:0],SLOT_8_AXI_arlock[1:0],SLOT_8_AXI_arcache[3:0],SLOT_8_AXI_arprot[2:0],SLOT_8_AXI_arqos[3:0],SLOT_8_AXI_arvalid,SLOT_8_AXI_arready,SLOT_8_AXI_rdata[31:0],SLOT_8_AXI_rresp[1:0],SLOT_8_AXI_rlast,SLOT_8_AXI_rvalid,SLOT_8_AXI_rready,SLOT_9_AXIS_tdata[31:0],SLOT_9_AXIS_tlast,SLOT_9_AXIS_tvalid,SLOT_9_AXIS_tready,SLOT_10_AXIS_tdata[31:0],SLOT_10_AXIS_tlast,SLOT_10_AXIS_tvalid,SLOT_10_AXIS_tready,SLOT_11_AXIS_tdata[31:0],SLOT_11_AXIS_tlast,SLOT_11_AXIS_tvalid,SLOT_11_AXIS_tready,SLOT_12_AXIS_tdata[31:0],SLOT_12_AXIS_tlast,SLOT_12_AXIS_tvalid,SLOT_12_AXIS_tready,resetn";
attribute X_CORE_INFO : string;
attribute X_CORE_INFO of stub : architecture is "bd_f60c,Vivado 2023.1";
begin
end;

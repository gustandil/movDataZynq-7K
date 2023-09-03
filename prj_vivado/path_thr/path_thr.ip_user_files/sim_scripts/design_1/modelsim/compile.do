vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xilinx_vip
vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/xlconstant_v1_1_7
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/smartconnect_v1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_28
vlib modelsim_lib/msim/axi_vip_v1_1_14
vlib modelsim_lib/msim/lib_pkg_v1_0_2
vlib modelsim_lib/msim/fifo_generator_v13_2_8
vlib modelsim_lib/msim/lib_fifo_v1_0_17
vlib modelsim_lib/msim/blk_mem_gen_v8_4_6
vlib modelsim_lib/msim/lib_bmg_v1_0_15
vlib modelsim_lib/msim/lib_srl_fifo_v1_0_2
vlib modelsim_lib/msim/axi_datamover_v5_1_30
vlib modelsim_lib/msim/axi_vdma_v6_3_16
vlib modelsim_lib/msim/processing_system7_vip_v1_0_16
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_data_fifo_v2_1_27
vlib modelsim_lib/msim/axi_crossbar_v2_1_29
vlib modelsim_lib/msim/gigantic_mux
vlib modelsim_lib/msim/xlconcat_v2_1_4
vlib modelsim_lib/msim/axi_protocol_converter_v2_1_28

vmap xilinx_vip modelsim_lib/msim/xilinx_vip
vmap xpm modelsim_lib/msim/xpm
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap xlconstant_v1_1_7 modelsim_lib/msim/xlconstant_v1_1_7
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap smartconnect_v1_0 modelsim_lib/msim/smartconnect_v1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_28 modelsim_lib/msim/axi_register_slice_v2_1_28
vmap axi_vip_v1_1_14 modelsim_lib/msim/axi_vip_v1_1_14
vmap lib_pkg_v1_0_2 modelsim_lib/msim/lib_pkg_v1_0_2
vmap fifo_generator_v13_2_8 modelsim_lib/msim/fifo_generator_v13_2_8
vmap lib_fifo_v1_0_17 modelsim_lib/msim/lib_fifo_v1_0_17
vmap blk_mem_gen_v8_4_6 modelsim_lib/msim/blk_mem_gen_v8_4_6
vmap lib_bmg_v1_0_15 modelsim_lib/msim/lib_bmg_v1_0_15
vmap lib_srl_fifo_v1_0_2 modelsim_lib/msim/lib_srl_fifo_v1_0_2
vmap axi_datamover_v5_1_30 modelsim_lib/msim/axi_datamover_v5_1_30
vmap axi_vdma_v6_3_16 modelsim_lib/msim/axi_vdma_v6_3_16
vmap processing_system7_vip_v1_0_16 modelsim_lib/msim/processing_system7_vip_v1_0_16
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_data_fifo_v2_1_27 modelsim_lib/msim/axi_data_fifo_v2_1_27
vmap axi_crossbar_v2_1_29 modelsim_lib/msim/axi_crossbar_v2_1_29
vmap gigantic_mux modelsim_lib/msim/gigantic_mux
vmap xlconcat_v2_1_4 modelsim_lib/msim/xlconcat_v2_1_4
vmap axi_protocol_converter_v2_1_28 modelsim_lib/msim/axi_protocol_converter_v2_1_28

vlog -work xilinx_vip  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/axi_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/clk_vip_if.sv" \
"C:/Xilinx/Vivado/2023.1/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_fifo/hdl/xpm_fifo.sv" \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93  \
"C:/Xilinx/Vivado/2023.1/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/sim/bd_afc3.v" \

vlog -work xlconstant_v1_1_7  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/b0f2/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_0/sim/bd_afc3_one_0.v" \

vcom -work lib_cdc_v1_0_2  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_1/sim/bd_afc3_psr_aclk_0.vhd" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/sc_util_v1_0_vl_rfs.sv" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/be1f/hdl/sc_mmu_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_2/sim/bd_afc3_s00mmu_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/4fd2/hdl/sc_transaction_regulator_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_3/sim/bd_afc3_s00tr_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/637d/hdl/sc_si_converter_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_4/sim/bd_afc3_s00sic_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f38e/hdl/sc_axi2sc_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_5/sim/bd_afc3_s00a2s_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/sc_node_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_6/sim/bd_afc3_sarn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_7/sim/bd_afc3_srn_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/9cc5/hdl/sc_sc2axi_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_8/sim/bd_afc3_m00s2a_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/6bba/hdl/sc_exit_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/bd_0/ip/ip_9/sim/bd_afc3_m00e_0.sv" \

vlog -work smartconnect_v1_0  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/c012/hdl/sc_switchboard_v1_0_vl_rfs.sv" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_28  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/87d1/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work axi_vip_v1_1_14  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ed63/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_0/sim/design_1_axi_smc_0.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/sim/bd_a878.v" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_0/sim/bd_a878_one_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_1/sim/bd_a878_psr_aclk_0.vhd" \

vlog -work xil_defaultlib  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_2/sim/bd_a878_s00mmu_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_3/sim/bd_a878_s00tr_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_4/sim/bd_a878_s00sic_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_5/sim/bd_a878_s00a2s_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_6/sim/bd_a878_sawn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_7/sim/bd_a878_swn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_8/sim/bd_a878_sbn_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_9/sim/bd_a878_m00s2a_0.sv" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/bd_0/ip/ip_10/sim/bd_a878_m00e_0.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_axi_smc_1_0/sim/design_1_axi_smc_1_0.v" \

vcom -work lib_pkg_v1_0_2  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/c97d/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_8  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_8  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/c97d/hdl/fifo_generator_v13_2_rfs.v" \

vcom -work lib_fifo_v1_0_17  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/3d41/hdl/lib_fifo_v1_0_rfs.vhd" \

vlog -work blk_mem_gen_v8_4_6  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/bb55/simulation/blk_mem_gen_v8_4.v" \

vcom -work lib_bmg_v1_0_15  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/3f7c/hdl/lib_bmg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_datamover_v5_1_30  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/e959/hdl/axi_datamover_v5_1_vh_rfs.vhd" \

vlog -work axi_vdma_v6_3_16  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl/axi_vdma_v6_3_rfs.v" \

vcom -work axi_vdma_v6_3_16  -93  \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl/axi_vdma_v6_3_rfs.vhd" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_axi_vdma_0_0/sim/design_1_axi_vdma_0_0.vhd" \
"../../../bd/design_1/ip/design_1_axi_vdma_1_0/sim/design_1_axi_vdma_1_0.vhd" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/33b3/hdl/vhdl/path_thr_axis_Axi_lite_s_axi.vhd" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/33b3/hdl/vhdl/path_thr_axis_path_thr_axis_Pipeline_VITIS_LOOP_31_1.vhd" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/33b3/hdl/vhdl/path_thr_axis_regslice_both.vhd" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/33b3/hdl/vhdl/path_thr_axis.vhd" \
"../../../bd/design_1/ip/design_1_path_thr_axis_0_0/sim/design_1_path_thr_axis_0_0.vhd" \

vlog -work processing_system7_vip_v1_0_16  -incr -mfcu  -sv -L axi_vip_v1_1_14 -L smartconnect_v1_0 -L processing_system7_vip_v1_0_16 -L xilinx_vip "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_processing_system7_0_0/sim/design_1_processing_system7_0_0.v" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_data_fifo_v2_1_27  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/fab7/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_29  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f8f3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_xbar_0/sim/design_1_xbar_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_rst_ps7_0_50M_0/sim/design_1_rst_ps7_0_50M_0.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/sim/bd_f60c.vhd" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_0/sim/bd_f60c_ila_lib_0.vhd" \

vlog -work gigantic_mux  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/e87a/hdl/gigantic_mux_v1_0_cntr.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/bd_f60c_g_inst_0_gigantic_mux.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_1/sim/bd_f60c_g_inst_0.v" \

vlog -work xlconcat_v2_1_4  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/4b67/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_2/sim/bd_f60c_slot_0_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_3/sim/bd_f60c_slot_0_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_4/sim/bd_f60c_slot_0_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_5/sim/bd_f60c_slot_0_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_6/sim/bd_f60c_slot_0_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_7/sim/bd_f60c_slot_1_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_8/sim/bd_f60c_slot_1_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_9/sim/bd_f60c_slot_1_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_10/sim/bd_f60c_slot_1_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_11/sim/bd_f60c_slot_1_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_12/sim/bd_f60c_slot_3_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_13/sim/bd_f60c_slot_3_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_14/sim/bd_f60c_slot_3_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_15/sim/bd_f60c_slot_3_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_16/sim/bd_f60c_slot_3_r_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_17/sim/bd_f60c_slot_5_aw_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_18/sim/bd_f60c_slot_5_w_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_19/sim/bd_f60c_slot_5_b_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_20/sim/bd_f60c_slot_5_ar_0.v" \
"../../../bd/design_1/ip/design_1_system_ila_0_0/bd_0/ip/ip_21/sim/bd_f60c_slot_5_r_0.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/ip/design_1_system_ila_0_0/sim/design_1_system_ila_0_0.vhd" \

vlog -work axi_protocol_converter_v2_1_28  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../../path_thr.gen/sources_1/bd/design_1/ipshared/8c02/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu  "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/f0b6/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/66be/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/ec67/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/0691/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/aed8/hdl" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ip/design_1_path_thr_axis_0_0/drivers/path_thr_axis_v1_0/src" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/1b7e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/122e/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/affe/hdl/verilog" "+incdir+../../../../path_thr.gen/sources_1/bd/design_1/ipshared/20d0/hdl/verilog" "+incdir+C:/Xilinx/Vivado/2023.1/data/xilinx_vip/include" \
"../../../bd/design_1/ip/design_1_auto_pc_3/sim/design_1_auto_pc_3.v" \
"../../../bd/design_1/ip/design_1_auto_pc_0/sim/design_1_auto_pc_0.v" \
"../../../bd/design_1/ip/design_1_auto_pc_1/sim/design_1_auto_pc_1.v" \
"../../../bd/design_1/ip/design_1_auto_pc_2/sim/design_1_auto_pc_2.v" \

vcom -work xil_defaultlib  -93  \
"../../../bd/design_1/sim/design_1.vhd" \

vlog -work xil_defaultlib \
"glbl.v"


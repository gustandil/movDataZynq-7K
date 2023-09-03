transcript off
onbreak {quit -force}
onerror {quit -force}
transcript on

asim +access +r +m+design_1  -L xilinx_vip -L xpm -L xil_defaultlib -L xlconstant_v1_1_7 -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L smartconnect_v1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_28 -L axi_vip_v1_1_14 -L lib_pkg_v1_0_2 -L fifo_generator_v13_2_8 -L lib_fifo_v1_0_17 -L blk_mem_gen_v8_4_6 -L lib_bmg_v1_0_15 -L lib_srl_fifo_v1_0_2 -L axi_datamover_v5_1_30 -L axi_vdma_v6_3_16 -L axi_lite_ipif_v3_0_4 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_30 -L processing_system7_vip_v1_0_16 -L generic_baseblocks_v2_1_0 -L axi_data_fifo_v2_1_27 -L axi_crossbar_v2_1_29 -L xlslice_v1_0_2 -L gigantic_mux -L xlconcat_v2_1_4 -L axis_infrastructure_v1_1_0 -L axis_data_fifo_v2_0_10 -L axi_protocol_converter_v2_1_28 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.design_1 xil_defaultlib.glbl

do {design_1.udo}

run 1000ns

endsim

quit -force

onbreak {quit -f}
onerror {quit -f}

vsim -voptargs="+acc" -t 1ps -L xil_defaultlib -L xpm -L ahblite_axi_bridge_v3_0_13 -L blk_mem_gen_v8_3_6 -L axi_bram_ctrl_v4_0_14 -L axi_lite_ipif_v3_0_4 -L lib_cdc_v1_0_2 -L interrupt_control_v3_1_4 -L axi_gpio_v2_0_19 -L axi_intc_v4_1_11 -L lib_pkg_v1_0_2 -L lib_srl_fifo_v1_0_2 -L axi_uart16550_v2_0_19 -L blk_mem_gen_v8_4_1 -L util_vector_logic_v2_0_1 -L xlconcat_v2_1_1 -L xlconstant_v1_1_5 -L generic_baseblocks_v2_1_0 -L axi_infrastructure_v1_1_0 -L axi_register_slice_v2_1_17 -L fifo_generator_v13_2_2 -L axi_data_fifo_v2_1_16 -L axi_crossbar_v2_1_18 -L axi_protocol_converter_v2_1_17 -L axi_clock_converter_v2_1_16 -L axi_dwidth_converter_v2_1_17 -L unisims_ver -L unimacro_ver -L secureip -lib xil_defaultlib xil_defaultlib.MIPSfpga_system xil_defaultlib.glbl

do {wave.do}

view wave
view structure
view signals

do {MIPSfpga_system.udo}

run -all

quit -force

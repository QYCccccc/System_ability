vlib work
vlib riviera

vlib riviera/xil_defaultlib
vlib riviera/xpm
vlib riviera/ahblite_axi_bridge_v3_0_13
vlib riviera/blk_mem_gen_v8_3_6
vlib riviera/axi_bram_ctrl_v4_0_14
vlib riviera/axi_lite_ipif_v3_0_4
vlib riviera/lib_cdc_v1_0_2
vlib riviera/interrupt_control_v3_1_4
vlib riviera/axi_gpio_v2_0_19
vlib riviera/axi_intc_v4_1_11
vlib riviera/lib_pkg_v1_0_2
vlib riviera/lib_srl_fifo_v1_0_2
vlib riviera/axi_uart16550_v2_0_19
vlib riviera/blk_mem_gen_v8_4_1
vlib riviera/util_vector_logic_v2_0_1
vlib riviera/xlconcat_v2_1_1
vlib riviera/xlconstant_v1_1_5
vlib riviera/generic_baseblocks_v2_1_0
vlib riviera/axi_infrastructure_v1_1_0
vlib riviera/axi_register_slice_v2_1_17
vlib riviera/fifo_generator_v13_2_2
vlib riviera/axi_data_fifo_v2_1_16
vlib riviera/axi_crossbar_v2_1_18
vlib riviera/axi_protocol_converter_v2_1_17
vlib riviera/axi_clock_converter_v2_1_16
vlib riviera/axi_dwidth_converter_v2_1_17

vmap xil_defaultlib riviera/xil_defaultlib
vmap xpm riviera/xpm
vmap ahblite_axi_bridge_v3_0_13 riviera/ahblite_axi_bridge_v3_0_13
vmap blk_mem_gen_v8_3_6 riviera/blk_mem_gen_v8_3_6
vmap axi_bram_ctrl_v4_0_14 riviera/axi_bram_ctrl_v4_0_14
vmap axi_lite_ipif_v3_0_4 riviera/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 riviera/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 riviera/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_19 riviera/axi_gpio_v2_0_19
vmap axi_intc_v4_1_11 riviera/axi_intc_v4_1_11
vmap lib_pkg_v1_0_2 riviera/lib_pkg_v1_0_2
vmap lib_srl_fifo_v1_0_2 riviera/lib_srl_fifo_v1_0_2
vmap axi_uart16550_v2_0_19 riviera/axi_uart16550_v2_0_19
vmap blk_mem_gen_v8_4_1 riviera/blk_mem_gen_v8_4_1
vmap util_vector_logic_v2_0_1 riviera/util_vector_logic_v2_0_1
vmap xlconcat_v2_1_1 riviera/xlconcat_v2_1_1
vmap xlconstant_v1_1_5 riviera/xlconstant_v1_1_5
vmap generic_baseblocks_v2_1_0 riviera/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 riviera/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_17 riviera/axi_register_slice_v2_1_17
vmap fifo_generator_v13_2_2 riviera/fifo_generator_v13_2_2
vmap axi_data_fifo_v2_1_16 riviera/axi_data_fifo_v2_1_16
vmap axi_crossbar_v2_1_18 riviera/axi_crossbar_v2_1_18
vmap axi_protocol_converter_v2_1_17 riviera/axi_protocol_converter_v2_1_17
vmap axi_clock_converter_v2_1_16 riviera/axi_clock_converter_v2_1_16
vmap axi_dwidth_converter_v2_1_17 riviera/axi_dwidth_converter_v2_1_17

vlog -work xil_defaultlib  -sv2k12 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"D:/software/Vivado/Vivado/2018.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"D:/software/Vivado/Vivado/2018.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm -93 \
"D:/software/Vivado/Vivado/2018.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_cregister.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_cregister_ngc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_register.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_cregister_wide_tlb.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_register_ngc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_cregister_wide_utlb.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_cregister_wide.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_jtlb1entry.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_gf_mux2.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_and2.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_ucregister_wide.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_register_s.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_register_c.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux4.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux2.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_9.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_5.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_4.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_13.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_cregister_s.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_cregister_c.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_utlbentry.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_jtlb4entries.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_mux2.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_bus32mux2.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_async_snd.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_async_rec.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_edp_clz_4b.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_clockxnorgate.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_8.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_6.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_latchn.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_utlb.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_jtlb16entries.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mdl_add_simple.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_tck.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_tap_pcsamstub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_tap_fdcstub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_tap_dasamstub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_ibrk.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_gate.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_dbrk.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_edp_clz_16b.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_watch_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_pc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_guest_srs1.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/RAMB4_S8.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/RAMB4_S2.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/RAMB4_S16.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux8.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_3.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_24.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux1hot_10.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/mvp_mux16.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_jtlb16.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_itlb.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_dtlb.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_ctl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_cpy.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb_collector.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_siu_int_sync.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_rf_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_rf_rngc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mpc_exc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mpc_dec.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mpc_ctl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mmuc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mdl_dp.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mdl_ctl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_icc_umips_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_icc_spstub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_icc_spmb_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_icc_parity_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_icc_mb_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_tap.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_pdttcb_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_brk21.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt_area.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_edp_clz.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_edp_buf_misc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_edp_add_simple.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dcc_spstub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dcc_spmb_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dcc_parity_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dcc_mb_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dcc_fb.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_srs1.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_sps_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_root_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_prid.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_pc_top.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_guest_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_eicoffset_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz_antitamper_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_clock_buf.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_clockandlatch.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cache_mux.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cache_cmp.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_alu_shft_32bit.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_alu_dsp_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/tagram_2k2way_xilinx.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_tlb.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_siu.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_rf_reg.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mpc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_mdl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ic_bistctl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_icc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_glue.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ejt.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_edp.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dc_bistctl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dcc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cscramble_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cscramble_scanio_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpz.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cp2_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cp1_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_clock_nogate.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cdmmstub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_biu.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/i_wsram_2k2way_xilinx.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/d_wsram_2k2way_xilinx.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/dataram_2k2way_xilinx.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ispram_ext_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_ic.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_fpuclk1_nogate.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dspram_ext_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_dc.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cscramble_tpl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_core.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cop1_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_bistctl.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_udi_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_spram_top.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cpu.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_cop2_stub.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up/m14k_top.v" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/mips_block_project.srcs/sources_1/new/m14k_top_wrap.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_MIPS_MicroAptiv_UP_0_0/sim/MIPSfpga_system_MIPS_MicroAptiv_UP_0_0.v" \

vcom -work ahblite_axi_bridge_v3_0_13 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/df6a/hdl/ahblite_axi_bridge_v3_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_ahblite_axi_bridge_0_0/sim/MIPSfpga_system_ahblite_axi_bridge_0_0.vhd" \

vlog -work blk_mem_gen_v8_3_6  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/2751/simulation/blk_mem_gen_v8_3.v" \

vcom -work axi_bram_ctrl_v4_0_14 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/6db1/hdl/axi_bram_ctrl_v4_0_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_axi_bram_ctrl_0_0/sim/MIPSfpga_system_axi_bram_ctrl_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/cced/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/8e66/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_19 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/c193/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_axi_gpio_0_0/sim/MIPSfpga_system_axi_gpio_0_0.vhd" \

vcom -work axi_intc_v4_1_11 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/2fec/hdl/axi_intc_v4_1_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_axi_intc_0_0/sim/MIPSfpga_system_axi_intc_0_0.vhd" \

vcom -work lib_pkg_v1_0_2 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/0513/hdl/lib_pkg_v1_0_rfs.vhd" \

vcom -work lib_srl_fifo_v1_0_2 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/51ce/hdl/lib_srl_fifo_v1_0_rfs.vhd" \

vcom -work axi_uart16550_v2_0_19 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/e469/hdl/axi_uart16550_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_axi_uart16550_0_0/sim/MIPSfpga_system_axi_uart16550_0_0.vhd" \

vlog -work blk_mem_gen_v8_4_1  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/67d8/simulation/blk_mem_gen_v8_4.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_blk_mem_gen_0_0/sim/MIPSfpga_system_blk_mem_gen_0_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_clk_wiz_0_0/MIPSfpga_system_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_clk_wiz_0_0/MIPSfpga_system_clk_wiz_0_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_addr_decode.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_read.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_reg.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_reg_bank.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_top.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_ctrl_write.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_ar_channel.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_aw_channel.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_b_channel.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_arbiter.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_fsm.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_cmd_translator.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_fifo.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_incr_cmd.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_r_channel.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_simple_fifo.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_wrap_cmd.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_wr_cmd_fsm.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_axi_mc_w_channel.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axic_register_slice.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axi_register_slice.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_axi_upsizer.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_a_upsizer.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_and.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_latch_and.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_latch_or.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_carry_or.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_command_fifo.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator_sel.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_comparator_sel_static.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_r_upsizer.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/axi/mig_7series_v4_1_ddr_w_upsizer.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_clk_ibuf.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_infrastructure.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_iodelay_ctrl.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/clocking/mig_7series_v4_1_tempmon.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_mux.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_row_col.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_arb_select.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_cntrl.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_common.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_compare.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_mach.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_queue.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_bank_state.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_col_mach.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_mc.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_cntrl.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_common.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_rank_mach.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/controller/mig_7series_v4_1_round_robin_arb.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_buf.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_dec_fix.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_gen.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_ecc_merge_enc.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ecc/mig_7series_v4_1_fi_xor.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_1_memc_ui_top_axi.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ip_top/mig_7series_v4_1_mem_intfc.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_group_io.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_byte_lane.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_calib_top.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_if_post_fifo.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_mc_phy_wrapper.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_of_pre_fifo.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_4lanes.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ck_addr_cmd_delay.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_dqs_found_cal_hr.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_init.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_cntlr.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_data.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_edge.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_lim.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_mux.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_po_cntlr.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_ocd_samp.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_oclkdelay_cal.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_prbs_rdlvl.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_rdlvl.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_tempmon.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_top.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrcal.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_phy_wrlvl_off_delay.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_ddr_prbs_gen.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_cc.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_edge_store.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_meta.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_pd.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_tap_base.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/phy/mig_7series_v4_1_poc_top.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_cmd.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_rd_data.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_top.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/ui/mig_7series_v4_1_ui_wr_data.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/MIPSfpga_system_mig_7series_0_0_mig_sim.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_mig_7series_0_0/MIPSfpga_system_mig_7series_0_0/user_design/rtl/MIPSfpga_system_mig_7series_0_0.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_util_ds_buf_0_0/util_ds_buf.vhd" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_util_ds_buf_0_0/sim/MIPSfpga_system_util_ds_buf_0_0.vhd" \

vlog -work util_vector_logic_v2_0_1  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/2137/hdl/util_vector_logic_v2_0_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_util_vector_logic_0_0/sim/MIPSfpga_system_util_vector_logic_0_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_util_vector_logic_1_0/sim/MIPSfpga_system_util_vector_logic_1_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_util_vector_logic_2_0/sim/MIPSfpga_system_util_vector_logic_2_0.v" \

vlog -work xlconcat_v2_1_1  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/2f66/hdl/xlconcat_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_0_0/sim/MIPSfpga_system_xlconcat_0_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xlconcat_1_0/sim/MIPSfpga_system_xlconcat_1_0.v" \

vlog -work xlconstant_v1_1_5  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/f1c3/hdl/xlconstant_v1_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xlconstant_0_0/sim/MIPSfpga_system_xlconstant_0_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xlconstant_1_0/sim/MIPSfpga_system_xlconstant_1_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xlconstant_2_0/sim/MIPSfpga_system_xlconstant_2_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xlconstant_3_0/sim/MIPSfpga_system_xlconstant_3_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xlconstant_4_0/sim/MIPSfpga_system_xlconstant_4_0.v" \

vlog -work generic_baseblocks_v2_1_0  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_17  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/6020/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/7aff/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_2 -93 \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_2  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/7aff/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_16  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/247d/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_18  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/15a3/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_xbar_0/sim/MIPSfpga_system_xbar_0.v" \
"../../../bd/MIPSfpga_system/sim/MIPSfpga_system.v" \

vcom -work xil_defaultlib -93 \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_axi_uart16550_0_1/sim/MIPSfpga_system_axi_uart16550_0_1.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../bd/MIPSfpga_system/ipshared/8148/hdl/PWM_Int_4_v1_0_S00_AXI.v" \
"../../../bd/MIPSfpga_system/ipshared/8148/hdl/PWM_Int_4_v1_0.v" \
"../../../bd/MIPSfpga_system/ipshared/8148/src/PWM_Int_4_Controller.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_PWM_Int_4_0_0/sim/MIPSfpga_system_PWM_Int_4_0_0.v" \

vlog -work axi_protocol_converter_v2_1_17  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ccfb/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work axi_clock_converter_v2_1_16  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/e9a5/hdl/axi_clock_converter_v2_1_vl_rfs.v" \

vlog -work axi_dwidth_converter_v2_1_17  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/2839/hdl/axi_dwidth_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/ipshared/bd6d/rtl_up" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/b65a" "+incdir+../../../../MIPSfpga_axi4_ddr.srcs/sources_1/bd/MIPSfpga_system/ipshared/ec67/hdl" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_ds_5/sim/MIPSfpga_system_auto_ds_5.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_pc_4/sim/MIPSfpga_system_auto_pc_4.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_ds_4/sim/MIPSfpga_system_auto_ds_4.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_pc_3/sim/MIPSfpga_system_auto_pc_3.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_ds_3/sim/MIPSfpga_system_auto_ds_3.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_pc_2/sim/MIPSfpga_system_auto_pc_2.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_cc_0/sim/MIPSfpga_system_auto_cc_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_ds_2/sim/MIPSfpga_system_auto_ds_2.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_pc_1/sim/MIPSfpga_system_auto_pc_1.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_ds_1/sim/MIPSfpga_system_auto_ds_1.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_ds_0/sim/MIPSfpga_system_auto_ds_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_pc_0/sim/MIPSfpga_system_auto_pc_0.v" \
"../../../bd/MIPSfpga_system/ip/MIPSfpga_system_auto_us_0/sim/MIPSfpga_system_auto_us_0.v" \

vlog -work xil_defaultlib \
"glbl.v"


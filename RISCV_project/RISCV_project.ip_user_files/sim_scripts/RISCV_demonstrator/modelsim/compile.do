vlib modelsim_lib/work
vlib modelsim_lib/msim

vlib modelsim_lib/msim/xpm
vlib modelsim_lib/msim/axi_lite_ipif_v3_0_4
vlib modelsim_lib/msim/lib_cdc_v1_0_2
vlib modelsim_lib/msim/interrupt_control_v3_1_4
vlib modelsim_lib/msim/axi_gpio_v2_0_27
vlib modelsim_lib/msim/xil_defaultlib
vlib modelsim_lib/msim/proc_sys_reset_v5_0_13
vlib modelsim_lib/msim/generic_baseblocks_v2_1_0
vlib modelsim_lib/msim/axi_infrastructure_v1_1_0
vlib modelsim_lib/msim/axi_register_slice_v2_1_25
vlib modelsim_lib/msim/fifo_generator_v13_2_6
vlib modelsim_lib/msim/axi_data_fifo_v2_1_24
vlib modelsim_lib/msim/axi_crossbar_v2_1_26

vmap xpm modelsim_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 modelsim_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 modelsim_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 modelsim_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 modelsim_lib/msim/axi_gpio_v2_0_27
vmap xil_defaultlib modelsim_lib/msim/xil_defaultlib
vmap proc_sys_reset_v5_0_13 modelsim_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 modelsim_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 modelsim_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_25 modelsim_lib/msim/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 modelsim_lib/msim/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 modelsim_lib/msim/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 modelsim_lib/msim/axi_crossbar_v2_1_26

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_memory/hdl/xpm_memory.sv" \

vcom -work xpm  -93 \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vcom -work axi_lite_ipif_v3_0_4  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work lib_cdc_v1_0_2  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work interrupt_control_v3_1_4  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_axi_gpio_0_1/sim/RISCV_demonstrator_axi_gpio_0_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0_clk_wiz.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_rst_clk_wiz_100M_1/sim/RISCV_demonstrator_rst_clk_wiz_100M_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_riscv_wrapper_0_1/sim/RISCV_demonstrator_riscv_wrapper_0_1.v" \

vcom -work xil_defaultlib  -93 \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_axi_gpio_1_0/sim/RISCV_demonstrator_axi_gpio_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_xbar_0/sim/RISCV_demonstrator_xbar_0.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder2to4_0_0/sim/RISCV_demonstrator_decoder2to4_0_0.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder1to2_0_0/sim/RISCV_demonstrator_decoder1to2_0_0.v" \
"../../../bd/RISCV_demonstrator/sim/RISCV_demonstrator.v" \

vlog -work xil_defaultlib \
"glbl.v"


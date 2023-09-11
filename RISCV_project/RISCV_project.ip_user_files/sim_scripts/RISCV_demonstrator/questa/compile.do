vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xpm
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_27
vlib questa_lib/msim/proc_sys_reset_v5_0_13

vmap xpm questa_lib/msim/xpm
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 questa_lib/msim/axi_gpio_v2_0_27
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13

vlog -work xpm  -incr -mfcu -sv "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \

vcom -work xpm  -93 \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder_0_0/sim/RISCV_demonstrator_decoder_0_0.v" \

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

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0_clk_wiz.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_rst_clk_wiz_100M_1/sim/RISCV_demonstrator_rst_clk_wiz_100M_1.vhd" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_riscv_wrapper_0_1/sim/RISCV_demonstrator_riscv_wrapper_0_1.v" \
"../../../bd/RISCV_demonstrator/sim/RISCV_demonstrator.v" \

vlog -work xil_defaultlib \
"glbl.v"


vlib work
vlib activehdl

vlib activehdl/xilinx_vip
vlib activehdl/xil_defaultlib
vlib activehdl/lib_cdc_v1_0_2
vlib activehdl/proc_sys_reset_v5_0_13
vlib activehdl/axi_lite_ipif_v3_0_4
vlib activehdl/interrupt_control_v3_1_4
vlib activehdl/axi_gpio_v2_0_27

vmap xilinx_vip activehdl/xilinx_vip
vmap xil_defaultlib activehdl/xil_defaultlib
vmap lib_cdc_v1_0_2 activehdl/lib_cdc_v1_0_2
vmap proc_sys_reset_v5_0_13 activehdl/proc_sys_reset_v5_0_13
vmap axi_lite_ipif_v3_0_4 activehdl/axi_lite_ipif_v3_0_4
vmap interrupt_control_v3_1_4 activehdl/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 activehdl/axi_gpio_v2_0_27

vlog -work xilinx_vip  -sv2k12 "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_bd/ipshared/62b6" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/RISCV_bd/ip/RISCV_bd_clk_wiz_0_0/RISCV_bd_clk_wiz_0_0_clk_wiz.v" \
"../../../bd/RISCV_bd/ip/RISCV_bd_clk_wiz_0_0/RISCV_bd_clk_wiz_0_0.v" \

vcom -work lib_cdc_v1_0_2 -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_bd/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \

vcom -work proc_sys_reset_v5_0_13 -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_bd/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/RISCV_bd/ip/RISCV_bd_proc_sys_reset_0_0/sim/RISCV_bd_proc_sys_reset_0_0.vhd" \

vcom -work axi_lite_ipif_v3_0_4 -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_bd/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \

vcom -work interrupt_control_v3_1_4 -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_bd/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \

vcom -work axi_gpio_v2_0_27 -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_bd/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \

vcom -work xil_defaultlib -93 \
"../../../bd/RISCV_bd/ip/RISCV_bd_axi_gpio_0_0/sim/RISCV_bd_axi_gpio_0_0.vhd" \

vlog -work xil_defaultlib  -v2k5 "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_bd/ipshared/62b6" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/RISCV_bd/ip/RISCV_bd_riscv_wrapper_0_1/sim/RISCV_bd_riscv_wrapper_0_1.v" \
"../../../bd/RISCV_bd/sim/RISCV_bd.v" \

vlog -work xil_defaultlib \
"glbl.v"


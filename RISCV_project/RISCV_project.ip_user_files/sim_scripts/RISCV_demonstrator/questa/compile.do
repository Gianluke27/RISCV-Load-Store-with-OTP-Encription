vlib questa_lib/work
vlib questa_lib/msim

vlib questa_lib/msim/xilinx_vip
vlib questa_lib/msim/xpm
vlib questa_lib/msim/axi_lite_ipif_v3_0_4
vlib questa_lib/msim/lib_cdc_v1_0_2
vlib questa_lib/msim/interrupt_control_v3_1_4
vlib questa_lib/msim/axi_gpio_v2_0_27
vlib questa_lib/msim/xil_defaultlib
vlib questa_lib/msim/proc_sys_reset_v5_0_13
vlib questa_lib/msim/generic_baseblocks_v2_1_0
vlib questa_lib/msim/axi_infrastructure_v1_1_0
vlib questa_lib/msim/axi_register_slice_v2_1_25
vlib questa_lib/msim/fifo_generator_v13_2_6
vlib questa_lib/msim/axi_data_fifo_v2_1_24
vlib questa_lib/msim/axi_crossbar_v2_1_26
vlib questa_lib/msim/axi_vip_v1_1_11
vlib questa_lib/msim/processing_system7_vip_v1_0_13
vlib questa_lib/msim/axi_protocol_converter_v2_1_25

vmap xilinx_vip questa_lib/msim/xilinx_vip
vmap xpm questa_lib/msim/xpm
vmap axi_lite_ipif_v3_0_4 questa_lib/msim/axi_lite_ipif_v3_0_4
vmap lib_cdc_v1_0_2 questa_lib/msim/lib_cdc_v1_0_2
vmap interrupt_control_v3_1_4 questa_lib/msim/interrupt_control_v3_1_4
vmap axi_gpio_v2_0_27 questa_lib/msim/axi_gpio_v2_0_27
vmap xil_defaultlib questa_lib/msim/xil_defaultlib
vmap proc_sys_reset_v5_0_13 questa_lib/msim/proc_sys_reset_v5_0_13
vmap generic_baseblocks_v2_1_0 questa_lib/msim/generic_baseblocks_v2_1_0
vmap axi_infrastructure_v1_1_0 questa_lib/msim/axi_infrastructure_v1_1_0
vmap axi_register_slice_v2_1_25 questa_lib/msim/axi_register_slice_v2_1_25
vmap fifo_generator_v13_2_6 questa_lib/msim/fifo_generator_v13_2_6
vmap axi_data_fifo_v2_1_24 questa_lib/msim/axi_data_fifo_v2_1_24
vmap axi_crossbar_v2_1_26 questa_lib/msim/axi_crossbar_v2_1_26
vmap axi_vip_v1_1_11 questa_lib/msim/axi_vip_v1_1_11
vmap processing_system7_vip_v1_0_13 questa_lib/msim/processing_system7_vip_v1_0_13
vmap axi_protocol_converter_v2_1_25 questa_lib/msim/axi_protocol_converter_v2_1_25

vlog -work xilinx_vip  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_axi4streampc.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_axi4pc.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/xil_common_vip_pkg.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_pkg.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_pkg.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi4stream_vip_if.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/axi_vip_if.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/clk_vip_if.sv" \
"H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/hdl/rst_vip_if.sv" \

vlog -work xpm  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
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

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0_clk_wiz.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0.v" \

vcom -work proc_sys_reset_v5_0_13  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \

vcom -work xil_defaultlib  -93 \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_rst_clk_wiz_100M_1/sim/RISCV_demonstrator_rst_clk_wiz_100M_1.vhd" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_axi_gpio_1_0/sim/RISCV_demonstrator_axi_gpio_1_0.vhd" \

vlog -work generic_baseblocks_v2_1_0  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/b752/hdl/generic_baseblocks_v2_1_vl_rfs.v" \

vlog -work axi_infrastructure_v1_1_0  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl/axi_infrastructure_v1_1_vl_rfs.v" \

vlog -work axi_register_slice_v2_1_25  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/e1e6/hdl/axi_register_slice_v2_1_vl_rfs.v" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8ae1/simulation/fifo_generator_vlog_beh.v" \

vcom -work fifo_generator_v13_2_6  -93 \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.vhd" \

vlog -work fifo_generator_v13_2_6  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8ae1/hdl/fifo_generator_v13_2_rfs.v" \

vlog -work axi_data_fifo_v2_1_24  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/fa53/hdl/axi_data_fifo_v2_1_vl_rfs.v" \

vlog -work axi_crossbar_v2_1_26  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ac57/hdl/axi_crossbar_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_xbar_0/sim/RISCV_demonstrator_xbar_0.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder2to4_0_0/sim/RISCV_demonstrator_decoder2to4_0_0.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder1to2_0_0/sim/RISCV_demonstrator_decoder1to2_0_0.v" \

vlog -work axi_vip_v1_1_11  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/63b7/hdl/axi_vip_v1_1_vl_rfs.sv" \

vlog -work processing_system7_vip_v1_0_13  -incr -mfcu -sv -L axi_vip_v1_1_11 -L processing_system7_vip_v1_0_13 -L xilinx_vip "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl/processing_system7_vip_v1_0_vl_rfs.sv" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_processing_system7_0_0/sim/RISCV_demonstrator_processing_system7_0_0.v" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_riscv_wrapper_0_1/sim/RISCV_demonstrator_riscv_wrapper_0_1.v" \

vlog -work axi_protocol_converter_v2_1_25  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8fe4/hdl/axi_protocol_converter_v2_1_vl_rfs.v" \

vlog -work xil_defaultlib  -incr -mfcu "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/62b6" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ec67/hdl" "+incdir+../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/3007/hdl" "+incdir+H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/xilinx_vip/include" \
"../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_auto_pc_0/sim/RISCV_demonstrator_auto_pc_0.v" \
"../../../bd/RISCV_demonstrator/sim/RISCV_demonstrator.v" \

vlog -work xil_defaultlib \
"glbl.v"


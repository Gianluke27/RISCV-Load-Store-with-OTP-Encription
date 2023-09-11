-makelib xcelium_lib/xpm -sv \
  "H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_cdc/hdl/xpm_cdc.sv" \
-endlib
-makelib xcelium_lib/xpm \
  "H:/TesiMagistrale/Software/Xilinx/Vivado/2021.2/data/ip/xpm/xpm_VCOMP.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_decoder_0_0/sim/RISCV_demonstrator_decoder_0_0.v" \
-endlib
-makelib xcelium_lib/axi_lite_ipif_v3_0_4 \
  "../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/66ea/hdl/axi_lite_ipif_v3_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/lib_cdc_v1_0_2 \
  "../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/ef1e/hdl/lib_cdc_v1_0_rfs.vhd" \
-endlib
-makelib xcelium_lib/interrupt_control_v3_1_4 \
  "../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/a040/hdl/interrupt_control_v3_1_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/axi_gpio_v2_0_27 \
  "../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/a5bb/hdl/axi_gpio_v2_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_axi_gpio_0_1/sim/RISCV_demonstrator_axi_gpio_0_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0_clk_wiz.v" \
  "../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_clk_wiz_0/RISCV_demonstrator_clk_wiz_0.v" \
-endlib
-makelib xcelium_lib/proc_sys_reset_v5_0_13 \
  "../../../../RISCV_project.gen/sources_1/bd/RISCV_demonstrator/ipshared/8842/hdl/proc_sys_reset_v5_0_vh_rfs.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_rst_clk_wiz_100M_1/sim/RISCV_demonstrator_rst_clk_wiz_100M_1.vhd" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  "../../../bd/RISCV_demonstrator/ip/RISCV_demonstrator_riscv_wrapper_0_1/sim/RISCV_demonstrator_riscv_wrapper_0_1.v" \
  "../../../bd/RISCV_demonstrator/sim/RISCV_demonstrator.v" \
-endlib
-makelib xcelium_lib/xil_defaultlib \
  glbl.v
-endlib


TCL commands:

connect

fpga -f {H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\RISCV_project\RISCV_project.runs\impl_1\RISCV_demonstrator_wrapper.bit}

fpga -f {H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\BitStreams\Secure_Design\25MHz\median_rvtests_pwr_OTP.bit}

fpga -f {H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\BitStreams\empty.bit}

fpga -f {H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\BitStreams\Naive_Design\25MHz\median_rvtests_pwr.bit}

target 2

source {H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\Vitis_Workspace\RISCV_platform\hw\ps7_init.tcl}

ps7_init
ps7_post_config

mrd -force 0x80000000
mwr -force 0x80000000 0x00000000

mrd -force 0x80001000
mwr -force 0x80001000 0x0000000a

mrd -force 0x80002e0c
mwr -force 0x80002e0c 0x0000000a

sp -> 80002e40
data -> 80002e24

mrd -force 0x80002e24
mwr -force 0x80002e24 0x0000000a
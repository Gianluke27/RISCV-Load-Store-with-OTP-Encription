# 
# Usage: To re-create this platform project launch xsct with below options.
# xsct H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\Vitis_Workspace\RISCV_platform\platform.tcl
# 
# OR launch xsct and run below command.
# source H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\Vitis_Workspace\RISCV_platform\platform.tcl
# 
# To create the platform in a different location, modify the -out option of "platform create" command.
# -out option specifies the output directory of the platform project.

platform create -name {RISCV_platform}\
-hw {H:\TesiMagistrale\Github\RISCV_Enc_Load_Store\RISCV-Load-Store-with-OTP-Encription\RISCV_project\RISCV_demonstrator_wrapper.xsa}\
-proc {ps7_cortexa9_0} -os {standalone} -out {H:/TesiMagistrale/Github/RISCV_Enc_Load_Store/RISCV-Load-Store-with-OTP-Encription/Vitis_Workspace}

platform write
platform generate -domains 
platform active {RISCV_platform}
platform generate
platform clean
platform generate

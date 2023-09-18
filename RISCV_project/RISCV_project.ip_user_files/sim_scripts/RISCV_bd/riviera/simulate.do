onbreak {quit -force}
onerror {quit -force}

asim +access +r +m+RISCV_bd -L xilinx_vip -L xil_defaultlib -L lib_cdc_v1_0_2 -L proc_sys_reset_v5_0_13 -L xilinx_vip -L unisims_ver -L unimacro_ver -L secureip -O5 xil_defaultlib.RISCV_bd xil_defaultlib.glbl

set NumericStdNoWarnings 1
set StdArithNoWarnings 1

do {wave.do}

view wave
view structure

do {RISCV_bd.udo}

run -all

endsim

quit -force
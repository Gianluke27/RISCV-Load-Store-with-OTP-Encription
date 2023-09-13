// main.c
asm ("li sp, 0x0f000");
asm ("lw s0, 0(sp)");
asm ("nop");asm ("nop");
asm ("nop");asm ("nop");
asm ("nop");asm ("nop");
asm ("lw t0, 512(zero)"); asm ("lw t1, 1024(zero)");
asm ("nop");asm ("nop");
asm ("nop");asm ("nop");
asm ("nop");asm ("nop");
/*
    RISC-V Dummy program
*/

#include "start.h"

int main() {
    asm volatile ("add sp, sp, -8"); 
    asm volatile ("li t0, 305419896"); //0x12345678
    asm volatile ("li t1, 2596069104"); //0x9abcdef0
    asm volatile ("sw t0, 0(sp)"); 
    asm volatile ("sw t1, 4(sp)"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    while(1){
        asm volatile ("lw s2, 0(sp)");
        asm volatile ("lw s3, 4(sp)");
        asm volatile ("lw s4, 0(sp)");
        asm volatile ("lw s5, 4(sp)");
        asm volatile ("lw s6, 0(sp)");
        asm volatile ("lw s7, 4(sp)");
        asm volatile ("li s2, 0");
        asm volatile ("li s3, 0");
        asm volatile ("li s4, 0");
        asm volatile ("li s5, 0");
        asm volatile ("li s6, 0");
        asm volatile ("li s7, 0"); 
        asm volatile ("nop");
        asm volatile ("nop");
        asm volatile ("nop");
        asm volatile ("nop");
        asm volatile ("nop");
        asm volatile ("nop");
    } 
}

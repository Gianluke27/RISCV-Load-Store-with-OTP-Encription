/*
    Test TCM memory
    Reading and writing in TCM memory.
*/

#include "start.h"

int main() {
    asm volatile ("li t0, 0x00112233"); 
    asm volatile ("li t1, 0x44556677"); 
    asm volatile ("li t2, 0x8899aabb"); 
    asm volatile ("li t3, 0xccddeeff"); 
    asm volatile ("sw t0, 0(sp)"); 
    asm volatile ("sh t1, 8(sp)"); 
    asm volatile ("sb t2, 16(sp)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lw t4, 0(sp)"); 
    asm volatile ("lh t5, 10(sp)"); 
    asm volatile ("lb t6, 16(sp)"); 
}

void _exception_handler(){
    asm volatile ("csrw dscratch0, zero");
    while(1)
        ;
}


/*
    Test 01 - load and store on the same memory segment

*/

#include "start.h"

// main.c
int main() {
    asm volatile ("li t0, 0x11111111");
    asm volatile ("li t1, 0x22222222"); 
    asm volatile ("li t2, 0x33333333"); 
    asm volatile ("li t3, 0x44444444"); 
    asm volatile ("li t4, 0x55555555"); 
    asm volatile ("li t5, 0x12345678");
    asm volatile ("li t6, 0x80000000"); 

    asm volatile ("sw t0, 512(t6)"); 
    asm volatile ("lb s0, 512(t6)"); 
    asm volatile ("lh s1, 512(t6)");
    asm volatile ("lw s2, 512(t6)");

    asm volatile ("sw t1, 512(t6)"); 
    asm volatile ("lb s3, 512(t6)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lb s3, 512(t6)"); 
    asm volatile ("sw t2, 512(t6)"); 
    asm volatile ("lh s4, 512(t6)");
    asm volatile ("sw t3, 512(t6)"); 
    asm volatile ("lw s5, 512(t6)");

    asm volatile ("sw t4, 512(t6)"); 
    asm volatile ("lb s6, 512(t6)"); 
    asm volatile ("sw t5, 512(t6)"); 
    asm volatile ("lh s7, 512(t6)");
    asm volatile ("lw s8, 512(t6)");
}


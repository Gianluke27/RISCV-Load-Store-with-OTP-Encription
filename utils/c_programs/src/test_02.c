/*
    Test 01 - load and store on the same memory segment

*/

#include "start.h"

// main.c
int main() {
    asm volatile ("li t0, 0x12345678");
    asm volatile ("li t6, 0x80000000"); 
    asm volatile ("sw t0, 512(t6)"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 

    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("nop");

    asm volatile ("nop");
    asm volatile ("lb s3, 512(t6)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lb s3, 512(t6)");
}


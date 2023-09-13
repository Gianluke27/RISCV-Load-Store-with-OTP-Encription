// main.c


#include "start.h"

// main.c
int main() {
    //*
    int a = 5;
    int b = 10;
    int sum = a + b;

    /*
    short int c = 20;
    short int d = 12;
    short int sum2 = c + d;
    //*/

    asm volatile ("li t5, 0x12345678"); 
    asm volatile ("li t6, 0x80000000"); 
    asm volatile ("sw t5, 512(t6)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lb t0, 512(t6)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lh t1, 512(t6)");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lw t2, 512(t6)");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("li t5, 0x89abcdef"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop"); 
    asm volatile ("sb t5, 520(t6)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop"); 
    asm volatile ("sh t5, 528(t6)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop"); 
    asm volatile ("sw t5, 536(t6)");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lb t0, 520(t6)"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lh t1, 528(t6)");    
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lw t2, 536(t6)");

    //*/

    //asm volatile ("li sp, 0x0f000");
    //asm volatile ("lw s0, 0(sp)");
    /*
    asm volatile ("li t6, 0x80000000"); 
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("lw t0, 512(t6)"); 
    asm volatile ("lw t1, 1024(t6)");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    asm volatile ("nop"); asm volatile ("nop");
    //*/
}


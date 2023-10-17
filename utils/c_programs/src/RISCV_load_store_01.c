/*
    RISC-V Dummy program
*/

#include "start.h"

int main() {
    asm volatile ("add sp, sp, -24"); 
    asm volatile ("li t0, 305419896"); //0x12345678
    asm volatile ("li t1, 2596069104"); //0x9abcdef0
    asm volatile ("li s2, 0"); 
    asm volatile ("li s3, 0"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("sw t0, 0(sp)"); 
    asm volatile ("sw t1, 16(sp)"); 
    asm volatile ("lw s2, 0(sp)");
    asm volatile ("lw s3, 16(sp)");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("li t0, 2596069104"); //0x12345678
    asm volatile ("li t1, 305419896"); //0x9abcdef0
    asm volatile ("li s2, 0"); 
    asm volatile ("li s3, 0"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("lw s2, 0(sp)");
    asm volatile ("lw s3, 16(sp)");
    asm volatile ("sw t0, 0(sp)"); 
    asm volatile ("sw t1, 16(sp)"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("li t0, 305419896"); //0x12345678
    asm volatile ("li t1, 2596069104"); //0x9abcdef0
    asm volatile ("li s2, 0"); 
    asm volatile ("li s3, 0"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("lw s2, 0(sp)");
    asm volatile ("sw t0, 0(sp)"); 
    asm volatile ("lw s3, 16(sp)");
    asm volatile ("sw t1, 16(sp)"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("li t0, 2596069104"); //0x12345678
    asm volatile ("li t1, 305419896"); //0x9abcdef0 
    asm volatile ("li s2, 0"); 
    asm volatile ("li s3, 0"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop");
    asm volatile ("lw s2, 0(sp)");
    asm volatile ("sw t0, 0(sp)"); 
    asm volatile ("sw t1, 16(sp)");
    asm volatile ("lw s3, 16(sp)");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("li t0, 305419896"); //0x12345678
    asm volatile ("li t1, 2596069104"); //0x9abcdef0
    asm volatile ("li s2, 0"); 
    asm volatile ("li s3, 0"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("sw t0, 0(sp)"); 
    asm volatile ("lw s2, 0(sp)");
    asm volatile ("lw s3, 16(sp)");
    asm volatile ("sw t1, 16(sp)");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");
    asm volatile ("nop"); 
    asm volatile ("nop"); 
    asm volatile ("nop");


}

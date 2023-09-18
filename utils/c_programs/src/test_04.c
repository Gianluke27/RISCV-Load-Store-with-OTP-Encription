/*
    Test 01 - load and store on the same memory segment

*/

#include "start.h"

#define DATA_MASK 0x0000000a
#define DATA_MAX  0xffffffff

// main.c
int main() {
    AXIGPIO_setInputDataDirection();

    unsigned int data;
    unsigned int data_write;

    int i,j;
    
    while(1)
    {
        data = AXIGPIO_readData();
        data_write = 0;

        if((data & DATA_MASK))
        {
            data_write = 27;
        }

    }
}

/*
void _exit_loop(void){
    asm volatile ("csrw dscratch0, zero");

    asm volatile ("ecall");

    while(1)
        ;
}
//*/


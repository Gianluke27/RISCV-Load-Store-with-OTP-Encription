/*
    Test 01 - load and store on the same memory segment

*/

#include "start.h"
#include "axi_gpio.h"

#define DATA_MASK 0x0000000f
#define DATA_MAX  0xffffffff

// main.c
int main() {
    AXIGPIO_setInputDataDirection();

    unsigned int data;
    unsigned int data_write;

    int i,j,k;
    
    while(1)
    {
        data = AXIGPIO_readData();
        data_write = 0;

        if((data & DATA_MASK) == 8)
        {
            for(i=0; i<10; i++)
            {
                data_write = data;
                AXIGPIO_writeData(data_write);
                
                for(j=0; j<1000; j++){
                    for(k=0; k<1000; k++){
                        asm volatile ("nop");
                        asm volatile ("nop");
                        asm volatile ("nop");
                        asm volatile ("nop");
                        asm volatile ("nop");
                    }
                }

                data_write = 1;
                AXIGPIO_writeData(data_write);

                for(j=0; j<100000; j++){
                    for(k=0; k<100000; k++){
                        asm volatile ("nop");
                        asm volatile ("nop");
                        asm volatile ("nop");
                        asm volatile ("nop");
                        asm volatile ("nop");
                    }
                }

                while (1)
                {
                    /* code */
                }
                
            }
        }
        else
        {
            data_write = data;
            AXIGPIO_writeData(data_write);
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


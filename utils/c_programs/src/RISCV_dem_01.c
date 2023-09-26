/*
    Test Demonstator 01
    Reading and writing from a gpio device, switching on of the LEDs with 
    2 to 4 decoder functionality. Addition of RGB LEDs to verify memory integrity.

    Wait less time for encrease simulation visibility
*/

#include "start.h"
#include "utils.h"
#include "axi_gpio.h"

// main.c
int main() {
    AXIGPIO_setInputDataDirection();

    unsigned int data;
    
    while(1)
    {
        data = AXIGPIO_readData();
        _wait_us(100);
        AXIGPIO_writeData(data);
    }
}

void _isr_vector(){
    asm volatile ("csrr t0, mcause");
    asm volatile ("csrw dscratch0, zero");
    AXIGPIO_ERROR_writeData(1);
    while(1)
        ;
}

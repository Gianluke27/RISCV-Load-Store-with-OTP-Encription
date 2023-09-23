/*
    Test Demonstator 01
    Reading and writing from a gpio device, switching on of the LEDs with 
    2 to 4 decoder functionality. Addition of RGB LEDs to verify memory integrity.

    Wait less time for encrease simulation visibility
*/

#include "start.h"
//#include "utils.h"

// main.c
int main() {
    
}

void _exception_routine(){
    asm volatile ("csrw dscratch0, zero");
    //AXIGPIO_ERROR_writeData(1);
    while(1)
        ;
}

/*
    Test Demonstator 01
    Reading and writing from a gpio device, switching on of the LEDs with 
    2 to 4 decoder functionality. Addition of RGB LEDs to verify memory integrity.

    Wait less time for encrease simulation visibility
*/

#include "start_demo.h"
#include "utils.h"

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

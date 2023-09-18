/*
    Test 01 - load and store on the same memory segment

*/

#include "start.h"

// main.c
int main() {
    AXIGPIO_setInputDataDirection();

    unsigned int data;
    
    while(1)
    {
        data = AXIGPIO_readData();

        AXIGPIO_writeData(data);
    }
}



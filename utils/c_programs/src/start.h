//#include "axi_gpio.h"

int main(void);

__attribute__((section(".start")))

void _start(void) __attribute__((naked));

void _exception_routine(void) __attribute__((naked));

void _start(void){
    // Set up stack pointer
    asm volatile ("lui	sp,0x80003");
    asm volatile ("add	sp,sp,-448");
    // Set mtvec to point to the exception table
    register void* t0 asm ("t0");
    t0 = &_exception_routine; // Address of isr_vector
    asm volatile ("csrw mtvec, %0" : : "r" (t0));
    // Set _exception_table to point to some address
    register unsigned int t1 asm ("t1");
    t1 = 0x80001df8; // Address of _exception_table
    t0 = (void*) 0x80002200; // Assuming you're setting t0 to some address
    t0 += -520;
    asm volatile ("add %0, %0, %1" : "+r" (t0) : "r" (t1));
    main();
    _exception_routine();
}

/*
void _exit_loop(void){
    asm volatile ("csrw dscratch0, zero");
    //AXIGPIO_ERROR_writeData(1);
    while(1)
        ;
}
//*/
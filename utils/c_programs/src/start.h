//#include "axi_gpio.h"

int main(void);

__attribute__((section(".start")))

void _start(void) __attribute__((naked));

void _isr_vector(void) __attribute__((naked));

void _start(void){
    // Set up stack pointer
    asm volatile ("lui	sp,0x80010");
    asm volatile ("add	sp,sp,-2048"); //8000F7FF
    // Set mtvec to point to the exception table
    register void* t0 asm ("t0");
    t0 = &_isr_vector; // Address of isr_vector
    asm volatile ("csrw mtvec, %0" : : "r" (t0));
    main();
    _isr_vector();
}
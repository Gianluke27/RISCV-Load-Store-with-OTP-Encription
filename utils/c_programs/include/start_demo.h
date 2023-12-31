__attribute__((section(".start")))
void _start(void) __attribute__((naked));

void _exception_handler(void) __attribute__((naked));

void _isr_vector(void) __attribute__((naked));

void _exit_loop(void) __attribute__((naked));

int main(void);

#include "axi_gpio.h"

// Get Exception Number
unsigned int get_exno();

// Return 1 if input number is an exception, 0 otherwise
unsigned int is_exception(unsigned int exno);

// Return 1 if input number is an otp exception, 0 otherwise
unsigned int is_otp_error_exception(unsigned int exno);

void _start(void){
    // Set up stack pointer
    asm volatile ("lui	sp,0x80010");
    asm volatile ("add	sp,sp,-2048"); //8000F7FF
    // Set mtvec to point to the exception table
    register void* t0 asm ("t0");
    t0 = &_isr_vector; // Address of isr_vector
    asm volatile ("csrw mtvec, %0" : : "r" (t0));
    main();
    _exit_loop();
}

void _isr_vector(void){
    asm volatile ("add	sp,sp,-140");
    asm volatile ("sw	t6,136(sp)");
    asm volatile ("sw	t5,132(sp)");
    asm volatile ("sw	t4,128(sp)");
    asm volatile ("sw	t3,124(sp)");
    asm volatile ("sw	s11,120(sp)");
    asm volatile ("sw	s10,116(sp)");
    asm volatile ("sw	s9,112(sp)");
    asm volatile ("sw	s8,108(sp)");
    asm volatile ("sw	s7,104(sp)");
    asm volatile ("sw	s6,100(sp)");
    asm volatile ("sw	s5,96(sp)");
    asm volatile ("sw	s4,92(sp)");
    asm volatile ("sw	s3,88(sp)");
    asm volatile ("sw	s2,84(sp)");
    asm volatile ("sw	a7,80(sp)");
    asm volatile ("sw	a6,76(sp)");
    asm volatile ("sw	a5,72(sp)");
    asm volatile ("sw	a4,68(sp)");
    asm volatile ("sw	a3,64(sp)");
    asm volatile ("sw	a2,60(sp)");
    asm volatile ("sw	a1,56(sp)");
    asm volatile ("sw	a0,52(sp)");
    asm volatile ("sw	s1,48(sp)");
    asm volatile ("sw	s0,44(sp)");
    asm volatile ("sw	t2,40(sp)");
    asm volatile ("sw	t1,36(sp)");
    asm volatile ("sw	t0,32(sp)");
    asm volatile ("sw	gp,24(sp)");
    asm volatile ("sw	sp,20(sp)");
    asm volatile ("sw	ra,16(sp)");
    asm volatile ("csrr	s0,mcause");
    asm volatile ("sw	s0,8(sp)");
    asm volatile ("csrr	s0,mstatus");
    asm volatile ("sw	s0,4(sp)");
    asm volatile ("csrr	s0,mepc");
    asm volatile ("sw	s0,0(sp)");
    asm volatile ("mv	a0,sp");
    _exception_handler();
}         	

unsigned int get_exno(){
    unsigned int mcause;
    asm volatile ("csrr %0, mcause" : "=r" (mcause));
    return mcause;
}


unsigned int is_exception(unsigned int exno){
    return (exno != 0);
}

unsigned int is_otp_load_error_exception(unsigned int exno){
    return (exno == 29);
}

void _exception_handler(void){
    unsigned int exno = get_exno();
    if(is_otp_load_error_exception(exno))
        AXIGPIO_ERROR_writeData(1);   // RGB LED -> RED
    else if(is_exception(exno))
        AXIGPIO_ERROR_writeData(1);   // RGB LED -> BLUE
    else
        AXIGPIO_ERROR_writeData(1);   // RGB LED -> GREEN
    asm volatile ("csrw dscratch0, zero");
    _exit_loop();
}

/*
void _exception_handler(void){
    unsigned int exno = get_exno();
    if(is_otp_load_error_exception(exno))
        AXIGPIO_writeData(4);   // RGB LED -> RED
    else if(is_exception(exno))
        AXIGPIO_writeData(1);   // RGB LED -> BLUE
    else
        AXIGPIO_writeData(2);   // RGB LED -> GREEN
    asm volatile ("csrw dscratch0, zero");
    _exit_loop();
}
*/

void _exit_loop(void){
    asm volatile ("csrw dscratch0, zero");
    while(1);
}
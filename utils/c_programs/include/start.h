__attribute__((section(".start")))

void _start(void) __attribute__((naked));

void _exception_handler(void) __attribute__((naked));

void _isr_vector(void) __attribute__((naked));

void _exit_loop(void) __attribute__((naked));

int main(void);

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

void _exception_handler(){
    _exit_loop();
}

void _exit_loop(void){
    asm volatile ("csrw dscratch0, zero");
    while(1);
}
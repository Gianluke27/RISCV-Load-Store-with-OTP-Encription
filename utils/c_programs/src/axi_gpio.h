#define AXI_GPIO_BASEADDR 0x40000000
#define AXI_GPIO_TRI1 (AXI_GPIO_BASEADDR+0x4)
#define AXI_GPIO_DATA1 (AXI_GPIO_BASEADDR+0x0)
#define AXI_GPIO2_TRI1 (AXI_GPIO_BASEADDR+0xc)
#define AXI_GPIO2_DATA1 (AXI_GPIO_BASEADDR+0x8)

void AXIGPIO_writeData(unsigned int data){
    register unsigned int t0 asm ("t0");
    register unsigned int t1 asm ("t1");

    t0 = AXI_GPIO2_DATA1;
    t1 = data;
    asm volatile ("sw t1, 0(t0)");

    return;
}

void AXIGPIO_setInputDataDirection(){
    register unsigned int t0 asm ("t0");
    register unsigned int t1 asm ("t1");

    t0 = AXI_GPIO_TRI1;
    t1 = 0xFFFFFFFF;
    asm volatile ("sw t1, 0(t0)");

    return;
}

unsigned int AXIGPIO_readData(){
    register unsigned int t0 asm ("t0");
    register unsigned int t1 asm ("t1");

    t0 = AXI_GPIO_DATA1;
    asm volatile ("lw t1, 0(t0)");

    return t1;
}
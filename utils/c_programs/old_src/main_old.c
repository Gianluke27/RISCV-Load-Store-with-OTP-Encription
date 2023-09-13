// main.c
asm ("li sp, 0x10000");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
asm ("li s0, 27");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
asm ("add sp, sp, -36");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
asm ("sw s0, 0(sp)");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
asm ("add s0, s0, s0");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
asm ("sw s0, 32(sp)");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
asm ("lw t0, 0(sp)");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
asm ("lw t1, 32(sp)");
asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");asm ("nop");
//asm ("csrw	dscratch0,zero");
asm ("ecall");

/*
asm ("li s0, 27");
asm ("sw s0, 0(sp)");
asm ("li s0, 9");
asm ("sw s0, 4(sp)");
asm ("lw t0, 0(sp)");
asm ("lw t1, 4(sp)");
asm ("lw t2, 0(sp)");
asm ("sw t1, 0(sp)");
//*/

/*
int main() {
    /*
    int a = 5;
    int b = 10;
    int sum = a + b;
    */

    //int i = 10;

    /*
    int vett[10];

    vett[0] = 1;
    vett[1] = 1;
    for(int i=2; i<10; i++)
    {
        vett[i] = vett[i-1] + vett[i-2]; 
    }

    int sum = 0;
    for(int i=0; i<10; i++)
    {
        sum += vett[i];
    }
    //*/
    // RISC-V inline assembly to write zero to the dscratch0 CSR
    //asm volatile("ecall");
    //asm volatile("ebreak");
    
    /*
    // Inline assembly with GCC syntax for add, subtract, and multiply instructions
    asm volatile (
        "add %0, %1, %2"      // Add a and b and store the result in sum
        : "=r" (sum)          // Output operand list (sum is an output)
        : "r" (a), "r" (b)    // Input operand list (a and b are inputs)
    );

    asm volatile (
        "sub %0, %1, %2"      // Subtract b from a and store the result in difference
        : "=r" (difference)   // Output operand list (difference is an output)
        : "r" (a), "r" (b)    // Input operand list (a and b are inputs)
    );

    asm volatile (
        "mul %0, %1, %2"      // Multiply a and b and store the result in product
        : "=r" (product)      // Output operand list (product is an output)
        : "r" (a), "r" (b)    // Input operand list (a and b are inputs)
    );
    //*/

//}
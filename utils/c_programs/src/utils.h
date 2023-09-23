void _wait_ms(unsigned int time_ms);
void _wait_us(unsigned int time_ms);

// Clock period in ns
#define CLOCK_PERIOD    40 //25MHz
#define CLOCK_FREQ      25000000    //25MHz
#define COUNT_PER_MS    25000       //CLOCK_FREQ/1000
#define COUNT_PER_US    25          //CLOCK_FREQ/1000

void _wait_ms(unsigned int time_ms){
    unsigned int val = time_ms * COUNT_PER_MS;
    
    register unsigned int t0 asm ("t0");
    asm volatile ("csrr %0, mcycle" : : "r" (t0));

    register unsigned int t1 asm ("t1");
    
    if(t0+val < t0){
        asm volatile ("csrr %0, mcycleh" : : "r" (t1));
        register unsigned int t2 asm ("t2");
        do{
            asm volatile ("csrr %0, mcycleh" : : "r" (t2));
        }while(t1 == t2);
    }
    do{
        asm volatile ("csrr %0, mcycle" : : "r" (t1));
    }while(t1<t0+val);

    /*
    register unsigned int t0 asm ("t0");
    t0 = time_ms * COUNT_PER_MS;
    
    register unsigned int t1 asm ("t1");
    asm volatile ("csrr %0, mcycle" : : "r" (t1));

    register unsigned int t2 asm ("t2");
    asm volatile ("add t2, t0, t1");

    if(t2 > t0+t1){
        t0 = 0;
    }
    else{
        t0 = 10;
    }

    */

    /*
    asm volatile ("csrr %0, mcycle" : : "r" (t1));
    //*/
    /*
    do{
        asm volatile ("csrr %0, mcycle" : : "r" (t0));
    }while(t0 > time_ms * CLOCK_FREQ/1000);
    //*/
}

void _wait_us(unsigned int time_us){
    unsigned int val = time_us * COUNT_PER_US;
    
    register unsigned int t0 asm ("t0");
    asm volatile ("csrr %0, mcycle" : : "r" (t0));

    register unsigned int t1 asm ("t1");
    
    if(t0+val < t0){
        asm volatile ("csrr %0, mcycleh" : : "r" (t1));
        register unsigned int t2 asm ("t2");
        do{
            asm volatile ("csrr %0, mcycleh" : : "r" (t2));
        }while(t1 == t2);
    }
    do{
        asm volatile ("csrr %0, mcycle" : : "r" (t1));
    }while(t1<t0+val);
}
/*
void _wait_us(int time_us){
    
    int i;
    for(int i=0; i<time_us*CLOCK_PERIOD/5*(CLOCK_FREQ/1000000); i++)
    { 
        asm volatile("nop");
    }
}
*/
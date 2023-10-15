#ifndef __UTILS_H
#define __UTILS_H

extern void setStats(int enable);

#include <stdint.h>

#define static_assert(cond) switch(0) { case 0: case !!(long)(cond): ; }

static int verify(int n, const volatile int* test, const int* verify)
{
  int i;
  // Unrolled for faster verification
  for (i = 0; i < n/2*2; i+=2)
  {
    int t0 = test[i], t1 = test[i+1];
    int v0 = verify[i], v1 = verify[i+1];
    if (t0 != v0) return i+1;
    if (t1 != v1) return i+2;
  }
  if (n % 2 != 0 && test[n-1] != verify[n-1])
    return n;
  return 0;
}

static uint64_t lfsr(uint64_t x)
{
  uint64_t bit = (x ^ (x >> 1)) & 1;
  return (x >> 1) | (bit << 62);
}

static uintptr_t insn_len(uintptr_t pc)
{
  return (*(unsigned short*)pc & 3) ? 4 : 2;
}

#define stringify_1(s) #s
#define stringify(s) stringify_1(s)
#define stats(code, iter) do { \
    unsigned long _c = -read_csr(mcycle), _i = -read_csr(minstret); \
    code; \
    _c += read_csr(mcycle), _i += read_csr(minstret); \
    if (cid == 0) \
      printf("\n%s: %ld cycles, %ld.%ld cycles/iter, %ld.%ld CPI\n", \
             stringify(code), _c, _c/iter, 10*_c/iter%10, _c/_i, 10*_c/_i%10); \
  } while(0)


/*
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
//*/
#endif //__UTILS_H
/*
    Test Demonstator 01
    Reading and writing from a gpio device, switching on of the LEDs with 
    2 to 4 decoder functionality. Addition of RGB LEDs to verify memory integrity.

    Wait less time for encrease simulation visibility
*/

#include "start.h"

#define N 4000

// main.c
int main() {
    int A[N], B[N];
    int i,k=1;
    int sum;

    while(k != 0){
        for(i=0; i<N; i++){
            A[i] = (N-i)*k;
        }

        for(i=0; i<N; i=i+10){
            B[i] = A[i] * (100 % (i));
            B[i+1] = A[i+1] * (100 % (i+1));
            B[i+2] = A[i+2] * (100 % (i+2));
            B[i+3] = A[i+3] * (100 % (i+3));
            B[i+4] = A[i+4] * (100 % (i+4));
            B[i+5] = A[i+5] * (100 % (i+5));
            B[i+6] = A[i+6] * (100 % (i+6));
            B[i+7] = A[i+7] * (100 % (i+7));
            B[i+8] = A[i+8] * (100 % (i+8));
            B[i+9] = A[i+9] * (100 % (i+9));
        }
        
        sum = 0;
        for(i=0; i<N; i=i+10){
            sum += B[i];
            sum += B[i+1];
            sum += B[i+2];
            sum += B[i+3];
            sum += B[i+4];
            sum += B[i+5];
            sum += B[i+6];
            sum += B[i+7];
            sum += B[i+8];
            sum += B[i+9];
        }

        asm volatile("nop");
        asm volatile("nop");
        asm volatile("nop");
        asm volatile("nop");
        asm volatile("nop");

        k++;
    }
}

void _isr_vector(){
    asm volatile ("csrr t0, mcause");
    asm volatile ("csrw dscratch0, zero");
    while(1)
        ;
}

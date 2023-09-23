/*
    Test 01 - load and store on the same memory segment

*/

#include "start.h"

#define ARRAY_LEN 1000

// main.c
int main() {
    //AXIGPIO_setInputDataDirection();
    int array[ARRAY_LEN];
    int sum = 0;

    int i,j;

    //*
    while(1){
        sum = 0;
        for(i=1; i<=ARRAY_LEN; i++){
            array[i] = i;
        }

        for(j=1; j<=ARRAY_LEN; j++){
            sum += array[j];
        }
    }
    //*/
}


#include "start.h"
// See LICENSE for license details.

//**************************************************************************
// Vector-vector add benchmark
//--------------------------------------------------------------------------
//
// This benchmark uses adds to vectors and writes the results to a
// third vector. The input data (and reference data) should be
// generated using the vvadd_gendata.pl perl script and dumped
// to a file named dataset1.h.
 
#include "utils.h"

//--------------------------------------------------------------------------
// Input/Reference Data

#include "vvadd_dataset.h"

//--------------------------------------------------------------------------
// vvadd function

void vvadd( int n, int a[], int b[], int c[] )
{
  int i;
  for ( i = 0; i < n; i++ )
    c[i] = a[i] + b[i];
}

//--------------------------------------------------------------------------
// Main

int main()
{
  int results_data[DATA_SIZE];

  // Do the vvadd
  vvadd( DATA_SIZE, input1_data, input2_data, results_data );

  // Check the results
  return verify( DATA_SIZE, results_data, verify_data );
}

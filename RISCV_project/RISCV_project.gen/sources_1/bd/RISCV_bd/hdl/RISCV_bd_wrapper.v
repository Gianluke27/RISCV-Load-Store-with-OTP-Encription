//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Fri Oct 13 22:07:49 2023
//Host        : Gianluca running 64-bit major release  (build 9200)
//Command     : generate_target RISCV_bd_wrapper.bd
//Design      : RISCV_bd_wrapper
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

module RISCV_bd_wrapper
   (LED,
    reset,
    sysclk);
  output [2:0]LED;
  input reset;
  input sysclk;

  wire [2:0]LED;
  wire reset;
  wire sysclk;

  RISCV_bd RISCV_bd_i
       (.LED(LED),
        .reset(reset),
        .sysclk(sysclk));
endmodule

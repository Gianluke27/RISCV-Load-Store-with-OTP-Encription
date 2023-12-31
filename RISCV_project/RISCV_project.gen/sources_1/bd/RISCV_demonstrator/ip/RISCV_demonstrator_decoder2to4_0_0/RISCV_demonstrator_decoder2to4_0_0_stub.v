// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Tue Sep 12 16:00:43 2023
// Host        : Gianluca running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top RISCV_demonstrator_decoder2to4_0_0 -prefix
//               RISCV_demonstrator_decoder2to4_0_0_ RISCV_demonstrator_decoder2to4_0_0_stub.v
// Design      : RISCV_demonstrator_decoder2to4_0_0
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "decoder2to4,Vivado 2021.2" *)
module RISCV_demonstrator_decoder2to4_0_0(A, Y)
/* synthesis syn_black_box black_box_pad_pin="A[1:0],Y[3:0]" */;
  input [1:0]A;
  output [3:0]Y;
endmodule

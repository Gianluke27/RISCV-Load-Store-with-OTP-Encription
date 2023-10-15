// Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
// Date        : Sun Oct  8 13:10:36 2023
// Host        : Gianluca running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode synth_stub -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ RISCV_demonstrator_riscv_wrapper_0_1_stub.v
// Design      : RISCV_demonstrator_riscv_wrapper_0_1
// Purpose     : Stub declaration of top-level module interface
// Device      : xc7z020clg400-1
// --------------------------------------------------------------------------------

// This empty module with port declaration file causes synthesis tools to infer a black box for IP.
// The synthesis directives are for Synopsys Synplify support to prevent IO buffer insertion.
// Please paste the declaration into a Verilog source file or add the file as an additional source.
(* X_CORE_INFO = "riscv_wrapper,Vivado 2021.2" *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix(clk, arstn, s_axil_awaddr, s_axil_awprot, 
  s_axil_awvalid, s_axil_awready, s_axil_wdata, s_axil_wstrb, s_axil_wvalid, s_axil_wready, 
  s_axil_bresp, s_axil_bvalid, s_axil_bready, s_axil_araddr, s_axil_arprot, s_axil_arvalid, 
  s_axil_arready, s_axil_rdata, s_axil_rresp, s_axil_rvalid, s_axil_rready, m_axil_awaddr, 
  m_axil_awprot, m_axil_awvalid, m_axil_awready, m_axil_wdata, m_axil_wstrb, m_axil_wvalid, 
  m_axil_wready, m_axil_bresp, m_axil_bvalid, m_axil_bready, m_axil_araddr, m_axil_arprot, 
  m_axil_arvalid, m_axil_arready, m_axil_rdata, m_axil_rresp, m_axil_rvalid, m_axil_rready)
/* synthesis syn_black_box black_box_pad_pin="clk,arstn,s_axil_awaddr[31:0],s_axil_awprot[2:0],s_axil_awvalid[0:0],s_axil_awready[0:0],s_axil_wdata[31:0],s_axil_wstrb[3:0],s_axil_wvalid[0:0],s_axil_wready[0:0],s_axil_bresp[1:0],s_axil_bvalid[0:0],s_axil_bready[0:0],s_axil_araddr[31:0],s_axil_arprot[2:0],s_axil_arvalid[0:0],s_axil_arready[0:0],s_axil_rdata[31:0],s_axil_rresp[1:0],s_axil_rvalid[0:0],s_axil_rready[0:0],m_axil_awaddr[31:0],m_axil_awprot[2:0],m_axil_awvalid[0:0],m_axil_awready[0:0],m_axil_wdata[31:0],m_axil_wstrb[3:0],m_axil_wvalid[0:0],m_axil_wready[0:0],m_axil_bresp[1:0],m_axil_bvalid[0:0],m_axil_bready[0:0],m_axil_araddr[31:0],m_axil_arprot[2:0],m_axil_arvalid[0:0],m_axil_arready[0:0],m_axil_rdata[31:0],m_axil_rresp[1:0],m_axil_rvalid[0:0],m_axil_rready[0:0]" */;
  input clk;
  input arstn;
  input [31:0]s_axil_awaddr;
  input [2:0]s_axil_awprot;
  input [0:0]s_axil_awvalid;
  output [0:0]s_axil_awready;
  input [31:0]s_axil_wdata;
  input [3:0]s_axil_wstrb;
  input [0:0]s_axil_wvalid;
  output [0:0]s_axil_wready;
  output [1:0]s_axil_bresp;
  output [0:0]s_axil_bvalid;
  input [0:0]s_axil_bready;
  input [31:0]s_axil_araddr;
  input [2:0]s_axil_arprot;
  input [0:0]s_axil_arvalid;
  output [0:0]s_axil_arready;
  output [31:0]s_axil_rdata;
  output [1:0]s_axil_rresp;
  output [0:0]s_axil_rvalid;
  input [0:0]s_axil_rready;
  output [31:0]m_axil_awaddr;
  output [2:0]m_axil_awprot;
  output [0:0]m_axil_awvalid;
  input [0:0]m_axil_awready;
  output [31:0]m_axil_wdata;
  output [3:0]m_axil_wstrb;
  output [0:0]m_axil_wvalid;
  input [0:0]m_axil_wready;
  input [1:0]m_axil_bresp;
  input [0:0]m_axil_bvalid;
  output [0:0]m_axil_bready;
  output [31:0]m_axil_araddr;
  output [2:0]m_axil_arprot;
  output [0:0]m_axil_arvalid;
  input [0:0]m_axil_arready;
  input [31:0]m_axil_rdata;
  input [1:0]m_axil_rresp;
  input [0:0]m_axil_rvalid;
  output [0:0]m_axil_rready;
endmodule

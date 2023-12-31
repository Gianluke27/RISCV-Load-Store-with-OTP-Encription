// (c) Copyright 1995-2023 Xilinx, Inc. All rights reserved.
// 
// This file contains confidential and proprietary information
// of Xilinx, Inc. and is protected under U.S. and
// international copyright and other intellectual property
// laws.
// 
// DISCLAIMER
// This disclaimer is not a license and does not grant any
// rights to the materials distributed herewith. Except as
// otherwise provided in a valid license issued to you by
// Xilinx, and to the maximum extent permitted by applicable
// law: (1) THESE MATERIALS ARE MADE AVAILABLE "AS IS" AND
// WITH ALL FAULTS, AND XILINX HEREBY DISCLAIMS ALL WARRANTIES
// AND CONDITIONS, EXPRESS, IMPLIED, OR STATUTORY, INCLUDING
// BUT NOT LIMITED TO WARRANTIES OF MERCHANTABILITY, NON-
// INFRINGEMENT, OR FITNESS FOR ANY PARTICULAR PURPOSE; and
// (2) Xilinx shall not be liable (whether in contract or tort,
// including negligence, or under any other theory of
// liability) for any loss or damage of any kind or nature
// related to, arising under or in connection with these
// materials, including for any direct, or any indirect,
// special, incidental, or consequential loss or damage
// (including loss of data, profits, goodwill, or any type of
// loss or damage suffered as a result of any action brought
// by a third party) even if such damage or loss was
// reasonably foreseeable or Xilinx had been advised of the
// possibility of the same.
// 
// CRITICAL APPLICATIONS
// Xilinx products are not designed or intended to be fail-
// safe, or for use in any application requiring fail-safe
// performance, such as life-support or safety devices or
// systems, Class III medical devices, nuclear facilities,
// applications related to the deployment of airbags, or any
// other applications that could lead to death, personal
// injury, or severe property or environmental damage
// (individually and collectively, "Critical
// Applications"). Customer assumes the sole risk and
// liability of any use of Xilinx products in Critical
// Applications, subject only to applicable laws and
// regulations governing limitations on product liability.
// 
// THIS COPYRIGHT NOTICE AND DISCLAIMER MUST BE RETAINED AS
// PART OF THIS FILE AT ALL TIMES.
// 
// DO NOT MODIFY THIS FILE.


//------------------------------------------------------------------------------------
// Filename:    RISCV_demonstrator_processing_system7_0_0_stub.sv
// Description: This HDL file is intended to be used with following simulators only:
//
//   Vivado Simulator (XSim)
//   Cadence Xcelium Simulator
//   Aldec Riviera-PRO Simulator
//
//------------------------------------------------------------------------------------
`timescale 1ps/1ps

`ifdef XILINX_SIMULATOR

`ifndef XILINX_SIMULATOR_BITASBOOL
`define XILINX_SIMULATOR_BITASBOOL
typedef bit bit_as_bool;
`endif

(* SC_MODULE_EXPORT *)
module RISCV_demonstrator_processing_system7_0_0 (
  output bit_as_bool M_AXI_GP1_ARVALID,
  output bit_as_bool M_AXI_GP1_AWVALID,
  output bit_as_bool M_AXI_GP1_BREADY,
  output bit_as_bool M_AXI_GP1_RREADY,
  output bit_as_bool M_AXI_GP1_WLAST,
  output bit_as_bool M_AXI_GP1_WVALID,
  output bit [11 : 0] M_AXI_GP1_ARID,
  output bit [11 : 0] M_AXI_GP1_AWID,
  output bit [11 : 0] M_AXI_GP1_WID,
  output bit [1 : 0] M_AXI_GP1_ARBURST,
  output bit [1 : 0] M_AXI_GP1_ARLOCK,
  output bit [2 : 0] M_AXI_GP1_ARSIZE,
  output bit [1 : 0] M_AXI_GP1_AWBURST,
  output bit [1 : 0] M_AXI_GP1_AWLOCK,
  output bit [2 : 0] M_AXI_GP1_AWSIZE,
  output bit [2 : 0] M_AXI_GP1_ARPROT,
  output bit [2 : 0] M_AXI_GP1_AWPROT,
  output bit [31 : 0] M_AXI_GP1_ARADDR,
  output bit [31 : 0] M_AXI_GP1_AWADDR,
  output bit [31 : 0] M_AXI_GP1_WDATA,
  output bit [3 : 0] M_AXI_GP1_ARCACHE,
  output bit [3 : 0] M_AXI_GP1_ARLEN,
  output bit [3 : 0] M_AXI_GP1_ARQOS,
  output bit [3 : 0] M_AXI_GP1_AWCACHE,
  output bit [3 : 0] M_AXI_GP1_AWLEN,
  output bit [3 : 0] M_AXI_GP1_AWQOS,
  output bit [3 : 0] M_AXI_GP1_WSTRB,
  input bit_as_bool M_AXI_GP1_ACLK,
  input bit_as_bool M_AXI_GP1_ARREADY,
  input bit_as_bool M_AXI_GP1_AWREADY,
  input bit_as_bool M_AXI_GP1_BVALID,
  input bit_as_bool M_AXI_GP1_RLAST,
  input bit_as_bool M_AXI_GP1_RVALID,
  input bit_as_bool M_AXI_GP1_WREADY,
  input bit [11 : 0] M_AXI_GP1_BID,
  input bit [11 : 0] M_AXI_GP1_RID,
  input bit [1 : 0] M_AXI_GP1_BRESP,
  input bit [1 : 0] M_AXI_GP1_RRESP,
  input bit [31 : 0] M_AXI_GP1_RDATA,
  output bit_as_bool FCLK_CLK0,
  output bit_as_bool FCLK_RESET0_N,
  output bit [53 : 0] MIO,
  output bit_as_bool DDR_CAS_n,
  output bit_as_bool DDR_CKE,
  output bit_as_bool DDR_Clk_n,
  output bit_as_bool DDR_Clk,
  output bit_as_bool DDR_CS_n,
  output bit_as_bool DDR_DRSTB,
  output bit_as_bool DDR_ODT,
  output bit_as_bool DDR_RAS_n,
  output bit_as_bool DDR_WEB,
  output bit [2 : 0] DDR_BankAddr,
  output bit [14 : 0] DDR_Addr,
  output bit_as_bool DDR_VRN,
  output bit_as_bool DDR_VRP,
  output bit [3 : 0] DDR_DM,
  output bit [31 : 0] DDR_DQ,
  output bit [3 : 0] DDR_DQS_n,
  output bit [3 : 0] DDR_DQS,
  output bit_as_bool PS_SRSTB,
  output bit_as_bool PS_CLK,
  output bit_as_bool PS_PORB
);
endmodule
`endif

`ifdef XCELIUM
(* XMSC_MODULE_EXPORT *)
module RISCV_demonstrator_processing_system7_0_0 (M_AXI_GP1_ARVALID,M_AXI_GP1_AWVALID,M_AXI_GP1_BREADY,M_AXI_GP1_RREADY,M_AXI_GP1_WLAST,M_AXI_GP1_WVALID,M_AXI_GP1_ARID,M_AXI_GP1_AWID,M_AXI_GP1_WID,M_AXI_GP1_ARBURST,M_AXI_GP1_ARLOCK,M_AXI_GP1_ARSIZE,M_AXI_GP1_AWBURST,M_AXI_GP1_AWLOCK,M_AXI_GP1_AWSIZE,M_AXI_GP1_ARPROT,M_AXI_GP1_AWPROT,M_AXI_GP1_ARADDR,M_AXI_GP1_AWADDR,M_AXI_GP1_WDATA,M_AXI_GP1_ARCACHE,M_AXI_GP1_ARLEN,M_AXI_GP1_ARQOS,M_AXI_GP1_AWCACHE,M_AXI_GP1_AWLEN,M_AXI_GP1_AWQOS,M_AXI_GP1_WSTRB,M_AXI_GP1_ACLK,M_AXI_GP1_ARREADY,M_AXI_GP1_AWREADY,M_AXI_GP1_BVALID,M_AXI_GP1_RLAST,M_AXI_GP1_RVALID,M_AXI_GP1_WREADY,M_AXI_GP1_BID,M_AXI_GP1_RID,M_AXI_GP1_BRESP,M_AXI_GP1_RRESP,M_AXI_GP1_RDATA,FCLK_CLK0,FCLK_RESET0_N,MIO,DDR_CAS_n,DDR_CKE,DDR_Clk_n,DDR_Clk,DDR_CS_n,DDR_DRSTB,DDR_ODT,DDR_RAS_n,DDR_WEB,DDR_BankAddr,DDR_Addr,DDR_VRN,DDR_VRP,DDR_DM,DDR_DQ,DDR_DQS_n,DDR_DQS,PS_SRSTB,PS_CLK,PS_PORB)
(* integer foreign = "SystemC";
*);
  output wire M_AXI_GP1_ARVALID;
  output wire M_AXI_GP1_AWVALID;
  output wire M_AXI_GP1_BREADY;
  output wire M_AXI_GP1_RREADY;
  output wire M_AXI_GP1_WLAST;
  output wire M_AXI_GP1_WVALID;
  output wire [11 : 0] M_AXI_GP1_ARID;
  output wire [11 : 0] M_AXI_GP1_AWID;
  output wire [11 : 0] M_AXI_GP1_WID;
  output wire [1 : 0] M_AXI_GP1_ARBURST;
  output wire [1 : 0] M_AXI_GP1_ARLOCK;
  output wire [2 : 0] M_AXI_GP1_ARSIZE;
  output wire [1 : 0] M_AXI_GP1_AWBURST;
  output wire [1 : 0] M_AXI_GP1_AWLOCK;
  output wire [2 : 0] M_AXI_GP1_AWSIZE;
  output wire [2 : 0] M_AXI_GP1_ARPROT;
  output wire [2 : 0] M_AXI_GP1_AWPROT;
  output wire [31 : 0] M_AXI_GP1_ARADDR;
  output wire [31 : 0] M_AXI_GP1_AWADDR;
  output wire [31 : 0] M_AXI_GP1_WDATA;
  output wire [3 : 0] M_AXI_GP1_ARCACHE;
  output wire [3 : 0] M_AXI_GP1_ARLEN;
  output wire [3 : 0] M_AXI_GP1_ARQOS;
  output wire [3 : 0] M_AXI_GP1_AWCACHE;
  output wire [3 : 0] M_AXI_GP1_AWLEN;
  output wire [3 : 0] M_AXI_GP1_AWQOS;
  output wire [3 : 0] M_AXI_GP1_WSTRB;
  input bit M_AXI_GP1_ACLK;
  input bit M_AXI_GP1_ARREADY;
  input bit M_AXI_GP1_AWREADY;
  input bit M_AXI_GP1_BVALID;
  input bit M_AXI_GP1_RLAST;
  input bit M_AXI_GP1_RVALID;
  input bit M_AXI_GP1_WREADY;
  input bit [11 : 0] M_AXI_GP1_BID;
  input bit [11 : 0] M_AXI_GP1_RID;
  input bit [1 : 0] M_AXI_GP1_BRESP;
  input bit [1 : 0] M_AXI_GP1_RRESP;
  input bit [31 : 0] M_AXI_GP1_RDATA;
  output wire FCLK_CLK0;
  output wire FCLK_RESET0_N;
  inout wire [53 : 0] MIO;
  inout wire DDR_CAS_n;
  inout wire DDR_CKE;
  inout wire DDR_Clk_n;
  inout wire DDR_Clk;
  inout wire DDR_CS_n;
  inout wire DDR_DRSTB;
  inout wire DDR_ODT;
  inout wire DDR_RAS_n;
  inout wire DDR_WEB;
  inout wire [2 : 0] DDR_BankAddr;
  inout wire [14 : 0] DDR_Addr;
  inout wire DDR_VRN;
  inout wire DDR_VRP;
  inout wire [3 : 0] DDR_DM;
  inout wire [31 : 0] DDR_DQ;
  inout wire [3 : 0] DDR_DQS_n;
  inout wire [3 : 0] DDR_DQS;
  inout wire PS_SRSTB;
  inout wire PS_CLK;
  inout wire PS_PORB;
endmodule
`endif

`ifdef RIVIERA
(* SC_MODULE_EXPORT *)
module RISCV_demonstrator_processing_system7_0_0 (M_AXI_GP1_ARVALID,M_AXI_GP1_AWVALID,M_AXI_GP1_BREADY,M_AXI_GP1_RREADY,M_AXI_GP1_WLAST,M_AXI_GP1_WVALID,M_AXI_GP1_ARID,M_AXI_GP1_AWID,M_AXI_GP1_WID,M_AXI_GP1_ARBURST,M_AXI_GP1_ARLOCK,M_AXI_GP1_ARSIZE,M_AXI_GP1_AWBURST,M_AXI_GP1_AWLOCK,M_AXI_GP1_AWSIZE,M_AXI_GP1_ARPROT,M_AXI_GP1_AWPROT,M_AXI_GP1_ARADDR,M_AXI_GP1_AWADDR,M_AXI_GP1_WDATA,M_AXI_GP1_ARCACHE,M_AXI_GP1_ARLEN,M_AXI_GP1_ARQOS,M_AXI_GP1_AWCACHE,M_AXI_GP1_AWLEN,M_AXI_GP1_AWQOS,M_AXI_GP1_WSTRB,M_AXI_GP1_ACLK,M_AXI_GP1_ARREADY,M_AXI_GP1_AWREADY,M_AXI_GP1_BVALID,M_AXI_GP1_RLAST,M_AXI_GP1_RVALID,M_AXI_GP1_WREADY,M_AXI_GP1_BID,M_AXI_GP1_RID,M_AXI_GP1_BRESP,M_AXI_GP1_RRESP,M_AXI_GP1_RDATA,FCLK_CLK0,FCLK_RESET0_N,MIO,DDR_CAS_n,DDR_CKE,DDR_Clk_n,DDR_Clk,DDR_CS_n,DDR_DRSTB,DDR_ODT,DDR_RAS_n,DDR_WEB,DDR_BankAddr,DDR_Addr,DDR_VRN,DDR_VRP,DDR_DM,DDR_DQ,DDR_DQS_n,DDR_DQS,PS_SRSTB,PS_CLK,PS_PORB)
  output wire M_AXI_GP1_ARVALID;
  output wire M_AXI_GP1_AWVALID;
  output wire M_AXI_GP1_BREADY;
  output wire M_AXI_GP1_RREADY;
  output wire M_AXI_GP1_WLAST;
  output wire M_AXI_GP1_WVALID;
  output wire [11 : 0] M_AXI_GP1_ARID;
  output wire [11 : 0] M_AXI_GP1_AWID;
  output wire [11 : 0] M_AXI_GP1_WID;
  output wire [1 : 0] M_AXI_GP1_ARBURST;
  output wire [1 : 0] M_AXI_GP1_ARLOCK;
  output wire [2 : 0] M_AXI_GP1_ARSIZE;
  output wire [1 : 0] M_AXI_GP1_AWBURST;
  output wire [1 : 0] M_AXI_GP1_AWLOCK;
  output wire [2 : 0] M_AXI_GP1_AWSIZE;
  output wire [2 : 0] M_AXI_GP1_ARPROT;
  output wire [2 : 0] M_AXI_GP1_AWPROT;
  output wire [31 : 0] M_AXI_GP1_ARADDR;
  output wire [31 : 0] M_AXI_GP1_AWADDR;
  output wire [31 : 0] M_AXI_GP1_WDATA;
  output wire [3 : 0] M_AXI_GP1_ARCACHE;
  output wire [3 : 0] M_AXI_GP1_ARLEN;
  output wire [3 : 0] M_AXI_GP1_ARQOS;
  output wire [3 : 0] M_AXI_GP1_AWCACHE;
  output wire [3 : 0] M_AXI_GP1_AWLEN;
  output wire [3 : 0] M_AXI_GP1_AWQOS;
  output wire [3 : 0] M_AXI_GP1_WSTRB;
  input bit M_AXI_GP1_ACLK;
  input bit M_AXI_GP1_ARREADY;
  input bit M_AXI_GP1_AWREADY;
  input bit M_AXI_GP1_BVALID;
  input bit M_AXI_GP1_RLAST;
  input bit M_AXI_GP1_RVALID;
  input bit M_AXI_GP1_WREADY;
  input bit [11 : 0] M_AXI_GP1_BID;
  input bit [11 : 0] M_AXI_GP1_RID;
  input bit [1 : 0] M_AXI_GP1_BRESP;
  input bit [1 : 0] M_AXI_GP1_RRESP;
  input bit [31 : 0] M_AXI_GP1_RDATA;
  output wire FCLK_CLK0;
  output wire FCLK_RESET0_N;
  inout wire [53 : 0] MIO;
  inout wire DDR_CAS_n;
  inout wire DDR_CKE;
  inout wire DDR_Clk_n;
  inout wire DDR_Clk;
  inout wire DDR_CS_n;
  inout wire DDR_DRSTB;
  inout wire DDR_ODT;
  inout wire DDR_RAS_n;
  inout wire DDR_WEB;
  inout wire [2 : 0] DDR_BankAddr;
  inout wire [14 : 0] DDR_Addr;
  inout wire DDR_VRN;
  inout wire DDR_VRP;
  inout wire [3 : 0] DDR_DM;
  inout wire [31 : 0] DDR_DQ;
  inout wire [3 : 0] DDR_DQS_n;
  inout wire [3 : 0] DDR_DQS;
  inout wire PS_SRSTB;
  inout wire PS_CLK;
  inout wire PS_PORB;
endmodule
`endif

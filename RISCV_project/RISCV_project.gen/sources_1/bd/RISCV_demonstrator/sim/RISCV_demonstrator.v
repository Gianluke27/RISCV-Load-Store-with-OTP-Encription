//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Mon Sep 11 23:51:36 2023
//Host        : Gianluca running 64-bit major release  (build 9200)
//Command     : generate_target RISCV_demonstrator.bd
//Design      : RISCV_demonstrator
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RISCV_demonstrator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RISCV_demonstrator,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=5,numReposBlks=5,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=2,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=3,da_board_cnt=11,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "RISCV_demonstrator.hwdef" *) 
module RISCV_demonstrator
   (A,
    LED,
    reset,
    sysclk);
  input [1:0]A;
  output [3:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN RISCV_demonstrator_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysclk;

  wire [1:0]A_0_1;
  wire [3:0]axi_gpio_0_gpio2_io_o;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire [3:0]decoder_0_Y;
  wire reset_rtl_1;
  wire [31:0]riscv_wrapper_0_m_axil_ARADDR;
  wire riscv_wrapper_0_m_axil_ARREADY;
  wire [0:0]riscv_wrapper_0_m_axil_ARVALID;
  wire [31:0]riscv_wrapper_0_m_axil_AWADDR;
  wire riscv_wrapper_0_m_axil_AWREADY;
  wire [0:0]riscv_wrapper_0_m_axil_AWVALID;
  wire [0:0]riscv_wrapper_0_m_axil_BREADY;
  wire [1:0]riscv_wrapper_0_m_axil_BRESP;
  wire riscv_wrapper_0_m_axil_BVALID;
  wire [31:0]riscv_wrapper_0_m_axil_RDATA;
  wire [0:0]riscv_wrapper_0_m_axil_RREADY;
  wire [1:0]riscv_wrapper_0_m_axil_RRESP;
  wire riscv_wrapper_0_m_axil_RVALID;
  wire [31:0]riscv_wrapper_0_m_axil_WDATA;
  wire riscv_wrapper_0_m_axil_WREADY;
  wire [3:0]riscv_wrapper_0_m_axil_WSTRB;
  wire [0:0]riscv_wrapper_0_m_axil_WVALID;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire sys_clock_1;

  assign A_0_1 = A[1:0];
  assign LED[3:0] = axi_gpio_0_gpio2_io_o;
  assign reset_rtl_1 = reset;
  assign sys_clock_1 = sysclk;
  RISCV_demonstrator_axi_gpio_0_1 axi_gpio_0
       (.gpio2_io_o(axi_gpio_0_gpio2_io_o),
        .gpio_io_i(decoder_0_Y),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(riscv_wrapper_0_m_axil_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(riscv_wrapper_0_m_axil_ARREADY),
        .s_axi_arvalid(riscv_wrapper_0_m_axil_ARVALID),
        .s_axi_awaddr(riscv_wrapper_0_m_axil_AWADDR[8:0]),
        .s_axi_awready(riscv_wrapper_0_m_axil_AWREADY),
        .s_axi_awvalid(riscv_wrapper_0_m_axil_AWVALID),
        .s_axi_bready(riscv_wrapper_0_m_axil_BREADY),
        .s_axi_bresp(riscv_wrapper_0_m_axil_BRESP),
        .s_axi_bvalid(riscv_wrapper_0_m_axil_BVALID),
        .s_axi_rdata(riscv_wrapper_0_m_axil_RDATA),
        .s_axi_rready(riscv_wrapper_0_m_axil_RREADY),
        .s_axi_rresp(riscv_wrapper_0_m_axil_RRESP),
        .s_axi_rvalid(riscv_wrapper_0_m_axil_RVALID),
        .s_axi_wdata(riscv_wrapper_0_m_axil_WDATA),
        .s_axi_wready(riscv_wrapper_0_m_axil_WREADY),
        .s_axi_wstrb(riscv_wrapper_0_m_axil_WSTRB),
        .s_axi_wvalid(riscv_wrapper_0_m_axil_WVALID));
  RISCV_demonstrator_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(reset_rtl_1));
  RISCV_demonstrator_decoder_0_0 decoder_0
       (.A(A_0_1),
        .Y(decoder_0_Y));
  RISCV_demonstrator_riscv_wrapper_0_1 riscv_wrapper_0
       (.arstn(rst_clk_wiz_100M_peripheral_aresetn),
        .clk(clk_wiz_clk_out1),
        .m_axil_araddr(riscv_wrapper_0_m_axil_ARADDR),
        .m_axil_arready(riscv_wrapper_0_m_axil_ARREADY),
        .m_axil_arvalid(riscv_wrapper_0_m_axil_ARVALID),
        .m_axil_awaddr(riscv_wrapper_0_m_axil_AWADDR),
        .m_axil_awready(riscv_wrapper_0_m_axil_AWREADY),
        .m_axil_awvalid(riscv_wrapper_0_m_axil_AWVALID),
        .m_axil_bready(riscv_wrapper_0_m_axil_BREADY),
        .m_axil_bresp(riscv_wrapper_0_m_axil_BRESP),
        .m_axil_bvalid(riscv_wrapper_0_m_axil_BVALID),
        .m_axil_rdata(riscv_wrapper_0_m_axil_RDATA),
        .m_axil_rready(riscv_wrapper_0_m_axil_RREADY),
        .m_axil_rresp(riscv_wrapper_0_m_axil_RRESP),
        .m_axil_rvalid(riscv_wrapper_0_m_axil_RVALID),
        .m_axil_wdata(riscv_wrapper_0_m_axil_WDATA),
        .m_axil_wready(riscv_wrapper_0_m_axil_WREADY),
        .m_axil_wstrb(riscv_wrapper_0_m_axil_WSTRB),
        .m_axil_wvalid(riscv_wrapper_0_m_axil_WVALID),
        .s_axil_araddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_arprot({1'b0,1'b0,1'b0}),
        .s_axil_arvalid(1'b0),
        .s_axil_awaddr({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_awprot({1'b0,1'b0,1'b0}),
        .s_axil_awvalid(1'b0),
        .s_axil_bready(1'b0),
        .s_axil_rready(1'b0),
        .s_axil_wdata({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .s_axil_wstrb({1'b1,1'b1,1'b1,1'b1}),
        .s_axil_wvalid(1'b0));
  RISCV_demonstrator_rst_clk_wiz_100M_1 rst_clk_wiz_100M
       (.aux_reset_in(reset_rtl_1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule

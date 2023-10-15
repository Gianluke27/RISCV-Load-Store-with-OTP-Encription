//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Fri Oct 13 22:07:49 2023
//Host        : Gianluca running 64-bit major release  (build 9200)
//Command     : generate_target RISCV_bd.bd
//Design      : RISCV_bd
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RISCV_bd,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RISCV_bd,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=4,numReposBlks=4,numNonXlnxBlks=0,numHierBlks=0,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=1,numPkgbdBlks=0,bdsource=USER,da_board_cnt=3,da_clkrst_cnt=1,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "RISCV_bd.hwdef" *) 
module RISCV_bd
   (LED,
    reset,
    sysclk);
  output [2:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN RISCV_bd_sysclk, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysclk;

  wire [2:0]axi_gpio_0_gpio_io_o;
  wire clk_wiz_0_clk_out1;
  wire clk_wiz_0_locked;
  wire [0:0]proc_sys_reset_0_peripheral_aresetn;
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
  wire sys_clock_1;

  assign LED[2:0] = axi_gpio_0_gpio_io_o;
  assign reset_rtl_1 = reset;
  assign sys_clock_1 = sysclk;
  RISCV_bd_axi_gpio_0_0 axi_gpio_0
       (.gpio_io_o(axi_gpio_0_gpio_io_o),
        .s_axi_aclk(clk_wiz_0_clk_out1),
        .s_axi_araddr(riscv_wrapper_0_m_axil_ARADDR[8:0]),
        .s_axi_aresetn(proc_sys_reset_0_peripheral_aresetn),
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
  RISCV_bd_clk_wiz_0_0 clk_wiz_0
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_0_clk_out1),
        .locked(clk_wiz_0_locked),
        .reset(reset_rtl_1));
  RISCV_bd_proc_sys_reset_0_0 proc_sys_reset_0
       (.aux_reset_in(1'b1),
        .dcm_locked(clk_wiz_0_locked),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(proc_sys_reset_0_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_0_clk_out1));
  RISCV_bd_riscv_wrapper_0_1 riscv_wrapper_0
       (.arstn(proc_sys_reset_0_peripheral_aresetn),
        .clk(clk_wiz_0_clk_out1),
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
endmodule

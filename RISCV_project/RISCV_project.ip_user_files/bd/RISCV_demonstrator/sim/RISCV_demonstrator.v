//Copyright 1986-2021 Xilinx, Inc. All Rights Reserved.
//--------------------------------------------------------------------------------
//Tool Version: Vivado v.2021.2 (win64) Build 3367213 Tue Oct 19 02:48:09 MDT 2021
//Date        : Tue Sep 12 12:53:05 2023
//Host        : Gianluca running 64-bit major release  (build 9200)
//Command     : generate_target RISCV_demonstrator.bd
//Design      : RISCV_demonstrator
//Purpose     : IP block netlist
//--------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CORE_GENERATION_INFO = "RISCV_demonstrator,IP_Integrator,{x_ipVendor=xilinx.com,x_ipLibrary=BlockDiagram,x_ipName=RISCV_demonstrator,x_ipVersion=1.00.a,x_ipLanguage=VERILOG,numBlks=12,numReposBlks=8,numNonXlnxBlks=0,numHierBlks=4,maxHierDepth=0,numSysgenBlks=0,numHlsBlks=0,numHdlrefBlks=3,numPkgbdBlks=0,bdsource=USER,da_axi4_cnt=5,da_board_cnt=12,da_clkrst_cnt=5,synth_mode=OOC_per_IP}" *) (* HW_HANDOFF = "RISCV_demonstrator.hwdef" *) 
module RISCV_demonstrator
   (A,
    ENC_LED,
    LED,
    reset,
    sysclk);
  input [1:0]A;
  output [1:0]ENC_LED;
  output [3:0]LED;
  (* X_INTERFACE_INFO = "xilinx.com:signal:reset:1.0 RST.RESET RST" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME RST.RESET, INSERT_VIP 0, POLARITY ACTIVE_HIGH" *) input reset;
  (* X_INTERFACE_INFO = "xilinx.com:signal:clock:1.0 CLK.SYSCLK CLK" *) (* X_INTERFACE_PARAMETER = "XIL_INTERFACENAME CLK.SYSCLK, CLK_DOMAIN RISCV_demonstrator_sys_clock, FREQ_HZ 125000000, FREQ_TOLERANCE_HZ 0, INSERT_VIP 0, PHASE 0.0" *) input sysclk;

  wire [1:0]A_1;
  wire [3:0]axi_gpio_0_gpio2_io_o;
  wire [0:0]axi_gpio_1_gpio_io_o;
  wire clk_wiz_clk_out1;
  wire clk_wiz_locked;
  wire [1:0]decoder1to2_0_Y;
  wire [3:0]decoder2to4_0_Y;
  wire reset_rtl_1;
  wire [31:0]riscv_wrapper_0_axi_periph_M00_AXI_ARADDR;
  wire riscv_wrapper_0_axi_periph_M00_AXI_ARREADY;
  wire [0:0]riscv_wrapper_0_axi_periph_M00_AXI_ARVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_M00_AXI_AWADDR;
  wire riscv_wrapper_0_axi_periph_M00_AXI_AWREADY;
  wire [0:0]riscv_wrapper_0_axi_periph_M00_AXI_AWVALID;
  wire [0:0]riscv_wrapper_0_axi_periph_M00_AXI_BREADY;
  wire [1:0]riscv_wrapper_0_axi_periph_M00_AXI_BRESP;
  wire riscv_wrapper_0_axi_periph_M00_AXI_BVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_M00_AXI_RDATA;
  wire [0:0]riscv_wrapper_0_axi_periph_M00_AXI_RREADY;
  wire [1:0]riscv_wrapper_0_axi_periph_M00_AXI_RRESP;
  wire riscv_wrapper_0_axi_periph_M00_AXI_RVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_M00_AXI_WDATA;
  wire riscv_wrapper_0_axi_periph_M00_AXI_WREADY;
  wire [3:0]riscv_wrapper_0_axi_periph_M00_AXI_WSTRB;
  wire [0:0]riscv_wrapper_0_axi_periph_M00_AXI_WVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_M01_AXI_ARADDR;
  wire riscv_wrapper_0_axi_periph_M01_AXI_ARREADY;
  wire [0:0]riscv_wrapper_0_axi_periph_M01_AXI_ARVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_M01_AXI_AWADDR;
  wire riscv_wrapper_0_axi_periph_M01_AXI_AWREADY;
  wire [0:0]riscv_wrapper_0_axi_periph_M01_AXI_AWVALID;
  wire [0:0]riscv_wrapper_0_axi_periph_M01_AXI_BREADY;
  wire [1:0]riscv_wrapper_0_axi_periph_M01_AXI_BRESP;
  wire riscv_wrapper_0_axi_periph_M01_AXI_BVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_M01_AXI_RDATA;
  wire [0:0]riscv_wrapper_0_axi_periph_M01_AXI_RREADY;
  wire [1:0]riscv_wrapper_0_axi_periph_M01_AXI_RRESP;
  wire riscv_wrapper_0_axi_periph_M01_AXI_RVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_M01_AXI_WDATA;
  wire riscv_wrapper_0_axi_periph_M01_AXI_WREADY;
  wire [3:0]riscv_wrapper_0_axi_periph_M01_AXI_WSTRB;
  wire [0:0]riscv_wrapper_0_axi_periph_M01_AXI_WVALID;
  wire [31:0]riscv_wrapper_0_m_axil_ARADDR;
  wire [2:0]riscv_wrapper_0_m_axil_ARPROT;
  wire [0:0]riscv_wrapper_0_m_axil_ARREADY;
  wire [0:0]riscv_wrapper_0_m_axil_ARVALID;
  wire [31:0]riscv_wrapper_0_m_axil_AWADDR;
  wire [2:0]riscv_wrapper_0_m_axil_AWPROT;
  wire [0:0]riscv_wrapper_0_m_axil_AWREADY;
  wire [0:0]riscv_wrapper_0_m_axil_AWVALID;
  wire [0:0]riscv_wrapper_0_m_axil_BREADY;
  wire [1:0]riscv_wrapper_0_m_axil_BRESP;
  wire [0:0]riscv_wrapper_0_m_axil_BVALID;
  wire [31:0]riscv_wrapper_0_m_axil_RDATA;
  wire [0:0]riscv_wrapper_0_m_axil_RREADY;
  wire [1:0]riscv_wrapper_0_m_axil_RRESP;
  wire [0:0]riscv_wrapper_0_m_axil_RVALID;
  wire [31:0]riscv_wrapper_0_m_axil_WDATA;
  wire [0:0]riscv_wrapper_0_m_axil_WREADY;
  wire [3:0]riscv_wrapper_0_m_axil_WSTRB;
  wire [0:0]riscv_wrapper_0_m_axil_WVALID;
  wire [0:0]rst_clk_wiz_100M_peripheral_aresetn;
  wire sys_clock_1;

  assign A_1 = A[1:0];
  assign ENC_LED[1:0] = decoder1to2_0_Y;
  assign LED[3:0] = axi_gpio_0_gpio2_io_o;
  assign reset_rtl_1 = reset;
  assign sys_clock_1 = sysclk;
  RISCV_demonstrator_axi_gpio_0_1 axi_gpio_0
       (.gpio2_io_o(axi_gpio_0_gpio2_io_o),
        .gpio_io_i(decoder2to4_0_Y),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(riscv_wrapper_0_axi_periph_M00_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(riscv_wrapper_0_axi_periph_M00_AXI_ARREADY),
        .s_axi_arvalid(riscv_wrapper_0_axi_periph_M00_AXI_ARVALID),
        .s_axi_awaddr(riscv_wrapper_0_axi_periph_M00_AXI_AWADDR[8:0]),
        .s_axi_awready(riscv_wrapper_0_axi_periph_M00_AXI_AWREADY),
        .s_axi_awvalid(riscv_wrapper_0_axi_periph_M00_AXI_AWVALID),
        .s_axi_bready(riscv_wrapper_0_axi_periph_M00_AXI_BREADY),
        .s_axi_bresp(riscv_wrapper_0_axi_periph_M00_AXI_BRESP),
        .s_axi_bvalid(riscv_wrapper_0_axi_periph_M00_AXI_BVALID),
        .s_axi_rdata(riscv_wrapper_0_axi_periph_M00_AXI_RDATA),
        .s_axi_rready(riscv_wrapper_0_axi_periph_M00_AXI_RREADY),
        .s_axi_rresp(riscv_wrapper_0_axi_periph_M00_AXI_RRESP),
        .s_axi_rvalid(riscv_wrapper_0_axi_periph_M00_AXI_RVALID),
        .s_axi_wdata(riscv_wrapper_0_axi_periph_M00_AXI_WDATA),
        .s_axi_wready(riscv_wrapper_0_axi_periph_M00_AXI_WREADY),
        .s_axi_wstrb(riscv_wrapper_0_axi_periph_M00_AXI_WSTRB),
        .s_axi_wvalid(riscv_wrapper_0_axi_periph_M00_AXI_WVALID));
  RISCV_demonstrator_axi_gpio_1_0 axi_gpio_1
       (.gpio_io_o(axi_gpio_1_gpio_io_o),
        .s_axi_aclk(clk_wiz_clk_out1),
        .s_axi_araddr(riscv_wrapper_0_axi_periph_M01_AXI_ARADDR[8:0]),
        .s_axi_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .s_axi_arready(riscv_wrapper_0_axi_periph_M01_AXI_ARREADY),
        .s_axi_arvalid(riscv_wrapper_0_axi_periph_M01_AXI_ARVALID),
        .s_axi_awaddr(riscv_wrapper_0_axi_periph_M01_AXI_AWADDR[8:0]),
        .s_axi_awready(riscv_wrapper_0_axi_periph_M01_AXI_AWREADY),
        .s_axi_awvalid(riscv_wrapper_0_axi_periph_M01_AXI_AWVALID),
        .s_axi_bready(riscv_wrapper_0_axi_periph_M01_AXI_BREADY),
        .s_axi_bresp(riscv_wrapper_0_axi_periph_M01_AXI_BRESP),
        .s_axi_bvalid(riscv_wrapper_0_axi_periph_M01_AXI_BVALID),
        .s_axi_rdata(riscv_wrapper_0_axi_periph_M01_AXI_RDATA),
        .s_axi_rready(riscv_wrapper_0_axi_periph_M01_AXI_RREADY),
        .s_axi_rresp(riscv_wrapper_0_axi_periph_M01_AXI_RRESP),
        .s_axi_rvalid(riscv_wrapper_0_axi_periph_M01_AXI_RVALID),
        .s_axi_wdata(riscv_wrapper_0_axi_periph_M01_AXI_WDATA),
        .s_axi_wready(riscv_wrapper_0_axi_periph_M01_AXI_WREADY),
        .s_axi_wstrb(riscv_wrapper_0_axi_periph_M01_AXI_WSTRB),
        .s_axi_wvalid(riscv_wrapper_0_axi_periph_M01_AXI_WVALID));
  RISCV_demonstrator_clk_wiz_0 clk_wiz
       (.clk_in1(sys_clock_1),
        .clk_out1(clk_wiz_clk_out1),
        .locked(clk_wiz_locked),
        .reset(reset_rtl_1));
  RISCV_demonstrator_decoder1to2_0_0 decoder1to2_0
       (.A(axi_gpio_1_gpio_io_o),
        .Y(decoder1to2_0_Y));
  RISCV_demonstrator_decoder2to4_0_0 decoder2to4_0
       (.A(A_1),
        .Y(decoder2to4_0_Y));
  RISCV_demonstrator_riscv_wrapper_0_1 riscv_wrapper_0
       (.arstn(rst_clk_wiz_100M_peripheral_aresetn),
        .clk(clk_wiz_clk_out1),
        .m_axil_araddr(riscv_wrapper_0_m_axil_ARADDR),
        .m_axil_arprot(riscv_wrapper_0_m_axil_ARPROT),
        .m_axil_arready(riscv_wrapper_0_m_axil_ARREADY),
        .m_axil_arvalid(riscv_wrapper_0_m_axil_ARVALID),
        .m_axil_awaddr(riscv_wrapper_0_m_axil_AWADDR),
        .m_axil_awprot(riscv_wrapper_0_m_axil_AWPROT),
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
  RISCV_demonstrator_riscv_wrapper_0_axi_periph_0 riscv_wrapper_0_axi_periph
       (.ACLK(clk_wiz_clk_out1),
        .ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_ACLK(clk_wiz_clk_out1),
        .M00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M00_AXI_araddr(riscv_wrapper_0_axi_periph_M00_AXI_ARADDR),
        .M00_AXI_arready(riscv_wrapper_0_axi_periph_M00_AXI_ARREADY),
        .M00_AXI_arvalid(riscv_wrapper_0_axi_periph_M00_AXI_ARVALID),
        .M00_AXI_awaddr(riscv_wrapper_0_axi_periph_M00_AXI_AWADDR),
        .M00_AXI_awready(riscv_wrapper_0_axi_periph_M00_AXI_AWREADY),
        .M00_AXI_awvalid(riscv_wrapper_0_axi_periph_M00_AXI_AWVALID),
        .M00_AXI_bready(riscv_wrapper_0_axi_periph_M00_AXI_BREADY),
        .M00_AXI_bresp(riscv_wrapper_0_axi_periph_M00_AXI_BRESP),
        .M00_AXI_bvalid(riscv_wrapper_0_axi_periph_M00_AXI_BVALID),
        .M00_AXI_rdata(riscv_wrapper_0_axi_periph_M00_AXI_RDATA),
        .M00_AXI_rready(riscv_wrapper_0_axi_periph_M00_AXI_RREADY),
        .M00_AXI_rresp(riscv_wrapper_0_axi_periph_M00_AXI_RRESP),
        .M00_AXI_rvalid(riscv_wrapper_0_axi_periph_M00_AXI_RVALID),
        .M00_AXI_wdata(riscv_wrapper_0_axi_periph_M00_AXI_WDATA),
        .M00_AXI_wready(riscv_wrapper_0_axi_periph_M00_AXI_WREADY),
        .M00_AXI_wstrb(riscv_wrapper_0_axi_periph_M00_AXI_WSTRB),
        .M00_AXI_wvalid(riscv_wrapper_0_axi_periph_M00_AXI_WVALID),
        .M01_ACLK(clk_wiz_clk_out1),
        .M01_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .M01_AXI_araddr(riscv_wrapper_0_axi_periph_M01_AXI_ARADDR),
        .M01_AXI_arready(riscv_wrapper_0_axi_periph_M01_AXI_ARREADY),
        .M01_AXI_arvalid(riscv_wrapper_0_axi_periph_M01_AXI_ARVALID),
        .M01_AXI_awaddr(riscv_wrapper_0_axi_periph_M01_AXI_AWADDR),
        .M01_AXI_awready(riscv_wrapper_0_axi_periph_M01_AXI_AWREADY),
        .M01_AXI_awvalid(riscv_wrapper_0_axi_periph_M01_AXI_AWVALID),
        .M01_AXI_bready(riscv_wrapper_0_axi_periph_M01_AXI_BREADY),
        .M01_AXI_bresp(riscv_wrapper_0_axi_periph_M01_AXI_BRESP),
        .M01_AXI_bvalid(riscv_wrapper_0_axi_periph_M01_AXI_BVALID),
        .M01_AXI_rdata(riscv_wrapper_0_axi_periph_M01_AXI_RDATA),
        .M01_AXI_rready(riscv_wrapper_0_axi_periph_M01_AXI_RREADY),
        .M01_AXI_rresp(riscv_wrapper_0_axi_periph_M01_AXI_RRESP),
        .M01_AXI_rvalid(riscv_wrapper_0_axi_periph_M01_AXI_RVALID),
        .M01_AXI_wdata(riscv_wrapper_0_axi_periph_M01_AXI_WDATA),
        .M01_AXI_wready(riscv_wrapper_0_axi_periph_M01_AXI_WREADY),
        .M01_AXI_wstrb(riscv_wrapper_0_axi_periph_M01_AXI_WSTRB),
        .M01_AXI_wvalid(riscv_wrapper_0_axi_periph_M01_AXI_WVALID),
        .S00_ACLK(clk_wiz_clk_out1),
        .S00_ARESETN(rst_clk_wiz_100M_peripheral_aresetn),
        .S00_AXI_araddr(riscv_wrapper_0_m_axil_ARADDR),
        .S00_AXI_arprot(riscv_wrapper_0_m_axil_ARPROT),
        .S00_AXI_arready(riscv_wrapper_0_m_axil_ARREADY),
        .S00_AXI_arvalid(riscv_wrapper_0_m_axil_ARVALID),
        .S00_AXI_awaddr(riscv_wrapper_0_m_axil_AWADDR),
        .S00_AXI_awprot(riscv_wrapper_0_m_axil_AWPROT),
        .S00_AXI_awready(riscv_wrapper_0_m_axil_AWREADY),
        .S00_AXI_awvalid(riscv_wrapper_0_m_axil_AWVALID),
        .S00_AXI_bready(riscv_wrapper_0_m_axil_BREADY),
        .S00_AXI_bresp(riscv_wrapper_0_m_axil_BRESP),
        .S00_AXI_bvalid(riscv_wrapper_0_m_axil_BVALID),
        .S00_AXI_rdata(riscv_wrapper_0_m_axil_RDATA),
        .S00_AXI_rready(riscv_wrapper_0_m_axil_RREADY),
        .S00_AXI_rresp(riscv_wrapper_0_m_axil_RRESP),
        .S00_AXI_rvalid(riscv_wrapper_0_m_axil_RVALID),
        .S00_AXI_wdata(riscv_wrapper_0_m_axil_WDATA),
        .S00_AXI_wready(riscv_wrapper_0_m_axil_WREADY),
        .S00_AXI_wstrb(riscv_wrapper_0_m_axil_WSTRB),
        .S00_AXI_wvalid(riscv_wrapper_0_m_axil_WVALID));
  RISCV_demonstrator_rst_clk_wiz_100M_1 rst_clk_wiz_100M
       (.aux_reset_in(reset_rtl_1),
        .dcm_locked(clk_wiz_locked),
        .ext_reset_in(reset_rtl_1),
        .mb_debug_sys_rst(1'b0),
        .peripheral_aresetn(rst_clk_wiz_100M_peripheral_aresetn),
        .slowest_sync_clk(clk_wiz_clk_out1));
endmodule

module RISCV_demonstrator_riscv_wrapper_0_axi_periph_0
   (ACLK,
    ARESETN,
    M00_ACLK,
    M00_ARESETN,
    M00_AXI_araddr,
    M00_AXI_arready,
    M00_AXI_arvalid,
    M00_AXI_awaddr,
    M00_AXI_awready,
    M00_AXI_awvalid,
    M00_AXI_bready,
    M00_AXI_bresp,
    M00_AXI_bvalid,
    M00_AXI_rdata,
    M00_AXI_rready,
    M00_AXI_rresp,
    M00_AXI_rvalid,
    M00_AXI_wdata,
    M00_AXI_wready,
    M00_AXI_wstrb,
    M00_AXI_wvalid,
    M01_ACLK,
    M01_ARESETN,
    M01_AXI_araddr,
    M01_AXI_arready,
    M01_AXI_arvalid,
    M01_AXI_awaddr,
    M01_AXI_awready,
    M01_AXI_awvalid,
    M01_AXI_bready,
    M01_AXI_bresp,
    M01_AXI_bvalid,
    M01_AXI_rdata,
    M01_AXI_rready,
    M01_AXI_rresp,
    M01_AXI_rvalid,
    M01_AXI_wdata,
    M01_AXI_wready,
    M01_AXI_wstrb,
    M01_AXI_wvalid,
    S00_ACLK,
    S00_ARESETN,
    S00_AXI_araddr,
    S00_AXI_arprot,
    S00_AXI_arready,
    S00_AXI_arvalid,
    S00_AXI_awaddr,
    S00_AXI_awprot,
    S00_AXI_awready,
    S00_AXI_awvalid,
    S00_AXI_bready,
    S00_AXI_bresp,
    S00_AXI_bvalid,
    S00_AXI_rdata,
    S00_AXI_rready,
    S00_AXI_rresp,
    S00_AXI_rvalid,
    S00_AXI_wdata,
    S00_AXI_wready,
    S00_AXI_wstrb,
    S00_AXI_wvalid);
  input ACLK;
  input ARESETN;
  input M00_ACLK;
  input M00_ARESETN;
  output [31:0]M00_AXI_araddr;
  input [0:0]M00_AXI_arready;
  output [0:0]M00_AXI_arvalid;
  output [31:0]M00_AXI_awaddr;
  input [0:0]M00_AXI_awready;
  output [0:0]M00_AXI_awvalid;
  output [0:0]M00_AXI_bready;
  input [1:0]M00_AXI_bresp;
  input [0:0]M00_AXI_bvalid;
  input [31:0]M00_AXI_rdata;
  output [0:0]M00_AXI_rready;
  input [1:0]M00_AXI_rresp;
  input [0:0]M00_AXI_rvalid;
  output [31:0]M00_AXI_wdata;
  input [0:0]M00_AXI_wready;
  output [3:0]M00_AXI_wstrb;
  output [0:0]M00_AXI_wvalid;
  input M01_ACLK;
  input M01_ARESETN;
  output [31:0]M01_AXI_araddr;
  input [0:0]M01_AXI_arready;
  output [0:0]M01_AXI_arvalid;
  output [31:0]M01_AXI_awaddr;
  input [0:0]M01_AXI_awready;
  output [0:0]M01_AXI_awvalid;
  output [0:0]M01_AXI_bready;
  input [1:0]M01_AXI_bresp;
  input [0:0]M01_AXI_bvalid;
  input [31:0]M01_AXI_rdata;
  output [0:0]M01_AXI_rready;
  input [1:0]M01_AXI_rresp;
  input [0:0]M01_AXI_rvalid;
  output [31:0]M01_AXI_wdata;
  input [0:0]M01_AXI_wready;
  output [3:0]M01_AXI_wstrb;
  output [0:0]M01_AXI_wvalid;
  input S00_ACLK;
  input S00_ARESETN;
  input [31:0]S00_AXI_araddr;
  input [2:0]S00_AXI_arprot;
  output [0:0]S00_AXI_arready;
  input [0:0]S00_AXI_arvalid;
  input [31:0]S00_AXI_awaddr;
  input [2:0]S00_AXI_awprot;
  output [0:0]S00_AXI_awready;
  input [0:0]S00_AXI_awvalid;
  input [0:0]S00_AXI_bready;
  output [1:0]S00_AXI_bresp;
  output [0:0]S00_AXI_bvalid;
  output [31:0]S00_AXI_rdata;
  input [0:0]S00_AXI_rready;
  output [1:0]S00_AXI_rresp;
  output [0:0]S00_AXI_rvalid;
  input [31:0]S00_AXI_wdata;
  output [0:0]S00_AXI_wready;
  input [3:0]S00_AXI_wstrb;
  input [0:0]S00_AXI_wvalid;

  wire [31:0]m00_couplers_to_riscv_wrapper_0_axi_periph_ARADDR;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_ARREADY;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_ARVALID;
  wire [31:0]m00_couplers_to_riscv_wrapper_0_axi_periph_AWADDR;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_AWREADY;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_AWVALID;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_BREADY;
  wire [1:0]m00_couplers_to_riscv_wrapper_0_axi_periph_BRESP;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_BVALID;
  wire [31:0]m00_couplers_to_riscv_wrapper_0_axi_periph_RDATA;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_RREADY;
  wire [1:0]m00_couplers_to_riscv_wrapper_0_axi_periph_RRESP;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_RVALID;
  wire [31:0]m00_couplers_to_riscv_wrapper_0_axi_periph_WDATA;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_WREADY;
  wire [3:0]m00_couplers_to_riscv_wrapper_0_axi_periph_WSTRB;
  wire [0:0]m00_couplers_to_riscv_wrapper_0_axi_periph_WVALID;
  wire [31:0]m01_couplers_to_riscv_wrapper_0_axi_periph_ARADDR;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_ARREADY;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_ARVALID;
  wire [31:0]m01_couplers_to_riscv_wrapper_0_axi_periph_AWADDR;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_AWREADY;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_AWVALID;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_BREADY;
  wire [1:0]m01_couplers_to_riscv_wrapper_0_axi_periph_BRESP;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_BVALID;
  wire [31:0]m01_couplers_to_riscv_wrapper_0_axi_periph_RDATA;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_RREADY;
  wire [1:0]m01_couplers_to_riscv_wrapper_0_axi_periph_RRESP;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_RVALID;
  wire [31:0]m01_couplers_to_riscv_wrapper_0_axi_periph_WDATA;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_WREADY;
  wire [3:0]m01_couplers_to_riscv_wrapper_0_axi_periph_WSTRB;
  wire [0:0]m01_couplers_to_riscv_wrapper_0_axi_periph_WVALID;
  wire riscv_wrapper_0_axi_periph_ACLK_net;
  wire riscv_wrapper_0_axi_periph_ARESETN_net;
  wire [31:0]riscv_wrapper_0_axi_periph_to_s00_couplers_ARADDR;
  wire [2:0]riscv_wrapper_0_axi_periph_to_s00_couplers_ARPROT;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_ARREADY;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_ARVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_to_s00_couplers_AWADDR;
  wire [2:0]riscv_wrapper_0_axi_periph_to_s00_couplers_AWPROT;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_AWREADY;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_AWVALID;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_BREADY;
  wire [1:0]riscv_wrapper_0_axi_periph_to_s00_couplers_BRESP;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_BVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_to_s00_couplers_RDATA;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_RREADY;
  wire [1:0]riscv_wrapper_0_axi_periph_to_s00_couplers_RRESP;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_RVALID;
  wire [31:0]riscv_wrapper_0_axi_periph_to_s00_couplers_WDATA;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_WREADY;
  wire [3:0]riscv_wrapper_0_axi_periph_to_s00_couplers_WSTRB;
  wire [0:0]riscv_wrapper_0_axi_periph_to_s00_couplers_WVALID;
  wire [31:0]s00_couplers_to_xbar_ARADDR;
  wire [2:0]s00_couplers_to_xbar_ARPROT;
  wire [0:0]s00_couplers_to_xbar_ARREADY;
  wire [0:0]s00_couplers_to_xbar_ARVALID;
  wire [31:0]s00_couplers_to_xbar_AWADDR;
  wire [2:0]s00_couplers_to_xbar_AWPROT;
  wire [0:0]s00_couplers_to_xbar_AWREADY;
  wire [0:0]s00_couplers_to_xbar_AWVALID;
  wire [0:0]s00_couplers_to_xbar_BREADY;
  wire [1:0]s00_couplers_to_xbar_BRESP;
  wire [0:0]s00_couplers_to_xbar_BVALID;
  wire [31:0]s00_couplers_to_xbar_RDATA;
  wire [0:0]s00_couplers_to_xbar_RREADY;
  wire [1:0]s00_couplers_to_xbar_RRESP;
  wire [0:0]s00_couplers_to_xbar_RVALID;
  wire [31:0]s00_couplers_to_xbar_WDATA;
  wire [0:0]s00_couplers_to_xbar_WREADY;
  wire [3:0]s00_couplers_to_xbar_WSTRB;
  wire [0:0]s00_couplers_to_xbar_WVALID;
  wire [31:0]xbar_to_m00_couplers_ARADDR;
  wire [0:0]xbar_to_m00_couplers_ARREADY;
  wire [0:0]xbar_to_m00_couplers_ARVALID;
  wire [31:0]xbar_to_m00_couplers_AWADDR;
  wire [0:0]xbar_to_m00_couplers_AWREADY;
  wire [0:0]xbar_to_m00_couplers_AWVALID;
  wire [0:0]xbar_to_m00_couplers_BREADY;
  wire [1:0]xbar_to_m00_couplers_BRESP;
  wire [0:0]xbar_to_m00_couplers_BVALID;
  wire [31:0]xbar_to_m00_couplers_RDATA;
  wire [0:0]xbar_to_m00_couplers_RREADY;
  wire [1:0]xbar_to_m00_couplers_RRESP;
  wire [0:0]xbar_to_m00_couplers_RVALID;
  wire [31:0]xbar_to_m00_couplers_WDATA;
  wire [0:0]xbar_to_m00_couplers_WREADY;
  wire [3:0]xbar_to_m00_couplers_WSTRB;
  wire [0:0]xbar_to_m00_couplers_WVALID;
  wire [63:32]xbar_to_m01_couplers_ARADDR;
  wire [0:0]xbar_to_m01_couplers_ARREADY;
  wire [1:1]xbar_to_m01_couplers_ARVALID;
  wire [63:32]xbar_to_m01_couplers_AWADDR;
  wire [0:0]xbar_to_m01_couplers_AWREADY;
  wire [1:1]xbar_to_m01_couplers_AWVALID;
  wire [1:1]xbar_to_m01_couplers_BREADY;
  wire [1:0]xbar_to_m01_couplers_BRESP;
  wire [0:0]xbar_to_m01_couplers_BVALID;
  wire [31:0]xbar_to_m01_couplers_RDATA;
  wire [1:1]xbar_to_m01_couplers_RREADY;
  wire [1:0]xbar_to_m01_couplers_RRESP;
  wire [0:0]xbar_to_m01_couplers_RVALID;
  wire [63:32]xbar_to_m01_couplers_WDATA;
  wire [0:0]xbar_to_m01_couplers_WREADY;
  wire [7:4]xbar_to_m01_couplers_WSTRB;
  wire [1:1]xbar_to_m01_couplers_WVALID;

  assign M00_AXI_araddr[31:0] = m00_couplers_to_riscv_wrapper_0_axi_periph_ARADDR;
  assign M00_AXI_arvalid[0] = m00_couplers_to_riscv_wrapper_0_axi_periph_ARVALID;
  assign M00_AXI_awaddr[31:0] = m00_couplers_to_riscv_wrapper_0_axi_periph_AWADDR;
  assign M00_AXI_awvalid[0] = m00_couplers_to_riscv_wrapper_0_axi_periph_AWVALID;
  assign M00_AXI_bready[0] = m00_couplers_to_riscv_wrapper_0_axi_periph_BREADY;
  assign M00_AXI_rready[0] = m00_couplers_to_riscv_wrapper_0_axi_periph_RREADY;
  assign M00_AXI_wdata[31:0] = m00_couplers_to_riscv_wrapper_0_axi_periph_WDATA;
  assign M00_AXI_wstrb[3:0] = m00_couplers_to_riscv_wrapper_0_axi_periph_WSTRB;
  assign M00_AXI_wvalid[0] = m00_couplers_to_riscv_wrapper_0_axi_periph_WVALID;
  assign M01_AXI_araddr[31:0] = m01_couplers_to_riscv_wrapper_0_axi_periph_ARADDR;
  assign M01_AXI_arvalid[0] = m01_couplers_to_riscv_wrapper_0_axi_periph_ARVALID;
  assign M01_AXI_awaddr[31:0] = m01_couplers_to_riscv_wrapper_0_axi_periph_AWADDR;
  assign M01_AXI_awvalid[0] = m01_couplers_to_riscv_wrapper_0_axi_periph_AWVALID;
  assign M01_AXI_bready[0] = m01_couplers_to_riscv_wrapper_0_axi_periph_BREADY;
  assign M01_AXI_rready[0] = m01_couplers_to_riscv_wrapper_0_axi_periph_RREADY;
  assign M01_AXI_wdata[31:0] = m01_couplers_to_riscv_wrapper_0_axi_periph_WDATA;
  assign M01_AXI_wstrb[3:0] = m01_couplers_to_riscv_wrapper_0_axi_periph_WSTRB;
  assign M01_AXI_wvalid[0] = m01_couplers_to_riscv_wrapper_0_axi_periph_WVALID;
  assign S00_AXI_arready[0] = riscv_wrapper_0_axi_periph_to_s00_couplers_ARREADY;
  assign S00_AXI_awready[0] = riscv_wrapper_0_axi_periph_to_s00_couplers_AWREADY;
  assign S00_AXI_bresp[1:0] = riscv_wrapper_0_axi_periph_to_s00_couplers_BRESP;
  assign S00_AXI_bvalid[0] = riscv_wrapper_0_axi_periph_to_s00_couplers_BVALID;
  assign S00_AXI_rdata[31:0] = riscv_wrapper_0_axi_periph_to_s00_couplers_RDATA;
  assign S00_AXI_rresp[1:0] = riscv_wrapper_0_axi_periph_to_s00_couplers_RRESP;
  assign S00_AXI_rvalid[0] = riscv_wrapper_0_axi_periph_to_s00_couplers_RVALID;
  assign S00_AXI_wready[0] = riscv_wrapper_0_axi_periph_to_s00_couplers_WREADY;
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_ARREADY = M00_AXI_arready[0];
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_AWREADY = M00_AXI_awready[0];
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_BRESP = M00_AXI_bresp[1:0];
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_BVALID = M00_AXI_bvalid[0];
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_RDATA = M00_AXI_rdata[31:0];
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_RRESP = M00_AXI_rresp[1:0];
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_RVALID = M00_AXI_rvalid[0];
  assign m00_couplers_to_riscv_wrapper_0_axi_periph_WREADY = M00_AXI_wready[0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_ARREADY = M01_AXI_arready[0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_AWREADY = M01_AXI_awready[0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_BRESP = M01_AXI_bresp[1:0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_BVALID = M01_AXI_bvalid[0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_RDATA = M01_AXI_rdata[31:0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_RRESP = M01_AXI_rresp[1:0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_RVALID = M01_AXI_rvalid[0];
  assign m01_couplers_to_riscv_wrapper_0_axi_periph_WREADY = M01_AXI_wready[0];
  assign riscv_wrapper_0_axi_periph_ACLK_net = ACLK;
  assign riscv_wrapper_0_axi_periph_ARESETN_net = ARESETN;
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_ARADDR = S00_AXI_araddr[31:0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_ARPROT = S00_AXI_arprot[2:0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_ARVALID = S00_AXI_arvalid[0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_AWADDR = S00_AXI_awaddr[31:0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_AWPROT = S00_AXI_awprot[2:0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_AWVALID = S00_AXI_awvalid[0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_BREADY = S00_AXI_bready[0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_RREADY = S00_AXI_rready[0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_WDATA = S00_AXI_wdata[31:0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_WSTRB = S00_AXI_wstrb[3:0];
  assign riscv_wrapper_0_axi_periph_to_s00_couplers_WVALID = S00_AXI_wvalid[0];
  m00_couplers_imp_PVEKGE m00_couplers
       (.M_ACLK(riscv_wrapper_0_axi_periph_ACLK_net),
        .M_ARESETN(riscv_wrapper_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m00_couplers_to_riscv_wrapper_0_axi_periph_ARADDR),
        .M_AXI_arready(m00_couplers_to_riscv_wrapper_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m00_couplers_to_riscv_wrapper_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m00_couplers_to_riscv_wrapper_0_axi_periph_AWADDR),
        .M_AXI_awready(m00_couplers_to_riscv_wrapper_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m00_couplers_to_riscv_wrapper_0_axi_periph_AWVALID),
        .M_AXI_bready(m00_couplers_to_riscv_wrapper_0_axi_periph_BREADY),
        .M_AXI_bresp(m00_couplers_to_riscv_wrapper_0_axi_periph_BRESP),
        .M_AXI_bvalid(m00_couplers_to_riscv_wrapper_0_axi_periph_BVALID),
        .M_AXI_rdata(m00_couplers_to_riscv_wrapper_0_axi_periph_RDATA),
        .M_AXI_rready(m00_couplers_to_riscv_wrapper_0_axi_periph_RREADY),
        .M_AXI_rresp(m00_couplers_to_riscv_wrapper_0_axi_periph_RRESP),
        .M_AXI_rvalid(m00_couplers_to_riscv_wrapper_0_axi_periph_RVALID),
        .M_AXI_wdata(m00_couplers_to_riscv_wrapper_0_axi_periph_WDATA),
        .M_AXI_wready(m00_couplers_to_riscv_wrapper_0_axi_periph_WREADY),
        .M_AXI_wstrb(m00_couplers_to_riscv_wrapper_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m00_couplers_to_riscv_wrapper_0_axi_periph_WVALID),
        .S_ACLK(riscv_wrapper_0_axi_periph_ACLK_net),
        .S_ARESETN(riscv_wrapper_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m00_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m00_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m00_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m00_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m00_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m00_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m00_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m00_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m00_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m00_couplers_RDATA),
        .S_AXI_rready(xbar_to_m00_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m00_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m00_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m00_couplers_WDATA),
        .S_AXI_wready(xbar_to_m00_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m00_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m00_couplers_WVALID));
  m01_couplers_imp_POE2AB m01_couplers
       (.M_ACLK(riscv_wrapper_0_axi_periph_ACLK_net),
        .M_ARESETN(riscv_wrapper_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(m01_couplers_to_riscv_wrapper_0_axi_periph_ARADDR),
        .M_AXI_arready(m01_couplers_to_riscv_wrapper_0_axi_periph_ARREADY),
        .M_AXI_arvalid(m01_couplers_to_riscv_wrapper_0_axi_periph_ARVALID),
        .M_AXI_awaddr(m01_couplers_to_riscv_wrapper_0_axi_periph_AWADDR),
        .M_AXI_awready(m01_couplers_to_riscv_wrapper_0_axi_periph_AWREADY),
        .M_AXI_awvalid(m01_couplers_to_riscv_wrapper_0_axi_periph_AWVALID),
        .M_AXI_bready(m01_couplers_to_riscv_wrapper_0_axi_periph_BREADY),
        .M_AXI_bresp(m01_couplers_to_riscv_wrapper_0_axi_periph_BRESP),
        .M_AXI_bvalid(m01_couplers_to_riscv_wrapper_0_axi_periph_BVALID),
        .M_AXI_rdata(m01_couplers_to_riscv_wrapper_0_axi_periph_RDATA),
        .M_AXI_rready(m01_couplers_to_riscv_wrapper_0_axi_periph_RREADY),
        .M_AXI_rresp(m01_couplers_to_riscv_wrapper_0_axi_periph_RRESP),
        .M_AXI_rvalid(m01_couplers_to_riscv_wrapper_0_axi_periph_RVALID),
        .M_AXI_wdata(m01_couplers_to_riscv_wrapper_0_axi_periph_WDATA),
        .M_AXI_wready(m01_couplers_to_riscv_wrapper_0_axi_periph_WREADY),
        .M_AXI_wstrb(m01_couplers_to_riscv_wrapper_0_axi_periph_WSTRB),
        .M_AXI_wvalid(m01_couplers_to_riscv_wrapper_0_axi_periph_WVALID),
        .S_ACLK(riscv_wrapper_0_axi_periph_ACLK_net),
        .S_ARESETN(riscv_wrapper_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(xbar_to_m01_couplers_ARADDR),
        .S_AXI_arready(xbar_to_m01_couplers_ARREADY),
        .S_AXI_arvalid(xbar_to_m01_couplers_ARVALID),
        .S_AXI_awaddr(xbar_to_m01_couplers_AWADDR),
        .S_AXI_awready(xbar_to_m01_couplers_AWREADY),
        .S_AXI_awvalid(xbar_to_m01_couplers_AWVALID),
        .S_AXI_bready(xbar_to_m01_couplers_BREADY),
        .S_AXI_bresp(xbar_to_m01_couplers_BRESP),
        .S_AXI_bvalid(xbar_to_m01_couplers_BVALID),
        .S_AXI_rdata(xbar_to_m01_couplers_RDATA),
        .S_AXI_rready(xbar_to_m01_couplers_RREADY),
        .S_AXI_rresp(xbar_to_m01_couplers_RRESP),
        .S_AXI_rvalid(xbar_to_m01_couplers_RVALID),
        .S_AXI_wdata(xbar_to_m01_couplers_WDATA),
        .S_AXI_wready(xbar_to_m01_couplers_WREADY),
        .S_AXI_wstrb(xbar_to_m01_couplers_WSTRB),
        .S_AXI_wvalid(xbar_to_m01_couplers_WVALID));
  s00_couplers_imp_17J8HML s00_couplers
       (.M_ACLK(riscv_wrapper_0_axi_periph_ACLK_net),
        .M_ARESETN(riscv_wrapper_0_axi_periph_ARESETN_net),
        .M_AXI_araddr(s00_couplers_to_xbar_ARADDR),
        .M_AXI_arprot(s00_couplers_to_xbar_ARPROT),
        .M_AXI_arready(s00_couplers_to_xbar_ARREADY),
        .M_AXI_arvalid(s00_couplers_to_xbar_ARVALID),
        .M_AXI_awaddr(s00_couplers_to_xbar_AWADDR),
        .M_AXI_awprot(s00_couplers_to_xbar_AWPROT),
        .M_AXI_awready(s00_couplers_to_xbar_AWREADY),
        .M_AXI_awvalid(s00_couplers_to_xbar_AWVALID),
        .M_AXI_bready(s00_couplers_to_xbar_BREADY),
        .M_AXI_bresp(s00_couplers_to_xbar_BRESP),
        .M_AXI_bvalid(s00_couplers_to_xbar_BVALID),
        .M_AXI_rdata(s00_couplers_to_xbar_RDATA),
        .M_AXI_rready(s00_couplers_to_xbar_RREADY),
        .M_AXI_rresp(s00_couplers_to_xbar_RRESP),
        .M_AXI_rvalid(s00_couplers_to_xbar_RVALID),
        .M_AXI_wdata(s00_couplers_to_xbar_WDATA),
        .M_AXI_wready(s00_couplers_to_xbar_WREADY),
        .M_AXI_wstrb(s00_couplers_to_xbar_WSTRB),
        .M_AXI_wvalid(s00_couplers_to_xbar_WVALID),
        .S_ACLK(riscv_wrapper_0_axi_periph_ACLK_net),
        .S_ARESETN(riscv_wrapper_0_axi_periph_ARESETN_net),
        .S_AXI_araddr(riscv_wrapper_0_axi_periph_to_s00_couplers_ARADDR),
        .S_AXI_arprot(riscv_wrapper_0_axi_periph_to_s00_couplers_ARPROT),
        .S_AXI_arready(riscv_wrapper_0_axi_periph_to_s00_couplers_ARREADY),
        .S_AXI_arvalid(riscv_wrapper_0_axi_periph_to_s00_couplers_ARVALID),
        .S_AXI_awaddr(riscv_wrapper_0_axi_periph_to_s00_couplers_AWADDR),
        .S_AXI_awprot(riscv_wrapper_0_axi_periph_to_s00_couplers_AWPROT),
        .S_AXI_awready(riscv_wrapper_0_axi_periph_to_s00_couplers_AWREADY),
        .S_AXI_awvalid(riscv_wrapper_0_axi_periph_to_s00_couplers_AWVALID),
        .S_AXI_bready(riscv_wrapper_0_axi_periph_to_s00_couplers_BREADY),
        .S_AXI_bresp(riscv_wrapper_0_axi_periph_to_s00_couplers_BRESP),
        .S_AXI_bvalid(riscv_wrapper_0_axi_periph_to_s00_couplers_BVALID),
        .S_AXI_rdata(riscv_wrapper_0_axi_periph_to_s00_couplers_RDATA),
        .S_AXI_rready(riscv_wrapper_0_axi_periph_to_s00_couplers_RREADY),
        .S_AXI_rresp(riscv_wrapper_0_axi_periph_to_s00_couplers_RRESP),
        .S_AXI_rvalid(riscv_wrapper_0_axi_periph_to_s00_couplers_RVALID),
        .S_AXI_wdata(riscv_wrapper_0_axi_periph_to_s00_couplers_WDATA),
        .S_AXI_wready(riscv_wrapper_0_axi_periph_to_s00_couplers_WREADY),
        .S_AXI_wstrb(riscv_wrapper_0_axi_periph_to_s00_couplers_WSTRB),
        .S_AXI_wvalid(riscv_wrapper_0_axi_periph_to_s00_couplers_WVALID));
  RISCV_demonstrator_xbar_0 xbar
       (.aclk(riscv_wrapper_0_axi_periph_ACLK_net),
        .aresetn(riscv_wrapper_0_axi_periph_ARESETN_net),
        .m_axi_araddr({xbar_to_m01_couplers_ARADDR,xbar_to_m00_couplers_ARADDR}),
        .m_axi_arready({xbar_to_m01_couplers_ARREADY,xbar_to_m00_couplers_ARREADY}),
        .m_axi_arvalid({xbar_to_m01_couplers_ARVALID,xbar_to_m00_couplers_ARVALID}),
        .m_axi_awaddr({xbar_to_m01_couplers_AWADDR,xbar_to_m00_couplers_AWADDR}),
        .m_axi_awready({xbar_to_m01_couplers_AWREADY,xbar_to_m00_couplers_AWREADY}),
        .m_axi_awvalid({xbar_to_m01_couplers_AWVALID,xbar_to_m00_couplers_AWVALID}),
        .m_axi_bready({xbar_to_m01_couplers_BREADY,xbar_to_m00_couplers_BREADY}),
        .m_axi_bresp({xbar_to_m01_couplers_BRESP,xbar_to_m00_couplers_BRESP}),
        .m_axi_bvalid({xbar_to_m01_couplers_BVALID,xbar_to_m00_couplers_BVALID}),
        .m_axi_rdata({xbar_to_m01_couplers_RDATA,xbar_to_m00_couplers_RDATA}),
        .m_axi_rready({xbar_to_m01_couplers_RREADY,xbar_to_m00_couplers_RREADY}),
        .m_axi_rresp({xbar_to_m01_couplers_RRESP,xbar_to_m00_couplers_RRESP}),
        .m_axi_rvalid({xbar_to_m01_couplers_RVALID,xbar_to_m00_couplers_RVALID}),
        .m_axi_wdata({xbar_to_m01_couplers_WDATA,xbar_to_m00_couplers_WDATA}),
        .m_axi_wready({xbar_to_m01_couplers_WREADY,xbar_to_m00_couplers_WREADY}),
        .m_axi_wstrb({xbar_to_m01_couplers_WSTRB,xbar_to_m00_couplers_WSTRB}),
        .m_axi_wvalid({xbar_to_m01_couplers_WVALID,xbar_to_m00_couplers_WVALID}),
        .s_axi_araddr(s00_couplers_to_xbar_ARADDR),
        .s_axi_arprot(s00_couplers_to_xbar_ARPROT),
        .s_axi_arready(s00_couplers_to_xbar_ARREADY),
        .s_axi_arvalid(s00_couplers_to_xbar_ARVALID),
        .s_axi_awaddr(s00_couplers_to_xbar_AWADDR),
        .s_axi_awprot(s00_couplers_to_xbar_AWPROT),
        .s_axi_awready(s00_couplers_to_xbar_AWREADY),
        .s_axi_awvalid(s00_couplers_to_xbar_AWVALID),
        .s_axi_bready(s00_couplers_to_xbar_BREADY),
        .s_axi_bresp(s00_couplers_to_xbar_BRESP),
        .s_axi_bvalid(s00_couplers_to_xbar_BVALID),
        .s_axi_rdata(s00_couplers_to_xbar_RDATA),
        .s_axi_rready(s00_couplers_to_xbar_RREADY),
        .s_axi_rresp(s00_couplers_to_xbar_RRESP),
        .s_axi_rvalid(s00_couplers_to_xbar_RVALID),
        .s_axi_wdata(s00_couplers_to_xbar_WDATA),
        .s_axi_wready(s00_couplers_to_xbar_WREADY),
        .s_axi_wstrb(s00_couplers_to_xbar_WSTRB),
        .s_axi_wvalid(s00_couplers_to_xbar_WVALID));
endmodule

module m00_couplers_imp_PVEKGE
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m00_couplers_to_m00_couplers_ARADDR;
  wire [0:0]m00_couplers_to_m00_couplers_ARREADY;
  wire [0:0]m00_couplers_to_m00_couplers_ARVALID;
  wire [31:0]m00_couplers_to_m00_couplers_AWADDR;
  wire [0:0]m00_couplers_to_m00_couplers_AWREADY;
  wire [0:0]m00_couplers_to_m00_couplers_AWVALID;
  wire [0:0]m00_couplers_to_m00_couplers_BREADY;
  wire [1:0]m00_couplers_to_m00_couplers_BRESP;
  wire [0:0]m00_couplers_to_m00_couplers_BVALID;
  wire [31:0]m00_couplers_to_m00_couplers_RDATA;
  wire [0:0]m00_couplers_to_m00_couplers_RREADY;
  wire [1:0]m00_couplers_to_m00_couplers_RRESP;
  wire [0:0]m00_couplers_to_m00_couplers_RVALID;
  wire [31:0]m00_couplers_to_m00_couplers_WDATA;
  wire [0:0]m00_couplers_to_m00_couplers_WREADY;
  wire [3:0]m00_couplers_to_m00_couplers_WSTRB;
  wire [0:0]m00_couplers_to_m00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m00_couplers_to_m00_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m00_couplers_to_m00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m00_couplers_to_m00_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m00_couplers_to_m00_couplers_AWVALID;
  assign M_AXI_bready[0] = m00_couplers_to_m00_couplers_BREADY;
  assign M_AXI_rready[0] = m00_couplers_to_m00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m00_couplers_to_m00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m00_couplers_to_m00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m00_couplers_to_m00_couplers_WVALID;
  assign S_AXI_arready[0] = m00_couplers_to_m00_couplers_ARREADY;
  assign S_AXI_awready[0] = m00_couplers_to_m00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m00_couplers_to_m00_couplers_BRESP;
  assign S_AXI_bvalid[0] = m00_couplers_to_m00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m00_couplers_to_m00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m00_couplers_to_m00_couplers_RRESP;
  assign S_AXI_rvalid[0] = m00_couplers_to_m00_couplers_RVALID;
  assign S_AXI_wready[0] = m00_couplers_to_m00_couplers_WREADY;
  assign m00_couplers_to_m00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m00_couplers_to_m00_couplers_ARREADY = M_AXI_arready[0];
  assign m00_couplers_to_m00_couplers_ARVALID = S_AXI_arvalid[0];
  assign m00_couplers_to_m00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m00_couplers_to_m00_couplers_AWREADY = M_AXI_awready[0];
  assign m00_couplers_to_m00_couplers_AWVALID = S_AXI_awvalid[0];
  assign m00_couplers_to_m00_couplers_BREADY = S_AXI_bready[0];
  assign m00_couplers_to_m00_couplers_BRESP = M_AXI_bresp[1:0];
  assign m00_couplers_to_m00_couplers_BVALID = M_AXI_bvalid[0];
  assign m00_couplers_to_m00_couplers_RDATA = M_AXI_rdata[31:0];
  assign m00_couplers_to_m00_couplers_RREADY = S_AXI_rready[0];
  assign m00_couplers_to_m00_couplers_RRESP = M_AXI_rresp[1:0];
  assign m00_couplers_to_m00_couplers_RVALID = M_AXI_rvalid[0];
  assign m00_couplers_to_m00_couplers_WDATA = S_AXI_wdata[31:0];
  assign m00_couplers_to_m00_couplers_WREADY = M_AXI_wready[0];
  assign m00_couplers_to_m00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m00_couplers_to_m00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module m01_couplers_imp_POE2AB
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]m01_couplers_to_m01_couplers_ARADDR;
  wire [0:0]m01_couplers_to_m01_couplers_ARREADY;
  wire [0:0]m01_couplers_to_m01_couplers_ARVALID;
  wire [31:0]m01_couplers_to_m01_couplers_AWADDR;
  wire [0:0]m01_couplers_to_m01_couplers_AWREADY;
  wire [0:0]m01_couplers_to_m01_couplers_AWVALID;
  wire [0:0]m01_couplers_to_m01_couplers_BREADY;
  wire [1:0]m01_couplers_to_m01_couplers_BRESP;
  wire [0:0]m01_couplers_to_m01_couplers_BVALID;
  wire [31:0]m01_couplers_to_m01_couplers_RDATA;
  wire [0:0]m01_couplers_to_m01_couplers_RREADY;
  wire [1:0]m01_couplers_to_m01_couplers_RRESP;
  wire [0:0]m01_couplers_to_m01_couplers_RVALID;
  wire [31:0]m01_couplers_to_m01_couplers_WDATA;
  wire [0:0]m01_couplers_to_m01_couplers_WREADY;
  wire [3:0]m01_couplers_to_m01_couplers_WSTRB;
  wire [0:0]m01_couplers_to_m01_couplers_WVALID;

  assign M_AXI_araddr[31:0] = m01_couplers_to_m01_couplers_ARADDR;
  assign M_AXI_arvalid[0] = m01_couplers_to_m01_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = m01_couplers_to_m01_couplers_AWADDR;
  assign M_AXI_awvalid[0] = m01_couplers_to_m01_couplers_AWVALID;
  assign M_AXI_bready[0] = m01_couplers_to_m01_couplers_BREADY;
  assign M_AXI_rready[0] = m01_couplers_to_m01_couplers_RREADY;
  assign M_AXI_wdata[31:0] = m01_couplers_to_m01_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = m01_couplers_to_m01_couplers_WSTRB;
  assign M_AXI_wvalid[0] = m01_couplers_to_m01_couplers_WVALID;
  assign S_AXI_arready[0] = m01_couplers_to_m01_couplers_ARREADY;
  assign S_AXI_awready[0] = m01_couplers_to_m01_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = m01_couplers_to_m01_couplers_BRESP;
  assign S_AXI_bvalid[0] = m01_couplers_to_m01_couplers_BVALID;
  assign S_AXI_rdata[31:0] = m01_couplers_to_m01_couplers_RDATA;
  assign S_AXI_rresp[1:0] = m01_couplers_to_m01_couplers_RRESP;
  assign S_AXI_rvalid[0] = m01_couplers_to_m01_couplers_RVALID;
  assign S_AXI_wready[0] = m01_couplers_to_m01_couplers_WREADY;
  assign m01_couplers_to_m01_couplers_ARADDR = S_AXI_araddr[31:0];
  assign m01_couplers_to_m01_couplers_ARREADY = M_AXI_arready[0];
  assign m01_couplers_to_m01_couplers_ARVALID = S_AXI_arvalid[0];
  assign m01_couplers_to_m01_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign m01_couplers_to_m01_couplers_AWREADY = M_AXI_awready[0];
  assign m01_couplers_to_m01_couplers_AWVALID = S_AXI_awvalid[0];
  assign m01_couplers_to_m01_couplers_BREADY = S_AXI_bready[0];
  assign m01_couplers_to_m01_couplers_BRESP = M_AXI_bresp[1:0];
  assign m01_couplers_to_m01_couplers_BVALID = M_AXI_bvalid[0];
  assign m01_couplers_to_m01_couplers_RDATA = M_AXI_rdata[31:0];
  assign m01_couplers_to_m01_couplers_RREADY = S_AXI_rready[0];
  assign m01_couplers_to_m01_couplers_RRESP = M_AXI_rresp[1:0];
  assign m01_couplers_to_m01_couplers_RVALID = M_AXI_rvalid[0];
  assign m01_couplers_to_m01_couplers_WDATA = S_AXI_wdata[31:0];
  assign m01_couplers_to_m01_couplers_WREADY = M_AXI_wready[0];
  assign m01_couplers_to_m01_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign m01_couplers_to_m01_couplers_WVALID = S_AXI_wvalid[0];
endmodule

module s00_couplers_imp_17J8HML
   (M_ACLK,
    M_ARESETN,
    M_AXI_araddr,
    M_AXI_arprot,
    M_AXI_arready,
    M_AXI_arvalid,
    M_AXI_awaddr,
    M_AXI_awprot,
    M_AXI_awready,
    M_AXI_awvalid,
    M_AXI_bready,
    M_AXI_bresp,
    M_AXI_bvalid,
    M_AXI_rdata,
    M_AXI_rready,
    M_AXI_rresp,
    M_AXI_rvalid,
    M_AXI_wdata,
    M_AXI_wready,
    M_AXI_wstrb,
    M_AXI_wvalid,
    S_ACLK,
    S_ARESETN,
    S_AXI_araddr,
    S_AXI_arprot,
    S_AXI_arready,
    S_AXI_arvalid,
    S_AXI_awaddr,
    S_AXI_awprot,
    S_AXI_awready,
    S_AXI_awvalid,
    S_AXI_bready,
    S_AXI_bresp,
    S_AXI_bvalid,
    S_AXI_rdata,
    S_AXI_rready,
    S_AXI_rresp,
    S_AXI_rvalid,
    S_AXI_wdata,
    S_AXI_wready,
    S_AXI_wstrb,
    S_AXI_wvalid);
  input M_ACLK;
  input M_ARESETN;
  output [31:0]M_AXI_araddr;
  output [2:0]M_AXI_arprot;
  input [0:0]M_AXI_arready;
  output [0:0]M_AXI_arvalid;
  output [31:0]M_AXI_awaddr;
  output [2:0]M_AXI_awprot;
  input [0:0]M_AXI_awready;
  output [0:0]M_AXI_awvalid;
  output [0:0]M_AXI_bready;
  input [1:0]M_AXI_bresp;
  input [0:0]M_AXI_bvalid;
  input [31:0]M_AXI_rdata;
  output [0:0]M_AXI_rready;
  input [1:0]M_AXI_rresp;
  input [0:0]M_AXI_rvalid;
  output [31:0]M_AXI_wdata;
  input [0:0]M_AXI_wready;
  output [3:0]M_AXI_wstrb;
  output [0:0]M_AXI_wvalid;
  input S_ACLK;
  input S_ARESETN;
  input [31:0]S_AXI_araddr;
  input [2:0]S_AXI_arprot;
  output [0:0]S_AXI_arready;
  input [0:0]S_AXI_arvalid;
  input [31:0]S_AXI_awaddr;
  input [2:0]S_AXI_awprot;
  output [0:0]S_AXI_awready;
  input [0:0]S_AXI_awvalid;
  input [0:0]S_AXI_bready;
  output [1:0]S_AXI_bresp;
  output [0:0]S_AXI_bvalid;
  output [31:0]S_AXI_rdata;
  input [0:0]S_AXI_rready;
  output [1:0]S_AXI_rresp;
  output [0:0]S_AXI_rvalid;
  input [31:0]S_AXI_wdata;
  output [0:0]S_AXI_wready;
  input [3:0]S_AXI_wstrb;
  input [0:0]S_AXI_wvalid;

  wire [31:0]s00_couplers_to_s00_couplers_ARADDR;
  wire [2:0]s00_couplers_to_s00_couplers_ARPROT;
  wire [0:0]s00_couplers_to_s00_couplers_ARREADY;
  wire [0:0]s00_couplers_to_s00_couplers_ARVALID;
  wire [31:0]s00_couplers_to_s00_couplers_AWADDR;
  wire [2:0]s00_couplers_to_s00_couplers_AWPROT;
  wire [0:0]s00_couplers_to_s00_couplers_AWREADY;
  wire [0:0]s00_couplers_to_s00_couplers_AWVALID;
  wire [0:0]s00_couplers_to_s00_couplers_BREADY;
  wire [1:0]s00_couplers_to_s00_couplers_BRESP;
  wire [0:0]s00_couplers_to_s00_couplers_BVALID;
  wire [31:0]s00_couplers_to_s00_couplers_RDATA;
  wire [0:0]s00_couplers_to_s00_couplers_RREADY;
  wire [1:0]s00_couplers_to_s00_couplers_RRESP;
  wire [0:0]s00_couplers_to_s00_couplers_RVALID;
  wire [31:0]s00_couplers_to_s00_couplers_WDATA;
  wire [0:0]s00_couplers_to_s00_couplers_WREADY;
  wire [3:0]s00_couplers_to_s00_couplers_WSTRB;
  wire [0:0]s00_couplers_to_s00_couplers_WVALID;

  assign M_AXI_araddr[31:0] = s00_couplers_to_s00_couplers_ARADDR;
  assign M_AXI_arprot[2:0] = s00_couplers_to_s00_couplers_ARPROT;
  assign M_AXI_arvalid[0] = s00_couplers_to_s00_couplers_ARVALID;
  assign M_AXI_awaddr[31:0] = s00_couplers_to_s00_couplers_AWADDR;
  assign M_AXI_awprot[2:0] = s00_couplers_to_s00_couplers_AWPROT;
  assign M_AXI_awvalid[0] = s00_couplers_to_s00_couplers_AWVALID;
  assign M_AXI_bready[0] = s00_couplers_to_s00_couplers_BREADY;
  assign M_AXI_rready[0] = s00_couplers_to_s00_couplers_RREADY;
  assign M_AXI_wdata[31:0] = s00_couplers_to_s00_couplers_WDATA;
  assign M_AXI_wstrb[3:0] = s00_couplers_to_s00_couplers_WSTRB;
  assign M_AXI_wvalid[0] = s00_couplers_to_s00_couplers_WVALID;
  assign S_AXI_arready[0] = s00_couplers_to_s00_couplers_ARREADY;
  assign S_AXI_awready[0] = s00_couplers_to_s00_couplers_AWREADY;
  assign S_AXI_bresp[1:0] = s00_couplers_to_s00_couplers_BRESP;
  assign S_AXI_bvalid[0] = s00_couplers_to_s00_couplers_BVALID;
  assign S_AXI_rdata[31:0] = s00_couplers_to_s00_couplers_RDATA;
  assign S_AXI_rresp[1:0] = s00_couplers_to_s00_couplers_RRESP;
  assign S_AXI_rvalid[0] = s00_couplers_to_s00_couplers_RVALID;
  assign S_AXI_wready[0] = s00_couplers_to_s00_couplers_WREADY;
  assign s00_couplers_to_s00_couplers_ARADDR = S_AXI_araddr[31:0];
  assign s00_couplers_to_s00_couplers_ARPROT = S_AXI_arprot[2:0];
  assign s00_couplers_to_s00_couplers_ARREADY = M_AXI_arready[0];
  assign s00_couplers_to_s00_couplers_ARVALID = S_AXI_arvalid[0];
  assign s00_couplers_to_s00_couplers_AWADDR = S_AXI_awaddr[31:0];
  assign s00_couplers_to_s00_couplers_AWPROT = S_AXI_awprot[2:0];
  assign s00_couplers_to_s00_couplers_AWREADY = M_AXI_awready[0];
  assign s00_couplers_to_s00_couplers_AWVALID = S_AXI_awvalid[0];
  assign s00_couplers_to_s00_couplers_BREADY = S_AXI_bready[0];
  assign s00_couplers_to_s00_couplers_BRESP = M_AXI_bresp[1:0];
  assign s00_couplers_to_s00_couplers_BVALID = M_AXI_bvalid[0];
  assign s00_couplers_to_s00_couplers_RDATA = M_AXI_rdata[31:0];
  assign s00_couplers_to_s00_couplers_RREADY = S_AXI_rready[0];
  assign s00_couplers_to_s00_couplers_RRESP = M_AXI_rresp[1:0];
  assign s00_couplers_to_s00_couplers_RVALID = M_AXI_rvalid[0];
  assign s00_couplers_to_s00_couplers_WDATA = S_AXI_wdata[31:0];
  assign s00_couplers_to_s00_couplers_WREADY = M_AXI_wready[0];
  assign s00_couplers_to_s00_couplers_WSTRB = S_AXI_wstrb[3:0];
  assign s00_couplers_to_s00_couplers_WVALID = S_AXI_wvalid[0];
endmodule

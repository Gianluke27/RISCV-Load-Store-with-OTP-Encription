`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 04.09.2023 16:56:17
// Design Name: 
// Module Name: riscv_wrapper
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module riscv_wrapper(
    input  wire                           clk,
    input  wire                           arstn,

    /*
     * AXI lite slave interfaces
     */    
    input  wire [31:0]  s_axil_awaddr,
    input  wire [2:0]   s_axil_awprot,
    input  wire [0:0]   s_axil_awvalid,
    output wire [0:0]   s_axil_awready,
    input  wire [31:0]  s_axil_wdata,
    input  wire [3:0]   s_axil_wstrb,
    input  wire [0:0]   s_axil_wvalid,
    output wire [0:0]   s_axil_wready,
    output wire [1:0]   s_axil_bresp,
    output wire [0:0]   s_axil_bvalid,
    input  wire [0:0]   s_axil_bready,
    input  wire [31:0]  s_axil_araddr,
    input  wire [2:0]   s_axil_arprot,
    input  wire [0:0]   s_axil_arvalid,
    output wire [0:0]   s_axil_arready,
    output wire [31:0]  s_axil_rdata,
    output wire [1:0]   s_axil_rresp,
    output wire [0:0]   s_axil_rvalid,
    input  wire [0:0]   s_axil_rready,

    /*
     * AXI lite master interfaces
     */
    output wire [31:0]  m_axil_awaddr,
    output wire [2:0]   m_axil_awprot,
    output wire [0:0]   m_axil_awvalid,
    input  wire [0:0]   m_axil_awready,
    output wire [31:0]  m_axil_wdata,
    output wire [3:0]   m_axil_wstrb,
    output wire [0:0]   m_axil_wvalid,
    input  wire [0:0]   m_axil_wready,
    input  wire [1:0]   m_axil_bresp,
    input  wire [0:0]   m_axil_bvalid,
    output wire [0:0]   m_axil_bready,
    output wire [31:0]  m_axil_araddr,
    output wire [2:0]   m_axil_arprot,
    output wire [0:0]   m_axil_arvalid,
    input  wire [0:0]   m_axil_arready,
    input  wire [31:0]  m_axil_rdata,
    input  wire [1:0]   m_axil_rresp,
    input  wire [0:0]   m_axil_rvalid,
    output wire [0:0]   m_axil_rready
);

    riscv_tcm_top
    //-----------------------------------------------------------------
    // Params
    //-----------------------------------------------------------------
    #(
          .BOOT_VECTOR(32'h80000000)
        , .CORE_ID(0)
        , .TCM_MEM_BASE(32'h80000000)
        , .SUPPORT_BRANCH_PREDICTION(1)
        , .SUPPORT_MULDIV(1)
        , .SUPPORT_SUPER(0)
        , .SUPPORT_MMU(0)
        , .SUPPORT_DUAL_ISSUE(1)
        , .SUPPORT_LOAD_BYPASS(1)
        , .SUPPORT_MUL_BYPASS(1)
        , .SUPPORT_REGFILE_XILINX(1)
        , .EXTRA_DECODE_STAGE(0)
        , .MEM_DIM_KB(64)
        , .MEM_CACHE_ADDR_MIN(32'h80000000)
        , .MEM_CACHE_ADDR_MAX(32'h8fffffff)
        , .NUM_BTB_ENTRIES(32)
        , .NUM_BTB_ENTRIES_W(5)
        , .NUM_BHT_ENTRIES(512)
        , .NUM_BHT_ENTRIES_W(9)
        , .RAS_ENABLE(1)
        , .GSHARE_ENABLE(0)
        , .BHT_ENABLE(1)
        , .NUM_RAS_ENTRIES(8)
        , .NUM_RAS_ENTRIES_W(3)
        , .SUPPORT_ENCRYPTION(1)
        , .SUPPORT_ENC_UPDATER(0)
    ) rv_tcm_top
    //-----------------------------------------------------------------
    // Ports
    //-----------------------------------------------------------------
    (
        // Inputs
        .clk_i(clk),
        .rst_i(~arstn),
        .rst_cpu_i(~arstn),
         
        .axi_i_araddr_o(m_axil_araddr),
        .axi_i_arready_i(m_axil_arready),
        .axi_i_arvalid_o(m_axil_arvalid),
        .axi_i_awaddr_o(m_axil_awaddr),
        .axi_i_awready_i(m_axil_awready),
        .axi_i_awvalid_o(m_axil_awvalid),
        .axi_i_bready_o(m_axil_bready),
        .axi_i_bresp_i(m_axil_bresp),
        .axi_i_bvalid_i(m_axil_bvalid),
        .axi_i_rdata_i(m_axil_rdata),
        .axi_i_rready_o(m_axil_rready),
        .axi_i_rresp_i(m_axil_rresp),
        .axi_i_rvalid_i(m_axil_rvalid),
        .axi_i_wdata_o(m_axil_wdata),
        .axi_i_wready_i(m_axil_wready),
        .axi_i_wstrb_o(m_axil_wstrb),
        .axi_i_wvalid_o(m_axil_wvalid),
        .axi_t_araddr_i(s_axil_araddr),
        .axi_t_arburst_i({1'b0,1'b1}),
        .axi_t_arid_i({1'b0,1'b0,1'b0,1'b0}),
        .axi_t_arlen_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_t_arvalid_i(s_axil_arvalid),
        .axi_t_awaddr_i(s_axil_awaddr),
        .axi_t_awburst_i({1'b0,1'b1}),
        .axi_t_awid_i({1'b0,1'b0,1'b0,1'b0}),
        .axi_t_awlen_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .axi_t_awvalid_i(s_axil_awvalid),
        .axi_t_bready_i(s_axil_bready),
        .axi_t_rready_i(s_axil_rready),
        .axi_t_wdata_i(s_axil_wdata),
        .axi_t_wlast_i(1'b0),
        .axi_t_wstrb_i(s_axil_wstrb),
        .axi_t_wvalid_i(s_axil_wvalid),
        .axi_t_awready_o(s_axil_awready),
        .axi_t_wready_o(s_axil_wready),
        .axi_t_bvalid_o(s_axil_bvalid),
        .axi_t_bresp_o(s_axil_bresp),
        .axi_t_arready_o(s_axil_arready),
        .axi_t_rvalid_o(s_axil_rvalid),
        .axi_t_rdata_o(s_axil_rdata),
        .axi_t_rresp_o(s_axil_rresp),
        .intr_i({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .wkg_o(wkg_o)
    );
    
    assign m_axil_awprot = 3'd0;
    assign m_axil_arprot = 3'd0;
    
    
endmodule

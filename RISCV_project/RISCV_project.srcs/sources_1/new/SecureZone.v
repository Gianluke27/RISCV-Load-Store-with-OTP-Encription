`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 16.10.2023 17:00:02
// Design Name: 
// Module Name: SecureZone
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



module SecureZone
//-----------------------------------------------------------------
// Params
//-----------------------------------------------------------------
#(
     parameter MEM_DIM_KB = 64
    ,parameter SUPPORT_ENCRYPTION = 1
    ,parameter SUPPORT_ENC_UPDATER = 0
)
//-----------------------------------------------------------------
// Ports
//-----------------------------------------------------------------
(
    // Inputs
     input           clk_i
    ,input           rst_i
    ,input           mem_i_rd_i
    ,input           mem_i_flush_i
    ,input           mem_i_invalidate_i
    ,input  [ 31:0]  mem_i_pc_i
    ,input  [ 31:0]  mem_d_addr_i
    ,input  [ 31:0]  mem_d_data_wr_i
    ,input           mem_d_rd_i
    ,input  [  3:0]  mem_d_wr_i
    ,input           mem_d_cacheable_i
    ,input  [ 10:0]  mem_d_req_tag_i
    ,input           mem_d_invalidate_i
    ,input           mem_d_writeback_i
    ,input           mem_d_flush_i
    ,input           axi_awvalid_i
    ,input  [ 31:0]  axi_awaddr_i
    ,input  [  3:0]  axi_awid_i
    ,input  [  7:0]  axi_awlen_i
    ,input  [  1:0]  axi_awburst_i
    ,input           axi_wvalid_i
    ,input  [ 31:0]  axi_wdata_i
    ,input  [  3:0]  axi_wstrb_i
    ,input           axi_wlast_i
    ,input           axi_bready_i
    ,input           axi_arvalid_i
    ,input  [ 31:0]  axi_araddr_i
    ,input  [  3:0]  axi_arid_i
    ,input  [  7:0]  axi_arlen_i
    ,input  [  1:0]  axi_arburst_i
    ,input           axi_rready_i

    // Outputs
    ,output          mem_i_accept_o
    ,output          mem_i_valid_o
    ,output          mem_i_error_o
    ,output [ 63:0]  mem_i_inst_o
    ,output [ 31:0]  mem_d_data_rd_o
    ,output          mem_d_accept_o
    ,output          mem_d_ack_o
    ,output          mem_d_error_o
    ,output          mem_d_enc_error_o
    ,output [ 10:0]  mem_d_resp_tag_o
    ,output          axi_awready_o
    ,output          axi_wready_o
    ,output          axi_bvalid_o
    ,output [  1:0]  axi_bresp_o
    ,output [  3:0]  axi_bid_o
    ,output          axi_arready_o
    ,output          axi_rvalid_o
    ,output [ 31:0]  axi_rdata_o
    ,output [  1:0]  axi_rresp_o
    ,output [  3:0]  axi_rid_o
    ,output          axi_rlast_o
);


// Added PseudoRandomGenerator
// To implement a quantum random generator in the future
wire [31:0] random_num_w;
wire        random_num_request_w;

// PseudoRandomGenerator module
RandomGenerator
u_rand_gen
(
    // Inputs
     .clk_i(clk_i)
    ,.rst_i(rst_i)
    ,.en_i(random_num_request_w)
    
    //Outputs
    ,.random_num_o(random_num_w)
);

// Secure Memories
tcm_mem
#(
     .MEM_DIM_KB(MEM_DIM_KB)
    ,.SUPPORT_ENCRYPTION(SUPPORT_ENCRYPTION)
    ,.SUPPORT_ENC_UPDATER(SUPPORT_ENC_UPDATER)
)
u_secure_memories
(
    // Inputs
     .clk_i(clk_i)
    ,.rst_i(rst_i)
    ,.mem_i_rd_i(mem_i_rd_i)
    ,.mem_i_flush_i(mem_i_flush_i)
    ,.mem_i_invalidate_i(mem_i_invalidate_i)
    ,.mem_i_pc_i(mem_i_pc_i)
    ,.mem_d_addr_i(mem_d_addr_i)
    ,.mem_d_data_wr_i(mem_d_data_wr_i)
    ,.mem_d_rd_i(mem_d_rd_i)
    ,.mem_d_wr_i(mem_d_wr_i)
    ,.mem_d_cacheable_i(mem_d_cacheable_i)
    ,.mem_d_req_tag_i(mem_d_req_tag_i)
    ,.mem_d_invalidate_i(mem_d_invalidate_i)
    ,.mem_d_writeback_i(mem_d_writeback_i)
    ,.mem_d_flush_i(mem_d_flush_i)
    ,.random_num_i(random_num_w)
    ,.axi_awvalid_i(axi_awvalid_i)
    ,.axi_awaddr_i(axi_awaddr_i)
    ,.axi_awid_i(axi_awid_i)
    ,.axi_awlen_i(axi_awlen_i)
    ,.axi_awburst_i(axi_awburst_i)
    ,.axi_wvalid_i(axi_wvalid_i)
    ,.axi_wdata_i(axi_wdata_i)
    ,.axi_wstrb_i(axi_wstrb_i)
    ,.axi_wlast_i(axi_wlast_i)
    ,.axi_bready_i(axi_bready_i)
    ,.axi_arvalid_i(axi_arvalid_i)
    ,.axi_araddr_i(axi_araddr_i)
    ,.axi_arid_i(axi_arid_i)
    ,.axi_arlen_i(axi_arlen_i)
    ,.axi_arburst_i(axi_arburst_i)
    ,.axi_rready_i(axi_rready_i)

    // Outputs
    ,.mem_i_accept_o(mem_i_accept_o)
    ,.mem_i_valid_o(mem_i_valid_o)
    ,.mem_i_error_o(mem_i_error_o)
    ,.mem_i_inst_o(mem_i_inst_o)
    ,.mem_d_data_rd_o(mem_d_data_rd_o)
    ,.mem_d_accept_o(mem_d_accept_o)
    ,.mem_d_ack_o(mem_d_ack_o)
    ,.mem_d_error_o(mem_d_error_o)
    ,.mem_d_enc_error_o(mem_d_enc_error_o)
    ,.mem_d_resp_tag_o(mem_d_resp_tag_o)
    ,.random_num_request_o(random_num_request_w)
    ,.axi_awready_o(axi_awready_o)
    ,.axi_wready_o(axi_wready_o)
    ,.axi_bvalid_o(axi_bvalid_o)
    ,.axi_bresp_o(axi_bresp_o)
    ,.axi_bid_o(axi_bid_o)
    ,.axi_arready_o(axi_arready_o)
    ,.axi_rvalid_o(axi_rvalid_o)
    ,.axi_rdata_o(axi_rdata_o)
    ,.axi_rresp_o(axi_rresp_o)
    ,.axi_rid_o(axi_rid_o)
    ,.axi_rlast_o(axi_rlast_o)
);

endmodule
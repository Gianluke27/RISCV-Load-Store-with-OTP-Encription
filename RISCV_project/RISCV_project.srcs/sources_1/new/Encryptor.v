`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: UNISA
// Engineer: GIANLUCA CANZOLINO (g.canzolino3@studenti.unisa.it)
// 
// Create Date: 14.08.2023 11:32:53
// Design Name: 
// Module Name: Encryptor
// Project Name: Secured biRISCV
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


module encryptor
//-----------------------------------------------------------------
// Params
//-----------------------------------------------------------------
#(
     parameter MEM_DIM_KB = 64
)
//-----------------------------------------------------------------
// Ports
//-----------------------------------------------------------------
(
    // Inputs
     input           data_hi_i 
    ,input  [  3:0]  data_wr_i 
    ,input  [($clog2(MEM_DIM_KB * 1024)-4):0]  mem_addr_i 
    ,input  [ 31:0]  random_num_i
    ,input  [ 31:0]  plain_data_i
     
    // Outputs
    ,output          random_num_request_o
    ,output [  7:0]  write_byte_otp_o
    ,output [($clog2(MEM_DIM_KB * 1024)-4):0]  otp_address_o
    ,output [ 63:0]  otp_data_o
    ,output [  7:0]  write_byte_enc_o
    ,output [($clog2(MEM_DIM_KB * 1024)-4):0]  enc_address_o
    ,output [ 63:0]  enc_data_o
);


// If there are some byte to write then 
// forward request for a new random number
assign random_num_request_o = |data_wr_i;

// Same bytes of plain data
assign write_byte_otp_o = data_hi_i? {data_wr_i, 4'b0} : {4'b0, data_wr_i};
assign write_byte_enc_o = data_hi_i? {data_wr_i, 4'b0} : {4'b0, data_wr_i};

// Same address of plain memory
assign otp_address_o = mem_addr_i;
assign enc_address_o = mem_addr_i;

// OTP key is the random number
assign otp_data_o = data_hi_i? {random_num_i, 32'b0} : {32'b0, random_num_i};

// ENC data is a XOR result
wire  [ 31:0] enc_data_w;
assign enc_data_w = random_num_i ^ plain_data_i;

// The data must be 64 bits
assign enc_data_o = data_hi_i? {enc_data_w, 32'b0} : {32'b0, enc_data_w};

endmodule

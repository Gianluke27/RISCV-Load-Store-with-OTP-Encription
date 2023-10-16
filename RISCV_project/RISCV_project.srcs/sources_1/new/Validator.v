`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 15.10.2023 18:23:31
// Design Name: 
// Module Name: Validator
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


module validator
//-----------------------------------------------------------------
// Ports
//-----------------------------------------------------------------
(
    // Inputs
     input  [ 63:0]  enc_data_i
    ,input  [ 63:0]  otp_data_i
    ,input  [ 63:0]  plain_data_i
    ,input           data_hi_i 
    ,input           mem_d_rd_i    
     
    // Outputs
    ,output          data_valid_o
);

wire  [31:0]  enc_word_w;
wire  [31:0]  otp_word_w;
wire  [31:0]  plain_word_w; 

assign enc_word_w = data_hi_i ? enc_data_i[63:32] : enc_data_i[31:0]; 
assign otp_word_w = data_hi_i ? otp_data_i[63:32] : otp_data_i[31:0]; 
assign plain_word_w = data_hi_i ? plain_data_i[63:32] : plain_data_i[31:0]; 

assign data_valid_o = mem_d_rd_i ? (((enc_word_w ^ otp_word_w) == plain_word_w) ? 1'b1: 1'b0): 1'b1;

endmodule



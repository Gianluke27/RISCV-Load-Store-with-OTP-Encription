`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 06.09.2023 12:24:49
// Design Name: 
// Module Name: decoder
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


module decoder(
    input wire [1:0] A,
    output wire [3:0] Y
);

assign Y[0] = (A==2'b00);
assign Y[1] = (A==2'b01);
assign Y[2] = (A==2'b10);
assign Y[3] = (A==2'b11);

endmodule

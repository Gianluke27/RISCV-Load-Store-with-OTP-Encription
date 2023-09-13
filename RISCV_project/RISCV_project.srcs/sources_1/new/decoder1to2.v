`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 12.09.2023 12:25:50
// Design Name: 
// Module Name: decoder1to2
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


module decoder1to2(
    input wire A,
    output wire [1:0] Y
);

assign Y[0] = (A==1'b0);
assign Y[1] = (A==1'b1);
    
endmodule

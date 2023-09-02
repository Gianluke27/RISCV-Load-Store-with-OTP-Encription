`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 13.08.2023 19:11:17
// Design Name: 
// Module Name: RandomGenerator
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


module RandomGenerator
//-----------------------------------------------------------------
// Ports
//-----------------------------------------------------------------
(
    // Input
     input           clk_i
    ,input           rst_i
    ,input           en_i
    
    // Outputs
    ,output [ 31:0]  random_num_o
);

// Internal reg and wire
wire [31:0] x1,x2;
reg [ 31:0] random_num_q;

localparam [31:0]Q = 32'd8005;
localparam [31:0]C = 32'd23;

assign x1 = (Q * random_num_o);
assign x2 = (x1 + C);

assign random_num_o = random_num_q;

always @(posedge clk_i)
begin
	if(rst_i == 1'd1)
		random_num_q <= 32'd17;
	else
		if(en_i)
			random_num_q = x2;
end
endmodule

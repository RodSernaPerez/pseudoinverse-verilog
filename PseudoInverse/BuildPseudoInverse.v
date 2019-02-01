`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:33:32 09/24/2016 
// Design Name: 
// Module Name:    BuildPseudoInverse 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: 
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module BuildPseudoInverse #(parameter nBits=32, parameter N=4, parameter M=4)(
	input [0:nBits*N*M-1]superior,
	input [0:M*nBits-1] inferior,
	input [nBits-1:0] pos,
	input clk,en,
	output reg [0:nBits*N*M-1] pseinv);

	always @ (posedge clk) begin
		if(en==1)begin
			pseinv<=superior;
			pseinv[pos*M*nBits+:M*nBits]<=inferior;	
		end
	end
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:21 03/01/2016 
// Design Name: 
// Module Name:    FlipFlop 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: 
//
// Dependencies: InnerProduct.v
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////
module FlipFlop #(parameter N=100)(
	input clk,
	input [N-1:0] data,
	input [N-1:0] clearValue,
	input enable,
	input reset,
	input clear,
	output reg [N-1:0]out);

	
	always @ ( posedge clk or negedge reset)
	if (~reset) begin
		out <= {N{1'b0}};
	end else begin
		if (clear) begin
			out<=clearValue;
		end else if (enable) begin
			out <= data;
		end
	end	 
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:50:55 09/12/2016 
// Design Name: 
// Module Name:    Multiplexer4 
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
module Multiplexer4 #(parameter N=4)(
	input [1:0]option,
	input [N-1:0]mult0,mult1,mult2,mult3,
	output reg [N-1:0]out);

	always @( option or mult1 or mult0 or mult2 or mult3) begin
		case( option[1:0] )
			 0 : out = mult0;
			 1 : out = mult1;
			 2 : out = mult2;
			 3 : out = mult3;
		endcase
end

endmodule

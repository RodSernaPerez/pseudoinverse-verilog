`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    17:40:15 03/01/2016 
// Design Name: 
// Module Name:    Division 
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
module Division #(parameter nBits=32)
	(
		input [nBits-1:0]a,
		input [nBits-1:0]b,
		input clk,
		input start,
		output [nBits-1:0]res);

	wire rfd; //Completely useless
	wire [nBits-1:0] aexp,bexp;
	wire [nBits-1:0]quotient;
	wire [nBits/2-1:0]fractional;
		
	
	Divisor divis (
		.clk(clk), // input clk
		.ce(start), // input nd
		//.rdy(endDiv), // output rdy
		.rfd(), // output rfd
		.dividend(a), // input [31 : 0] dividend
		.divisor(b), // input [31 : 0] divisor
		.quotient(quotient), // output [31 : 0] quotient
		.fractional(fractional)); // output [15 : 0] fractional


		assign aexp={quotient[nBits/2:0],15'd0};
		assign bexp={{17{fractional[nBits/2-1]}},fractional[nBits/2-2:0]};
		assign res=aexp+bexp;
	/*	assign res[nBits/2-2:0]=fractional[nBits/2-2:0];
		assign res[nBits-1:nBits/2-1]=quotient[nBits/2-1:0];*/
		//assign res=aux[nBits-1:0];

endmodule

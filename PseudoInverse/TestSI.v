`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:07:05 11/01/2016
// Design Name:   SubstracIdentity
// Module Name:   D:/Dropbox/OMP/Project/TestSI.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: SubstracIdentity
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestSI;

	parameter M=2;
	parameter N=1;
	parameter nBits=32;
	
	// Inputs
	reg [M*N*nBits-1:0] a;
	reg clk;
	reg enSI;
	reg [nBits-1:0] position;

	// Outputs
	wire [M*N*nBits-1:0] b;

	// Instantiate the Unit Under Test (UUT)
	SubstracIdentity #(.M(M),.N(N),.nBits(nBits))  uut (
		.a(a), 
		.clk(clk), 
		.enSI(enSI), 
		.position(position), 
		.b(b)
	);
	
	always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		a = 0;
		clk = 0;
		enSI = 0;
		position = 0;

		// Wait 100 ns for global reset to finish
		#100;
      a={17'd4,15'd0,17'd2,15'd0}; 
		#10;
		enSI=1;
		#10;
		enSI=0;
		#30
		position = 1;
		enSI=1;
		#10;
		enSI=0;
		#30;
		// Add stimulus here

	end
      
endmodule


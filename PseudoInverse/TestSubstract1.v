`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   23:09:24 09/04/2016
// Design Name:   SubstracIdentity
// Module Name:   C:/Users/Rodrigo/Desktop/OMP/Project/TestSubstract1.v
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

module TestSubstract1;

	parameter M=2;
	parameter N=2;
	parameter nBits=32;
	
	// Inputs
	reg [M*N*nBits-1:0] a;

	// Outputs
	wire [M*N*nBits-1:0] b;

	// Instantiate the Unit Under Test (UUT)
	SubstracIdentity #(.M(M),.N(N),.nBits(nBits)) uut (
		.a(a), 
		.b(b)
	);

	initial begin
		// Initialize Inputs
		a = {17'd1,15'd0,17'd2,15'd0,17'd3,15'd0,17'd4,15'd0};

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


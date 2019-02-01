`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:48:35 09/04/2016
// Design Name:   Adder
// Module Name:   C:/Users/Rodrigo/Desktop/OMP/Project/testadder.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Adder
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testadder;

	// Inputs
	reg clk;
	reg ce;
	reg add;
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] s;

	// Instantiate the Unit Under Test (UUT)
	Adder uut (
		.clk(clk), 
		.ce(ce), 
		.add(add), 
		.s(s), 
		.a(a), 
		.b(b)
	);

	always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		ce = 1;
		add = 0;
		a = 0;
		b = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		a={17'd3,15'd0};
		b={17'd1,15'd0};
		#100;
	end
      
endmodule


`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:42:49 09/04/2016
// Design Name:   mult
// Module Name:   C:/Users/Rodrigo/Desktop/OMP/Project/testmult.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: mult
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testmult;

	// Inputs
	reg clk;
	reg [31:0] a;
	reg [31:0] b;

	// Outputs
	wire [31:0] p;

	// Instantiate the Unit Under Test (UUT)
	mult uut (
		.clk(clk), 
		.p(p), 
		.a(a), 
		.b(b)
	);
	always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		clk = 0;
		a = {17'd2,15'd0};
		b = {17'd5,15'd0};

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


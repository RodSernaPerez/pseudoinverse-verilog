`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:08:13 09/17/2016
// Design Name:   Division
// Module Name:   C:/Users/Rodrigo/Dropbox/OMP/Project/TestDivision.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: Division
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestDivision;

	// Inputs
	reg [31:0] a;
	reg [31:0] b;
	reg clk;
	reg start;
	

	// Outputs
	wire [31:0] res;
	
	// Instantiate the Unit Under Test (UUT)
	Division uut (
		.a(a), 
		.b(b), 
		.start(start),
		.clk(clk), 
		.res(res)
	);

	always #5 clk=!clk;
	initial begin
		a=0;
		b=0;
		clk = 0;
		start=0;
		#100;
		
		// Initialize Inputs
		a = {17'd5,15'd0};
		b = {17'd2,15'd0};
		start=1;
		

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


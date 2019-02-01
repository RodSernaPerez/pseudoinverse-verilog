`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   20:49:32 09/11/2016
// Design Name:   ConstantxVector
// Module Name:   C:/Users/Rodrigo/Desktop/OMP/Project/testConstantxVector.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ConstantxVector
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testConstantxVector;

	parameter nBits=32;
	parameter N=3;
	
	// Inputs
	reg [nBits-1:0] constant;
	reg [N*nBits-1:0] vector;
	reg start;
	reg reset;
	reg clk;

	// Outputs
	wire flag;
	wire signed [N*nBits-1:0] outvec;

	// Instantiate the Unit Under Test (UUT)
	ConstantxVector #(.N(N),.nBits(nBits)) uut (
		.constant(constant), 
		.vector(vector), 
		.start(start), 
		.reset(reset), 
		.clk(clk), 
		.flag(flag), 
		.outvec(outvec)
	);


	always #5 clk=!clk;
	
	initial begin
		// Initialize Inputs
		constant = {17'd3,15'd0};
		vector = {17'd1,15'd0,17'd2,15'd0,17'd3,15'd0};
		start = 0;
		reset = 1;
		clk = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		reset=0;
		#10
		reset=1;
		#50
		start=1;
		#10;
		start=0;
		#100;
		$display("The result is [%d %d %d]\n",outvec[95:64]/(2**15),outvec[63:32]/(2**15),outvec[31:0]/(2**15));
	
	
		constant = {-32'd1}*2**15;
		start=1;
		#10;
		start=0;
		#100;
		$display("The result is [%d %d %d]\n",outvec[95:64]/(2**15),outvec[63:32]/(2**15),outvec[31:0]/(2**15));

	end
      
endmodule


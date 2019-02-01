`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   19:16:18 09/04/2016
// Design Name:   InnerProduct
// Module Name:   C:/Users/Rodrigo/Desktop/OMP/Project/testinnerproduct.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: InnerProduct
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testinnerproduct;

	parameter N=3;
	parameter nBits=32;
	
	// Inputs
	reg clk;
	reg [nBits*N-1:0] vector1;
	reg [nBits*N-1:0] vector2;
	reg [31:0] resetValue;
	reg [31:0] maximumPos;
	reg start;
	reg reset;
	reg addSubs;

	// Outputs
	wire endflag;
	wire signed[nBits-1:0] result;
	

	
	// Instantiate the Unit Under Test (UUT)
	InnerProduct #(.N(N),.nBits(nBits)) uut (
		.clk(clk), 
		.vector1(vector1), 
		.vector2(vector2), 
		.resetValue(resetValue), 
		.maximumPos(maximumPos), 
		.start(start), 
		.addSubs(addSubs), 
		.endflag(endflag), 
		.reset(reset),
		.result(result)
	);

	always #5 clk=!clk;
	initial begin
		// Initialize Inputs
		reset=1;
		clk = 0;
		vector1 = 0;
		vector2 = 0;
		resetValue = {17'd0,15'd0};
		addSubs = 1;

		start = 0;
		
		// Wait 100 ns for global reset to finish
		#100;

		// Add stimulus here
		vector1={17'd1,15'd0,17'd2,15'd0,17'd3,15'd0};
		vector2={17'd4,15'd0,17'd5,15'd0,17'd6,15'd0};
		

		maximumPos={32'd2};
		
		#100;
		reset=0;
		#20;
		reset=1;
		#10;
		start=1;
		#10;
		start=0;
		#100;
		$display("\n\n\n\n\nTest 1 \n***********\nCalculation:   (1,2,3)*(4,5,6)");
		$display("The result is %d\n",result/(2**15));
		
		
		maximumPos={32'd1};
		#10;
		start=1;
		#10;
		start=0;
		#100;
		$display("Test 2 \n***************\nCalculation:    (1,2)*(4,5)");
		$display("The result is %d\n",result/(2**15));
		
		maximumPos={32'd2};
		resetValue = {17'd31,15'd0};
		addSubs = 0;
		#10;
		start=1;
		#10;
		start=0;
		#100;
		$display("Test 3\n*************\nCalculation:   2-(1,2,3)*(4,5,6)");
		$display("The result is %d\n",result/(2**15));
	end
      
endmodule


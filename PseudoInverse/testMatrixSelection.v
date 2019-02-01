`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   21:52:35 09/04/2016
// Design Name:   ElementSelectorMatrix
// Module Name:   C:/Users/Rodrigo/Desktop/OMP/Project/testMatrixSelection.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ElementSelectorMatrix
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testMatrixSelection;

	parameter M=3;
	parameter N=2;
	parameter nBits=8;
	
	// Inputs
	reg [M*N*nBits-1:0] matrix;
	reg [nBits-1:0] rowsel;
	reg [nBits-1:0] coloumnsel;
	reg [nBits-1:0] ipos;
	reg [nBits-1:0] jpos;


	// Outputs
	wire [N*nBits-1:0] row;
	wire [M*nBits-1:0] coloumn;
	wire [nBits-1:0] element;
	

	// Instantiate the Unit Under Test (UUT)
	ElementSelectorMatrix #(.N(N),.M(M),.nBits(nBits))uut (
		.matrix(matrix), 
		.rowsel(rowsel), 
		.coloumnsel(coloumnsel), 
		.ipos(ipos), 
		.jpos(jpos), 
		.row(row), 
		.coloumn(coloumn), 
		.element(element)
	);

	initial begin
		// Initialize Inputs
		matrix = {8'd1,8'd2,8'd3,8'd4,8'd5,8'd6};
		rowsel = 0;
		coloumnsel = 0;
		ipos = 0;
		jpos = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		ipos=8'd0;
		jpos=8'd1;
		
		coloumnsel=8'd1;
		rowsel=8'd1;
		#100;
	end
      
endmodule


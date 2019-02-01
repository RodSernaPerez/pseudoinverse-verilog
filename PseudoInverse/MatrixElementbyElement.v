`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:53:08 09/24/2016 
// Design Name: 
// Module Name:    MatrixElementbyElement 
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
module MatrixElementbyElement #(parameter M=4, parameter N=4, parameter nBits=32)(
	input [nBits-1:0] row,coloumn,value,
	input reset, write, clk,
	output [M*N*nBits-1:0]matrix);

	genvar i,j;
	reg k,l;
	reg [nBits-1:0] A [M-1:0][N-1:0];
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop1
			for (j = 0; j < N; j = j + 1) begin: loop2
					assign matrix[M*N*nBits-N*i*nBits-j*nBits-1:M*N*nBits-N*i*nBits-j*nBits-nBits]=A[i][j];
			end
		end
	endgenerate
	
	always @(write) begin
		if (reset==0) begin
			for (k = 0; k < M-1; k=k+ 1) begin
				for (l = 0; l < N-1; l=l+ 1) begin
					A[k][l] <= 0;
				end
			end
		end
		if(write==1) begin
			A[row][coloumn]<=value;
		end
	end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    21:37:04 09/04/2016 
// Design Name: 
// Module Name:    ElementSelectorMatrix 
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
module ElementSelectorMatrix #(parameter M=4, parameter N=4,parameter nBits=32)
(
	input [nBits*M*N-1:0] matrix,
	input [nBits-1:0] rowsel,coloumnsel,ipos,jpos,
	output [nBits*N-1:0] row,
	output [nBits*M-1:0] coloumn,
	output [nBits-1:0] element);
	
	wire [nBits-1:0]A[0:M-1][0:N-1];
	genvar i,j;
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop1
			for (j = 0; j < N; j = j + 1) begin: loop2
					assign A[i][j]=matrix[M*N*nBits-N*i*nBits-j*nBits-1-:nBits];
			end
		end
	endgenerate

	generate
		for (i=0;i<N;i=i+1) begin: loop3
			assign row[nBits*N-i*nBits-1-:nBits]=A[rowsel][i];
		end
	endgenerate
	
	generate
		for (i=0;i<M;i=i+1) begin: loop4
			assign coloumn[nBits*M-i*nBits-1-:nBits]=A[i][coloumnsel];
		end
	endgenerate
	
	assign element=A[ipos][jpos];

endmodule

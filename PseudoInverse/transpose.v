`timescale 1ns / 1ps

//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:26:52 02/19/2016 
// Design Name: 
// Module Name:    MatrixMultiplier 
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

module transpose #(	parameter M=2, parameter N=2,	parameter nBits=2)
	(	
		input  [N*M*nBits-1:0]a, 
		output [N*M*nBits-1:0]b
	);
	 

	
	wire [nBits-1:0]Amat[0:M-1][0:N-1];
	wire [nBits-1:0]Bmat[0:N-1][0:M-1];
	
	genvar i,j;
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop1
			for (j = 0; j < N; j = j + 1) begin: loop2
					assign Amat[i][j]=a[M*N*nBits-N*i*nBits-j*nBits-1:M*N*nBits-N*i*nBits-j*nBits-nBits];
			end
		end
	endgenerate
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop3
			for (j = 0; j < N; j = j + 1) begin: loop4
					assign Bmat[j][i]=Amat[i][j];
			end
		end
	endgenerate
	
	generate
		for (i = 0; i < N; i = i + 1) begin: loop5
			for (j = 0; j < M; j = j + 1) begin: loop6
					assign b[M*N*nBits-M*i*nBits-j*nBits-1:M*N*nBits-M*i*nBits-j*nBits-nBits]=Bmat[i][j];
			end
		end
	endgenerate
	
	
endmodule


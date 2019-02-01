`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:58:13 09/04/2016 
// Design Name: 
// Module Name:    SubstracIdentity 
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
module SubstracIdentity #(parameter M=4,parameter nBits=32)(
	input [0:nBits*M-1] a,
	input clk,
	input enSI,
	input [nBits-1:0] position,
	output reg[0:nBits*M-1] b
    );
	 
	always @ (posedge clk) begin
		if(enSI==1) begin
			b=a;
			b[position*nBits+:nBits]=a[position*nBits+:nBits]-{17'd1,15'd0};	
		end
	end
	/*wire [nBits-1:0]A[0:M-1][0:N-1];
	wire [nBits-1:0]B[0:M-1][0:N-1];
	genvar i,j;
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop1
			for (j = 0; j < N; j = j + 1) begin: loop2
					assign A[i][j]=a[M*N*nBits-N*i*nBits-j*nBits-1:M*N*nBits-N*i*nBits-j*nBits-nBits];
			end
		end
	endgenerate
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop3
			for (j = 0; j < N; j = j + 1) begin: loop4
				if(i==j) begin
					Substract1 subs (
					  .a(A[i][j]), // input [31 : 0] a
					  .s(B[i][j]) // output [31 : 0] s
					);
				end else begin
					assign B[i][j]=A[i][j];
				end
			end
		end
	endgenerate

	generate
		for (i = 0; i < M; i = i + 1) begin: loop5
			for (j = 0; j < N; j = j + 1) begin: loop6
					assign b[M*N*nBits-N*i*nBits-j*nBits-1-:nBits]=B[i][j];
			end
		end
	endgenerate*/
endmodule

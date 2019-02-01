`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:59:12 02/18/2016 
// Design Name: 
// Module Name:    fulladd4 
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
module fulladd4(a,b,c_in,c_out,sum);
	 	 
	parameter N=4;
	 
	input [N-1:0] a;
   input [N-1:0] b;
   input c_in;
   output c_out;
   output [N-1:0] sum;
	 
	 

	
//	wire c1,c2,c3;
//	
//	fulladd fa0(a[0],b[0],c_in,sum[0],c1);
//	fulladd fa1(a[1],b[1],c1,sum[1],c2);
//	fulladd fa2(a[2],b[2],c2,sum[2],c3);
//	fulladd fa3(a[3],b[3],c3,sum[3],c_out);
	
	wire [N:0] c;
	assign c[0]=c_in;
	assign c_out=c[N];
	genvar i;  
	
	generate  
	for (i=1; i < N+1; i=i+1)  
	  begin: gen_code_label  
		 fulladd fa(a[i-1],b[i-1],c[i-1],sum[i-1],c[i]);  
	  end  
	endgenerate  

endmodule




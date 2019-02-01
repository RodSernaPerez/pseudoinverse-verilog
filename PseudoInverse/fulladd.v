`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:35:50 02/18/2016 
// Design Name: 
// Module Name:    fulladd 
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
module fulladd(
    input a,
    input b,
    input c_in,
    output c_out,
    output sum
    );

	wire s1;
	wire c1;
	wire c2;
	
	xor(s1,a,b);
	and(c1,a,b);
	
	xor(sum,s1,c_in);
	and(c2,s1,c_in);
	
	xor(c_out,c2,c1);
endmodule

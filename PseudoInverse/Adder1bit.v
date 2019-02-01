`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:51:14 02/17/2016 
// Design Name: 
// Module Name:    Adder1bit 
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
//module Adder1bit(
//    input A,
//    input B,
//    input Cin,
//    output D,
//    output Cout
//    );
//
//	//I/0 port declarations
//	output D,c_out;
//	input A,B,Cin;
//
//	//Internal nets
//	wire s1,c1,c2;
//
//	//Instantiate logic gate primitives
//	xor(s1,A,B);
//	and(c2,s1,Cin);
//	xor(Cout,c2,c1);
//
//endmodule

module Adder1bit(A,B,Cin,D,Cout);
	//I/0 port declarations
    input A,
    input B,
    input Cin,
    output D,
    output Cout


	//Internal nets
	wire s1,c1,c2;

	//Instantiate logic gate primitives
	xor(s1,A,B);
	and(c2,s1,Cin);
	xor(Cout,c2,c1);

endmodule

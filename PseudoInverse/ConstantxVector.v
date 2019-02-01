`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:33:24 09/11/2016 
// Design Name: 
// Module Name:    ConstantxVector 
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
module ConstantxVector #(parameter nBits=32, parameter N=4)(
	input [nBits-1:0] constant,
	input [N*nBits-1:0] vector,
	input start,
	input reset, clk,
	output flag,
	output [N*nBits-1:0] outvec);
	
	wire load, shift;
	wire [nBits-1:0] element, outmult;
	
	shifter #(.nBits(nBits),.M(N*nBits)) sh1 (
    .clock(clk), 
    .reset(reset), 
    .load(load), 
    .shift(shift), 
    .Data_in(), 
    .Data_load(vector),  
    .Data_out(element), 
    .r()
    );
	 
	 mult multiplication (
	  .clk(clk), // input clk
	  .a(constant), // input [31 : 0] a
	  .b(element), // input [31 : 0] b
	  .p(outmult) // output [31 : 0] p
	);
	
	shifter #(.nBits(nBits),.M(N*nBits)) sh2 (
    .clock(clk), 
    .reset(reset), 
    .load(1'b0), 
    .shift(shift), 
    .Data_in(outmult), 
    .Data_load(), 
    .Data_out(), 
    .r(outvec)
    );

	ControlConstantxVector #(.nBits(nBits),.M(N)) control (
    .clk(clk), 
    .reset(reset), 
    .start(start), 
    .flag(flag), 
    .shift(shift), 
    .load(load)
    );




endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:25:21 02/09/2016 
// Design Name: 
// Module Name:    InnerProduct 
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


module InnerProduct #(parameter N=100, parameter nBits=32)(

	input clk,
	input [N*nBits-1:0] vector1,
	input [N*nBits-1:0] vector2,
	input [nBits-1:0] resetValue,
	input [nBits-1:0] maximumPos,
	input start,
	input addSubs,
	input reset,
	output endflag,
	output [nBits-1:0] result);

	wire clearff,enableff;
	wire [nBits-1:0]position;
	wire [nBits-1:0] wirevector1,wirevector2,resmultiplication, wirefeedback,resultadder;



    ElementSelecion #(.N(N*nBits), .nBits(nBits)) selectionVector1 (
    .in(vector1),
    .seleccion(position),
    .out(wirevector1)
    );

    ElementSelecion #(.N(N*nBits), .nBits(nBits)) selectionVector2 (
    .in(vector2),
    .seleccion(position),
    .out(wirevector2)
    );

	 
	 mult multiplication (
	  .clk(clk), // input clk
	  .a(wirevector1), // input [31 : 0] a
	  .b(wirevector2), // input [31 : 0] b
	  .p(resmultiplication) // output [31 : 0] p
	);


		Adder add (
	  .b(resmultiplication), // input [31 : 0] a
	  .a(wirefeedback), // input [31 : 0] b
	  .clk(clk), // input clk
	  .add(addSubs), // input add
	  .ce(1'd1), // input ce
	  .s(resultadder) // output [31 : 0] s
	);
    FlipFlop #(.N(nBits))ff
    (
    .clk(clk),
    .reset(reset),
    .data(resultadder),
    .clearValue(resetValue),
    .enable(enableff),
    .clear(clearff),
    .out(wirefeedback)
    );

	ControlInnerProduct #(.nBits(nBits)) Control (
	.clk(clk),
	.reset(reset),
	.start(start),
	.maximumPos(maximumPos),
	.position(position),
	.clearff(clearff),
	.enableff(enableff),
	.flag(endflag)
	);

    FlipFlop #(.N(nBits))ffout
    (
    .clk(clk),
    .reset(reset),
    .data(resultadder),
    .clearValue(),
    .enable(endflag),
    .clear(1'b0),
    .out(result)
    );
    
endmodule

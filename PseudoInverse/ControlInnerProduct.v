`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:52:09 03/15/2016 
// Design Name: 
// Module Name:    ControlSignalsGenerator 
// Project Name: 
// Target Devices: 
// Tool versions: 
// Description: Signal control for the Inner Product module
//
// Dependencies: InnerProduct.v
//
// Revision: 
// Revision 0.01 - File Created
// Additional Comments: 
//
//////////////////////////////////////////////////////////////////////////////////


module ControlInnerProduct #(parameter nBits=32) (
	input clk,
	input reset,
	input start,
	input [nBits-1:0] maximumPos,
	output reg [nBits-1:0] position,
	output reg clearff,enableff,flag

	);

	reg [nBits-1:0] counter;
	reg [nBits-1:0] counter2;
	reg [3:0] state;
	
	parameter Reset = 4'd0000;
	parameter WaitToStart = 4'd0001;
	parameter IncrementPos = 4'd0002;
	parameter WaitForOperation = 4'd0003;
	parameter End = 4'd0004;

 	always @ (posedge clk or negedge reset) begin
 		clearff<=0;
 		enableff<=0;
 		flag<=0;

	 	if (reset == 0) begin
			state <= Reset;
		end else begin

			case (state)
				Reset: begin
					state<=WaitToStart;
				end
				WaitToStart: begin
					counter<={nBits{1'b0}};
					counter2<={nBits{1'b0}};
					clearff<=1;
					position<={nBits{1'b0}};
					if (start == 1) begin
						state <= WaitForOperation;
					end
				end
				WaitForOperation: begin
					counter<=counter+1;
					if (counter==1) begin//CAMBIAR AQUI POR EL NUMERO DE CICLOS PARA CADA OPERACION. CREO QUE DEBE SER 2
						counter<={nBits{1'b0}};
						if(counter2==maximumPos) begin
							state<=End;
						end else begin
							state<=IncrementPos;
						end
					end
				end
				IncrementPos: begin
					enableff<=1;
					counter2<=counter2+1;
					position<=position+1;
					state<=WaitForOperation;
				end
				End: begin
					state<=WaitToStart;
					flag<=1;
				end
				endcase
			end
		end


endmodule

				
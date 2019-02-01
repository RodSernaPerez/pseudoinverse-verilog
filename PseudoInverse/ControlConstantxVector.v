`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:42:41 09/11/2016 
// Design Name: 
// Module Name:    ControlConstantxVector 
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
module ControlConstantxVector #(parameter nBits=32, parameter M=4)(
	input clk,reset,start,
	output reg flag,shift, load
    );
	 
	reg [nBits-1:0] counter;
	reg [3:0] state;
	
	parameter Reset = 4'd0000;
	parameter Wait = 4'd0001;
	parameter Load = 4'd0002;
	parameter Operate = 4'd0003;
	parameter End = 4'd0004;

 	always @ (posedge clk or negedge reset) begin
 		shift<=0;
 		flag<=0;
		load<=0;

	 	if (reset == 0) begin
			state <= Reset;
		end else begin

			case (state)
				Reset: begin
					state<=Wait;
				end
				Wait: begin
					counter<={nBits{1'b0}};
					if (start == 1) begin
						state <= Load;
					end
				end
				Load: begin
					load<=1;
					state<=Operate;
				end
				Operate: begin
					shift<=1;
					
					if (counter== M+1) begin  //CAMBIAR ESTE NUMERO
						state<=End;
					end else begin
						counter<=counter+1;
					end
				end
				End: begin
					state<=Wait;
					flag<=1;
				end
				endcase
			end
		end

endmodule

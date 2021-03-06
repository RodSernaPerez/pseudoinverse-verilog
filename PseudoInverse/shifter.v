`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:37:09 03/11/2016 
// Design Name: 
// Module Name:    shifter 
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
module shifter#(parameter M=4*32, parameter nBits=32)
    (
	 input clock, reset, load, shift,
	 input [0:nBits-1] Data_in,
	 input [0:M-1] Data_load,
    output reg [0:nBits-1] Data_out,	 
	 output reg [M-1:0] r
    );
    	 
		 
		 

   always @ (negedge reset or posedge clock) begin
      if (reset == 0) begin
          r <= {M{'b0}};       
			 Data_out <= {nBits{'b0}};   
			 end
      else if (load == 1) begin
          r <= Data_load;
		 end else if (shift == 1) begin
			Data_out <= r[M-1:M-nBits];
			r[M-1:nBits] <= r[M-nBits-1:0];
         r[nBits-1:0] <= Data_in;
		end
	end
endmodule

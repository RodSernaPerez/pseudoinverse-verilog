`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    15:05:36 09/15/2016 
// Design Name: 
// Module Name:    ControlPseudoinverse 
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
module ControlPseudoinverse #(parameter N=4, parameter M=4, parameter nBits=32)(
	input start, endflagIP, clk, reset,flagCxV,
	input [nBits-1:0] dim,
	output reg [1:0] sel1, sel2,
	output reg addSubsIp, startIP, shiftr,shifts,enm,startCxV,s3,s4,enL,ent,endPs,enSI,
	output reg [M-1:0] shiftU,
	output reg [nBits-1:0] resetvalue, colpsAsel, rowAsel, dimIP,positionEleL,rowpsAsel,putingzeros
    );
	 

	reg [4:0] state;
	reg [31:0] counter;
	
	parameter CyclesPerDivision=60;
	
	parameter Start = 5'd0000;
	parameter Calcrk = 5'd0001;
	parameter Waitforrk = 5'd0002;
	parameter Saverk = 5'd0003;
	parameter Calcs = 5'd0004;
	parameter Waitfors = 5'd0005;
	parameter Saves = 5'd0006;
	parameter Calcform = 5'd0007;
	parameter Waitform = 5'd0008;
	parameter Savem = 5'd0009;
	parameter Divid = 5'd0010;
	parameter CalcL = 5'd0011;
	parameter WaitforL = 5'd0012;
	parameter KeepL = 5'd0013;
	parameter Calctk=5'd0014;
	parameter WaitFortk=5'd15;
	parameter Keeptk = 5'd0016;
	parameter SubstractI=5'd17;
	parameter IncEleL=5'd18;
	parameter CalcU=5'd0019;
	parameter WaitforU=5'd20;
	parameter KeepU=5'd21;
	parameter FixU=5'd22;
	parameter End = 5'd23;

 	always @ (posedge clk or negedge reset) begin

		startIP<=0;
		shifts<=0;
		shiftr<=0;
		enm<=0;
		startCxV<=0;
		enL<=0;
		enSI<=0;
		endPs<=0;
		shiftU<={M{1'b0}};
		putingzeros<={nBits{1'd0}};
		
	 	if (reset == 0) begin
			state <= Start;
		end else begin
		
			case (state)
				Start: begin
					colpsAsel<=32'b0;
					rowAsel<=32'b0;
					counter<=0;
					positionEleL<=0;
					
					if (start==1) begin
						state<=Calcrk;
					end
				end
				Calcrk: begin
					sel1<=2'b0;
					sel2<=2'b0;
					
					addSubsIp<=1'b1;
					dimIP<=dim;
					if (colpsAsel==rowAsel) begin
						resetvalue<=(-32'b1)*2**15;
					end else begin
						resetvalue<=32'b0;
					end
					
					startIP<=1;
					state<=Waitforrk;
				end
				Waitforrk: begin
					if (endflagIP==1) begin
						state<=Saverk;
					end
				end	
				Saverk: begin
					shiftr<=1;
					rowAsel<=rowAsel+1;
					
					if(rowAsel==M-1) begin
						state<=Calcs;
					end else begin
						state<=Calcrk;
					end
				end
				Calcs: begin
					sel1<=2'd1;
					sel2<=2'd1;
					addSubsIp<=1;
					resetvalue<=32'd0;
					startIP<=1;
					dimIP<=M-1;
					
					state<=Waitfors;
				end
				Waitfors: begin
					if (endflagIP==1) begin
						state<=Saves;
					end
				end
				Saves: begin
					shifts<=1;
					rowAsel<=32'd0;
					colpsAsel<=colpsAsel+1;
					
					if(colpsAsel==M-1) begin
						state<=Calcform;
					end else begin
						state<=Calcrk;
					end
				end
				Calcform: begin
					sel1<=2'd2;
					sel2<=2'd1;
					
					dimIP<=M-1;
					addSubsIp<=1;
					resetvalue<=32'd0;
					startIP<=1;
					
					state<=Waitform;
				end
				Waitform: begin
					if (endflagIP==1) begin
						state<=Savem;
					end
				end
				Savem: begin
					enm<=1;
					state<=Divid;
				end	
				Divid: begin
					if (counter==CyclesPerDivision) begin
						state<=CalcL;
					end else begin
						counter<=counter+1;
					end
				end
				CalcL: begin
					s3<=0;
					s4<=0;
					startCxV<=1;
					state<=WaitforL;
				end
				WaitforL: begin
					if (flagCxV==1) begin
						state<=KeepL;
					end
				end
				KeepL: begin
					enL<=1;
					positionEleL<=0;
					state<=Calctk;
				end
				Calctk: begin
					s3<=1;
					s4<=1;
					startCxV<=1;
					state<=WaitFortk;
				end
				WaitFortk: begin
					if(flagCxV==1) begin
						state<=Keeptk;
					end
				end
				Keeptk: begin
					ent<=1;
					rowpsAsel<=0;
					state<=SubstractI;
				end
				SubstractI: begin
					enSI<=1;
					state<=IncEleL;
				end
				IncEleL: begin
					positionEleL<=positionEleL+1;
					state<=CalcU;
				end
				CalcU: begin
					sel1<=3;
					sel2<=3;
					addSubsIp<=0;
					startIP<=1;
					dimIP<=M-1;
					state<=WaitforU;
				end
				WaitforU: begin
					if(endflagIP==1) begin
						state<=KeepU;
					end
				end
				KeepU: begin
					shiftU[positionEleL-1]<=1;
					putingzeros<={nBits{1'd1}};
					rowpsAsel<=rowpsAsel+1;
					if(rowpsAsel<dim) begin
						state<=CalcU;
					end else begin
						if(rowpsAsel==dim && positionEleL==M) begin
							state<=FixU;
							counter<=0;
						end else begin
							state<=Calctk;
						end
					end
				end
				FixU: begin
					shiftU<={M{1'd1}};
					putingzeros<={nBits{1'd0}};
					counter<=counter+1;
					if(counter==N-dim-2) begin
						state<=End;
					end
				end
				End: begin
					endPs<=1;
					state<=Start;
				end
			endcase
		end
	end

endmodule

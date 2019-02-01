`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:50:48 09/12/2016 
// Design Name: 
// Module Name:    PseudoInverse 
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
module PseudoInverse #(parameter M=4, parameter N=4, parameter nBits=32)(
	input [M*N*nBits-1:0]A,P,
	input [M*nBits-1:0] a,
	input [nBits-1:0] dim,
	input clk, reset, start,
	output [M*N*nBits-1:0] PsudoInv,
	output endPs);
	
	wire [N*nBits-1:0] rowA, colpsA;
	wire [M*nBits-1:0] rowpsA,wirerk,wires,vecin,outvec,wireL,wiret,wireq,inIP1,inIP2;
	wire [nBits-1:0] rowAsel, rowpsAsel, colpsAsel,positionEleL,elementL,resetValueIP,resultIP,dimIP,wirem,invm,constin,putingzeros;
	wire [1:0] sel1,sel2;
	wire startIP,addSubsIp,endflagIP,startCxV,flagCxV,s3,s4,enL,ent;
	wire shiftr, shifts, enm,enSI;
	wire [M*N*nBits-1:0]wireU, wireUreal;
	wire [0:M-1]shiftU;
	wire [nBits*N-1:0]U[M-1:0];
	
	genvar i;
	
	ElementSelectorMatrix #(.M(M),.N(N),.nBits(nBits)) rowSelA (
    .matrix(A), 
    .rowsel(rowAsel), 
    .coloumnsel(), 
    .ipos(), 
    .jpos(), 
    .row(rowA), 
    .coloumn(), 
    .element()
    );

	ElementSelectorMatrix #(.M(N),.N(M),.nBits(nBits)) rowcolSelpsA (
    .matrix(P), 
    .rowsel(rowpsAsel), 
    .coloumnsel(colpsAsel), 
    .ipos(), 
    .jpos(), 
    .row(rowpsA), 
    .coloumn(colpsA), 
    .element()
    );


	 
	 Multiplexer4 #(.N(M*nBits)) mux1 (
    .option(sel1), 
    .mult0({rowA,{(M-N)*nBits{1'd0}}}), 
    .mult1(wirerk), 
    .mult2(wires), 
    .mult3(rowpsA), 
    .out(inIP1)
    );

	 Multiplexer4 #(.N(M*nBits)) mux2 (
    .option(sel2), 
    .mult0({colpsA,{(M-N)*nBits{1'd0}}}), 
    .mult1(a), 
    .mult2(a), 
    .mult3(wiret), 
    .out(inIP2)
    );
	 
	 InnerProduct#(.N(M),.nBits(nBits)) IP (
    .clk(clk), 
    .vector1(inIP1), 
    .vector2(inIP2), 
    .resetValue(resetValueIP), 
    .maximumPos(dimIP), 
    .start(startIP), 
    .addSubs(addSubsIp), 
    .reset(reset), 
    .endflag(endflagIP), 
    .result(resultIP)
    );

	shifter #(.M(nBits*M),.nBits(nBits))regr (
    .clock(clk), 
    .reset(reset), 
    .load(), 
    .shift(shiftr), 
    .Data_in(resultIP), 
    .Data_load(), 
    .Data_out(), 
    .r(wirerk)
    );
	 
	shifter #(.M(nBits*M),.nBits(nBits))regs (
    .clock(clk), 
    .reset(reset), 
    .load(), 
    .shift(shifts), 
    .Data_in(resultIP), 
    .Data_load(), 
    .Data_out(), 
    .r(wires)
    );
	 
	 FlipFlop #(.N(nBits))ffm (
    .clk(clk), 
    .data(resultIP), 
    .clearValue(), 
    .enable(enm), 
    .reset(reset), 
    .clear(1'b0), 
    .out(wirem)
    );
	 
	 Division div (
    .a({17'd1,15'd0}), 
    .b(wirem), 
    .clk(clk), 
    .start(1'b1), 
    .res(invm)
    );

	Multiplexer2 #(.N(nBits*M)) mux3 (
    .option(s3), 
    .mult0(wires), 
    .mult1(a), 
    .out(vecin)
    );

	Multiplexer2 #(.N(nBits)) mux4 (
    .option(s4), 
    .mult0(invm), 
    .mult1(elementL), 
    .out(constin)
    );
	 
	 ConstantxVector #(.nBits(nBits), .N(M))CxV (
    .constant(constin), 
    .vector(vecin), 
    .start(startCxV), 
    .reset(reset), 
    .clk(clk), 
    .flag(flagCxV), 
    .outvec(outvec)
    );

	 FlipFlop #(.N(M*nBits))ffL (
    .clk(clk), 
    .data(outvec), 
    .clearValue(), 
    .enable(enL), 
    .reset(reset), 
    .clear(1'b0), 
    .out(wireL)
    );

	ElementSelecion #(.N(M*nBits), .nBits(nBits)) selectionVectorL (
    .in(wireL),
    .seleccion(positionEleL),
    .out(elementL)
    );

	SubstracIdentity #(.M(M),.nBits(nBits)) SI (
    .a(outvec), 
    .clk(clk), 
	 .enSI(enSI),
    .position(positionEleL), 
    .b(wireq)
    );

	FlipFlop #(.N(M*nBits))fftk (
    .clk(clk), 
    .data(wireq), 
    .clearValue(), 
    .enable(ent), 
    .reset(reset), 
    .clear(1'b0), 
    .out(wiret)
    );



	 
	generate
		for (i=0; i<M; i=i+1) begin: loop
			shifter #(.M(nBits*N),.nBits(nBits))regU (
			 .clock(clk), 
			 .reset(reset), 
			 .load(1'b0), 
			 .shift(shiftU[i]), 
			 .Data_in(putingzeros & resultIP), 
			 .Data_load(), 
			 .Data_out(), 
			 .r(U[i])
			 );
		end
	endgenerate
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop2
			assign wireU[M*N*nBits-i*N*nBits-1-:nBits*N]=U[M-1-i];
		end
	endgenerate
	


	transpose #(.M(M),.N(N),.nBits(nBits)) TransU (
		 .a(wireU), 
		 .b(wireUreal)
		 );
		 
	BuildPseudoInverse #(.nBits(nBits),.M(M),.N(N))Buildps (
    .superior(wireUreal), 
    .inferior(wireL), 
    .pos(dim+1), 
	 .en(endPs),
    .clk(clk), 
    .pseinv(PsudoInv)
    );




	ControlPseudoinverse #(.M(M),.N(N),.nBits(nBits))controlps (
    .start(start), 
    .endflagIP(endflagIP), 
    .clk(clk), 
    .reset(reset), 
    .sel1(sel1), 
	 .enm(enm),
    .sel2(sel2), 
	 .enSI(enSI),
    .addSubsIp(addSubsIp), 
    .startIP(startIP), 
	 .dimIP(dimIP),
	 .shiftU(shiftU),
    .shiftr(shiftr), 
    .shifts(shifts), 
    .resetvalue(resetValueIP), 
    .colpsAsel(colpsAsel),
	 .rowpsAsel(rowpsAsel),
    .rowAsel(rowAsel), 
    .dim(dim),
	 .ent(ent),
	 .s3(s3),
	 .s4(s4),
	 .startCxV(startCxV),
	 .flagCxV(flagCxV),
	 .enL(enL),
	 .endPs(endPs),
	 .positionEleL(positionEleL),
	 .putingzeros(putingzeros)
    );

endmodule

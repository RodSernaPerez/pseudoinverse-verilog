`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:47:45 09/15/2016
// Design Name:   PseudoInverse
// Module Name:   C:/Users/Rodrigo/Dropbox/OMP/Project/TestPseudoinverse.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: PseudoInverse
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module TestPseudoinverse;

	parameter M=4;
	parameter N=M-1;
	parameter nBits=32;
	
	// Inputs
	reg [M*N*nBits-1:0] A;
	reg [M*N*nBits-1:0] P;
	reg [M*nBits-1:0] a;
	reg [nBits-1:0] dim;
	reg clk, start;
	reg reset;

	// Outputs
	wire [M*N*nBits-1:0] PsudoInv;
	wire endPs;

	genvar i,j;
	integer k,l;
	wire [nBits-1:0]Amatrix[M-1:0][N-1:0];
	wire [nBits-1:0]Pmatrix[N-1:0][M-1:0];
	real signed aux;
	reg signed [nBits-1:0] aux2;
	
	generate
		for (i = 0; i < M; i = i + 1) begin: loop1
			for (j = 0; j < N; j = j + 1) begin: loop2
					assign Amatrix[i][j]=A[M*N*nBits-N*i*nBits-j*nBits-1-:nBits];
			end
		end
	endgenerate
	
	generate
		for (i = 0; i < N; i = i + 1) begin: loop3
			for (j = 0; j < M; j = j + 1) begin: loop4
					assign Pmatrix[i][j]=PsudoInv[M*N*nBits-M*i*nBits-j*nBits-1-:nBits];
			end
		end
	endgenerate
	// Instantiate the Unit Under Test (UUT)
	PseudoInverse #(.M(M),.N(N),.nBits(nBits)) uut (
		.A(A), 
		.P(P), 
		.a(a), 
		.dim(dim), 
		.endPs(endPs),
		.clk(clk), 
		.start(start),
		.reset(reset), 
		.PsudoInv(PsudoInv)
	);
	
	always #5 clk=!clk;

	always @(*) begin
		if(endPs==1 && dim == 32'd0) begin
			#30;
			$write("\n\n\n\n\nMatrix Pseudoinverse of A\n======\n\n");
			for (k=0; k<N; k=k+1) begin
				for(l=0; l<M; l=l+1) begin
						aux2=Pmatrix[k][l][31:0];
						aux=$itor(aux2);
						aux=aux/(2**15);
						//aux=aux*0.133;
						$write("%f     ",aux);
				end
				$write("\n");
			end
			a=128'hffffd03effffe43c00006ff1ffffe3af;
			P=PsudoInv;
			dim=32'd1;
			start=1;
			#20;
			start=0;

		end
		if(endPs==1 && dim == 32'd1) begin
			#30;
			$write("\n\n\n\n\nMatrix Pseudoinverse of A\n======\n\n");
			for (k=0; k<N; k=k+1) begin
				for(l=0; l<M; l=l+1) begin
						aux2=Pmatrix[k][l][31:0];
						aux=$itor(aux2);
						aux=aux/(2**15);
						//aux=aux*0.133;
						$write("%f     ",aux);
				end
				$write("\n");
			end
			/*a=96'h000051f8ffffd80c000059d4;
			P=PsudoInv;
			dim=32'd2;
			start=1;
			#20;
			start=0;*/

		end
		/*if(endPs==1 && dim == 32'd2) begin
			#30;
			$write("\n\n\n\n\nMatrix Pseudoinverse of A\n======\n\n");
			for (k=0; k<N; k=k+1) begin
				for(l=0; l<M; l=l+1) begin
						aux2=Pmatrix[k][l][31:0];
						aux=$itor(aux2);
						aux=aux/(2**15);
						//aux=aux*0.133;
						$write("%f     ",aux);
				end
				$write("\n");
			end
			a=96'h00005b01fffff817000059aa;
			P=PsudoInv;
			dim=32'd3;
			start=1;
			#20;
			start=0;

		end
		if(endPs==1 && dim == 32'd3) begin
			#50;
			$write("\n\n\n\n\nMatrix Pseudoinverse of A\n======\n\n");
			for (k=0; k<N; k=k+1) begin
				for(l=0; l<M; l=l+1) begin
						aux2=Pmatrix[k][l][31:0];
						aux=$itor(aux2);
						aux=aux/(2**15);
						//aux=aux*0.133;
						$write("%f     ",aux);
				end
				$write("\n");
			end

		end*/
	end
	initial begin
		// Initialize Inputs
		A=384'h0000439200006ac0ffffd03effffa3c700001e4bffffe43cfffff6b40000329f00006ff1ffffc732ffffd928ffffe3af;

		P=384'h00004392ffffa3c7fffff6b4ffffc7320000000000000000000000000000000000000000000000000000000000000000;

		a=128'h00006ac000001e4b0000329fffffd928;


		
		dim = 32'd0;
		clk = 0;
		reset = 0;
		start=0;
		#100;
		$write("\n\n\n\n\nMatrix A\n======\n\n");
		//AQUI HAY QUE MOSTRAR LA MATRIZ CON UN BLUCE FOR
		for (k=0; k<M; k=k+1) begin
			for(l=0; l<N; l=l+1) begin
					aux2=Amatrix[k][l][31:0];
					aux=$itor(aux2);
					aux=aux/(2**15);
					//aux=aux*0.133;
					$write("%f     ",aux);
			end
			$write("\n");
		end
		
		#100;
		// Wait 100 ns for global reset to finish
		#100;
      reset=1;
		start=1;
		#10;
		start=0;
		#100;
		// Add stimulus here

	end
      
endmodule


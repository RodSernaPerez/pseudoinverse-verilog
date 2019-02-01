`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   17:42:33 02/18/2016
// Design Name:   fulladd4
// Module Name:   C:/Users/Rodrigo/Desktop/Universidad/Cuarto/Project/Verilog/Adder/test.v
// Project Name:  Adder
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: fulladd4
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test;

	// Inputs
	reg [3:0] a;
	reg [3:0] b;
	reg c_in;

	// Outputs
	wire c_out;
	wire [3:0] sum;

	// Instantiate the Unit Under Test (UUT)
	fulladd4 uut (
		.a(a), 
		.b(b), 
		.c_in(c_in), 
		.c_out(c_out), 
		.sum(sum)
	);

	initial begin
		// Initialize Inputs
		a = 0;
		b = 0;
		c_in = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here
		genvar numa=0, numb=0;
		genvar numBits=4;
		
		for (numa=0;numa<2^(numbits-1)-1;numa=numa+1)
			a=$realtobits(numa);
			for (numb=0;numb<2^(numbits-1)-1;numb=numb+1)
				b=$realtobits(numb);
				
				#100
				if(numa+numb<2^(numbits-1)-1)
					if(a+b != $bitstoreal(sum))
						$display ("WRONG");
					end
				else
					if(c_out == 1'b0 )
						$display ("WRONG");
					end
				end
						
			end
		end
			
		
	end
      
endmodule


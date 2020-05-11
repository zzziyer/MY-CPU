`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   12:20:57 12/18/2018
// Design Name:   MEM_EXT
// Module Name:   D:/p6/tsetmemext.v
// Project Name:  p6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MEM_EXT
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module tsetmemext;

	// Inputs
	reg [1:0] AO;
	reg [31:0] Din;
	reg [2:0] op;

	// Outputs
	wire [31:0] Dout;

	// Instantiate the Unit Under Test (UUT)
	MEM_EXT uut (
		.AO(AO), 
		.Din(Din), 
		.op(op), 
		.Dout(Dout)
	);

	initial begin
		// Initialize Inputs
		AO = 2'b10;
		Din = 32'h00010000;
		op = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


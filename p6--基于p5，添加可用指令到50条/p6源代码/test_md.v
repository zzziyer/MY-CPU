`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   22:43:59 12/14/2018
// Design Name:   MUL_DIV
// Module Name:   D:/p6/test_md.v
// Project Name:  p6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: MUL_DIV
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module test_md;

	// Inputs
	reg clk;
	reg [31:0] D1;
	reg [31:0] D2;
	reg [3:0] op;

	// Outputs
	wire busy;
	wire [31:0] HI;
	wire [31:0] LO;

	// Instantiate the Unit Under Test (UUT)
	MUL_DIV uut (
		.clk(clk), 
		.D1(D1), 
		.D2(D2), 
		.op(op), 
		.busy(busy), 
		.HI(HI), 
		.LO(LO)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		D1 = -6;
		D2 = -3;
		op = 2;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
    
	always 
	#5 clk=~clk;
endmodule


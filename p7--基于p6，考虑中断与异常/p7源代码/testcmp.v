`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   15:03:36 12/17/2018
// Design Name:   CMP
// Module Name:   D:/p6/testcmp.v
// Project Name:  p6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: CMP
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testcmp;

	// Inputs
	reg [31:0] RF_RD1;
	reg [31:0] RF_RD2;
	reg [2:0] branchop;

	// Outputs
	wire cmp_out;

	// Instantiate the Unit Under Test (UUT)
	CMP uut (
		.RF_RD1(RF_RD1), 
		.RF_RD2(RF_RD2), 
		.branchop(branchop), 
		.cmp_out(cmp_out)
	);

	initial begin
		// Initialize Inputs
		RF_RD1 = -1;
		RF_RD2 = 0;
		branchop = 3;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


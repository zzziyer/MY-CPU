`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   11:56:22 12/26/2018
// Design Name:   cpu
// Module Name:   D:/p6/cpu_test.v
// Project Name:  p6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: cpu
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module cpu_test;

	// Inputs
	reg clk;
	reg reset;
	reg [31:0] Pr_RD;
	reg T0_irq;
	reg T1_irq;

	// Outputs
	wire [31:2] PrAddr;
	wire [31:0] Pr_WD;
	wire PrWe;

	// Instantiate the Unit Under Test (UUT)
	cpu uut (
		.clk(clk), 
		.reset(reset), 
		.Pr_RD(Pr_RD), 
		.T0_irq(T0_irq), 
		.T1_irq(T1_irq), 
		.PrAddr(PrAddr), 
		.Pr_WD(Pr_WD), 
		.PrWe(PrWe)
	);

	initial begin
		// Initialize Inputs
		clk = 0;
		reset = 0;
		Pr_RD = 0;
		T0_irq = 0;
		T1_irq = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
	always
	#5 clk=~clk;
      
endmodule


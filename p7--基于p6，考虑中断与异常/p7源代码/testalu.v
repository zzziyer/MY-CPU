`timescale 1ns / 1ps

////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer:
//
// Create Date:   14:26:48 12/17/2018
// Design Name:   ALU
// Module Name:   D:/p6/testalu.v
// Project Name:  p6
// Target Device:  
// Tool versions:  
// Description: 
//
// Verilog Test Fixture created by ISE for module: ALU
//
// Dependencies:
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
////////////////////////////////////////////////////////////////////////////////

module testalu;

	// Inputs
	reg [31:0] rs_out;
	reg [31:0] rt_out;
	reg [31:0] imm_ext;
	reg [31:0] ins;
	reg [4:0] aluop;
	reg sll_slt;
	reg ALUSrc;

	// Outputs
	wire [31:0] result;
	wire zero;
	wire overflow;

	// Instantiate the Unit Under Test (UUT)
	ALU uut (
		.rs_out(rs_out), 
		.rt_out(rt_out), 
		.imm_ext(imm_ext), 
		.ins(ins), 
		.aluop(aluop), 
		.sll_slt(sll_slt), 
		.ALUSrc(ALUSrc), 
		.result(result), 
		.zero(zero), 
		.overflow(overflow)
	);

	initial begin
		// Initialize Inputs
		rs_out = 32'ha2090000;
		rt_out = 32'ha2090000;
		imm_ext = 0;
		ins = 0;
		aluop = 0;
		sll_slt = 0;
		ALUSrc = 0;

		// Wait 100 ns for global reset to finish
		#100;
        
		// Add stimulus here

	end
      
endmodule


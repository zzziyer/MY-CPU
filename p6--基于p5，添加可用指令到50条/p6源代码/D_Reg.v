`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:43:34 12/03/2018 
// Design Name: 
// Module Name:    D_Reg 
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
module D_Reg(
	input clk,
	input reset,
	input stall,
	input m_stall,
    input [31:0] IR_D_in,
    input [31:0] PC4_D_in,
	output reg[31:0] IR_D_out=0,
    output reg[31:0] PC4_D_out=0
    );
	
	 
	 always @(posedge clk) begin
		if(reset==1)begin
			IR_D_out<=0;
			PC4_D_out<=0;
		end
		else begin
			if(stall==0&&m_stall==0)begin
				IR_D_out<=IR_D_in;
				PC4_D_out<=PC4_D_in;		
			end
		end
	 end

endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:50:07 12/03/2018 
// Design Name: 
// Module Name:    M_reg 
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
module M_Reg(
	input clk,
	input reset,
	input CP0_jump,
	input [1:0]interupt,
	input [4:0]EXC_E,
	input [31:0]CP0_npc,
	input [4:0]Forward_Addr_M_in,
	input [31:0]Forward_Data_M_in,
    input [31:0] IR_M_in,
    input [31:0] PC4_M_in,
    input [31:0] AO_M_in,
    input [31:0] RT_M_in,
	input [31:0] HI_in,
	input [31:0] LO_in,
	input [31:0]CP0_data_in,
	output reg[31:0]CP0_data_out=0,
	output reg[31:0] HI_out=0,
	output reg[31:0] LO_out=0,
    output reg[31:0] IR_M_out=0,
    output reg[31:0] PC4_M_out=32'h00003004,
    output reg[31:0] AO_M_out=0,
	output reg[4:0]Forward_Addr_M_out=0,
	output reg[31:0]Forward_Data_M_out=0,
    output reg[31:0] RT_M_out=0
    );
	 
	 always @(posedge clk)begin
		if(reset==1)begin
			IR_M_out<=0;
			PC4_M_out<=32'h3004;
			AO_M_out<=0;
			RT_M_out<=0;
			Forward_Addr_M_out<=0;
			Forward_Data_M_out<=0;
			HI_out<=0;
			LO_out<=0;
			CP0_data_out<=0;
		end
		else if(CP0_jump)begin
			IR_M_out<=0;
			PC4_M_out<=CP0_npc;
			AO_M_out<=0;
			RT_M_out<=0;
			Forward_Addr_M_out<=0;
			Forward_Data_M_out<=0;
			HI_out<=0;
			LO_out<=0;
			CP0_data_out<=0;
		end
		else begin
			IR_M_out<=IR_M_in;
			PC4_M_out<=PC4_M_in;
			AO_M_out<=AO_M_in;
			RT_M_out<=RT_M_in;
			HI_out<=HI_in;
			LO_out<=LO_in;
			Forward_Addr_M_out<=Forward_Addr_M_in;
			Forward_Data_M_out<=Forward_Data_M_in;
			CP0_data_out<=CP0_data_in;
		end
	 end
	 


endmodule

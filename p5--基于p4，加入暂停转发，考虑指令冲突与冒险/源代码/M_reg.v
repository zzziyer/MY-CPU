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
    input jal_slt,
	input clk,
	input reset,
	input [4:0]Forward_Addr_M_in,
	input [31:0]Forward_Data_M_in,
    input [31:0] IR_M_in,
    input [31:0] PC4_M_in,
    input [31:0] AO_M_in,
    input [31:0] RT_M_in,
    output reg[31:0] IR_M_out=0,
    output reg[31:0] PC4_M_out=0,
    output reg[31:0] AO_M_out=0,
	output reg[4:0]Forward_Addr_M_out=0,
	output reg[31:0]Forward_Data_M_out=0,
    output reg[31:0] RT_M_out=0
    );
	 
	 always @(posedge clk)begin
		if(reset==1)begin
			IR_M_out<=0;
			PC4_M_out<=0;
			AO_M_out<=0;
			RT_M_out<=0;
			Forward_Addr_M_out<=0;
			Forward_Data_M_out<=0;
		end
		else begin
			IR_M_out<=IR_M_in;
			PC4_M_out<=PC4_M_in;
			AO_M_out<=AO_M_in;
			RT_M_out<=RT_M_in;
			Forward_Addr_M_out<=Forward_Addr_M_in;
			if(jal_slt==1)
				Forward_Data_M_out<=Forward_Data_M_in;
			else
				Forward_Data_M_out<=AO_M_in;
			end
	 end
	 
	 /*always @(*)begin
		if(jal_slt==1)
			Forward_Data_M_out<=Forward_Data_M_in;
		else
			Forward_Data_M_out<=AO_M_in;
	 end*/
	 


endmodule

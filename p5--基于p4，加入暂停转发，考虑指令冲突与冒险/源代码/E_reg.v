`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:29 12/03/2018 
// Design Name: 
// Module Name:    E_reg 
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
module E_Reg(
	 input clk,
	 input reset,
	 input stall,
	 input [4:0]Forward_Addr_E_in,
	 input [31:0]Forward_Data_E_in,
    input [31:0] IR_E_in,
    input [31:0] PC4_E_in,
    input [31:0] RS_E_in,
    input [31:0] RT_E_in,
    input [31:0] EXT_E_in,
    output reg[31:0] IR_E_out=0,
    output reg[31:0] PC4_E_out=0,
    output reg[31:0] RS_E_out=0,
    output reg[31:0] RT_E_out=0,
	output reg[4:0]Forward_Addr_E_out=0,
	output reg[31:0]Forward_Data_E_out=0,
    output reg[31:0] EXT_E_out=0
    );
	 
	 always @(posedge clk)begin
		if(reset==1||stall==1)begin
			IR_E_out<=0;
			PC4_E_out<=0;
			RS_E_out<=0;
			RT_E_out<=0;
			EXT_E_out<=0;
			Forward_Addr_E_out<=0;
			Forward_Data_E_out<=0;
		end
		else begin
			IR_E_out<=IR_E_in;
			PC4_E_out<=PC4_E_in;
			RS_E_out<=RS_E_in;
			RT_E_out<=RT_E_in;
			EXT_E_out<=EXT_E_in;
			Forward_Addr_E_out<=Forward_Addr_E_in;
			Forward_Data_E_out<=Forward_Data_E_in;

		end
	 end


endmodule

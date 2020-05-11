`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:52 12/03/2018 
// Design Name: 
// Module Name:    W_reg 
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
module W_Reg(
	input clk,
    input reset,
	input MemtoReg,
	input [4:0]Forward_Addr_W_in,
	input [31:0]Forward_Data_W_in,
    input [31:0] IR_W_in,
    input [31:0] PC4_W_in,
    input [31:0] AO_W_in,
    input [31:0] DR_W_in,
    output reg[31:0] IR_W_out=0,
    output reg[31:0] PC4_W_out=32'h00003004,
    output reg[31:0] AO_W_out=0,
	output reg[4:0]Forward_Addr_W_out=0,
	output reg[31:0]Forward_Data_W_out=0,
    output reg[31:0] DR_W_out=0
    );
	 
	 always @(posedge clk)begin
		if(reset==1)begin
			IR_W_out<=0;
			PC4_W_out<=0;
			AO_W_out<=0;
			DR_W_out<=0;
			Forward_Data_W_out<=0;
			Forward_Addr_W_out<=0;
		end
		else begin
			IR_W_out<=IR_W_in;
			PC4_W_out<=PC4_W_in;
			AO_W_out<=AO_W_in;
			DR_W_out<=DR_W_in;
			//Forward_Data_W_out<=Forward_Data_W_in;
			Forward_Addr_W_out<=Forward_Addr_W_in;
			if(MemtoReg==1)
				Forward_Data_W_out<=DR_W_in;
			else
				Forward_Data_W_out<=Forward_Data_W_in;
		end
	 end
	 
	 /*always @(*)begin
		
	 end
	 */
	 
	 


endmodule

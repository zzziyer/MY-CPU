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
	input RegWrite,
	input RegDst,
	input jal_slt,
	 input clk,
	 input reset,
	 input stall,
    input [31:0] IR_D_in,
    input [31:0] PC4_D_in,
	 output reg[31:0] IR_D_out=0,
    output reg[31:0] PC4_D_out=0,
	output reg[4:0]Forward_Addr_D_out=0,
	output reg[31:0]Forward_Data_D_out=0
    );
	
	 
	 always @(posedge clk) begin
		if(reset==1)begin
			IR_D_out<=0;
			PC4_D_out<=0;
			Forward_Addr_D_out<=0;
			Forward_Data_D_out<=0;
		end
		else begin
			if(stall==0)begin
				IR_D_out<=IR_D_in;
				PC4_D_out<=PC4_D_in;
				Forward_Data_D_out<=PC4_D_in+4;
				if(RegWrite==1)begin
					if(jal_slt==1)begin
						Forward_Addr_D_out<=5'h1f;
					end
					else begin
						if(RegDst==1)begin
							Forward_Addr_D_out<=IR_D_in[15:11];
						end
						else begin
							Forward_Addr_D_out<=IR_D_in[20:16];
						end
					end
				end
				else begin
					Forward_Addr_D_out<=0;
				end
			end
		end
	 end

endmodule

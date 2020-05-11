`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:07:11 11/23/2018 
// Design Name: 
// Module Name:    PC 
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
module PC(
     input clk,
     input reset,
	 input stall,
	 input change,//表示是否进行指令跳转
	 input [31:0] npc,
     output reg[31:0] pc=32'h00003000,
	 output reg[31:0] pc_4add=0
    );
	 

	 always @(posedge clk) begin
		if(reset==1)begin
			pc=32'h00003000;
		end
		else begin
			if(stall==0)begin
				if(change==1)begin
					pc=npc;
				end
				else begin
					pc=pc+4;
				end
			end
		end
	 end
	 
	 always @(*)begin
		pc_4add=pc+4;
	 end


endmodule

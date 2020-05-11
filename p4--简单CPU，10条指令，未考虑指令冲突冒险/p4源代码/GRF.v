`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:29:02 11/24/2018 
// Design Name: 
// Module Name:    GRF 
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
module GRF(
    input [31:0] pc,
	input [31:0] ins_r,
    //input [4:0] rs,
    //input [4:0] rt,
    input [31:0] ins_w,
    input [31:0] alu_result,
    input [31:0] DM_out,
    input [31:0] pc_4add,
    input RegDst,
    input jal_slt,
    input MemtoReg,
    input clk,
    input reset,
    input RegWrite,
    output reg[31:0] rs_out,
    output reg[31:0] rt_out
    );
	 
	 wire [5:0] rs_r=ins_r[25:21];
	 wire [5:0] rt_r=ins_r[20:16];
	 
	 wire [5:0] rt_w=ins_w[20:16];
	 wire [5:0] rd_w=ins_w[15:11];
	 
	 reg [31:0] register[31:0];
	 reg [4:0] RegAddr;
	 reg [31:0] RegData;
	 integer i=0;
	 
	 initial begin
		for(i=0;i<=31;i=i+1)begin
			register[i]=0;
		end
		RegAddr=0;
		RegData=0;
	 end

	 
	 always @(*)begin
		if(RegAddr==rs_r)begin
			rs_out<=RegData;
			rt_out<=register[rt_r];
		end
		else if(RegAddr==rt_r)begin
			rs_out<=register[rs_r];
			rt_out<=RegData;
		end
		else begin
			rs_out<=register[rs_r];
			rt_out<=register[rt_r];
		end
	 end
	 
	 always @(posedge clk)begin
		if(reset==1)begin
			for(i=0;i<=31;i=i+1)begin
			register[i]=0;
			end
		end
		else begin
			if(RegWrite==1)begin
				if(RegAddr!=0)begin
					register[RegAddr]=RegData;
				end
				$display("@%h: $%d <= %h", pc-4, RegAddr,RegData);
			end
		end
	 end
	 
	 always @(*)begin
				if(jal_slt==1)begin
					RegAddr<=5'h1f;
				end
				else begin
					if(RegDst==1)begin
						RegAddr<=rd_w;
					end
					else
					RegAddr<=rt_w;
				end
				
				if(jal_slt==1)begin
					RegData<=pc_4add+4;
				end
				else begin
					if(MemtoReg==1)begin
						RegData<=DM_out;
					end
					else
					RegData<=alu_result;
				end
	 end
	 


endmodule
















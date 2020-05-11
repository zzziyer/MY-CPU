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
	input [31:0] ins_r,
    input [31:0] ins_w,
    input [31:0] pc_4add,
    input clk,
    input reset,
    input RegWrite,
	input [31:0]RegData,
	input [4:0]RegAddr,
    output [31:0] rs_out,
    output [31:0] rt_out
    );
	 
	 wire [5:0] rs_r=ins_r[25:21];
	 wire [5:0] rt_r=ins_r[20:16];
	 
	 wire [5:0] rt_w=ins_w[20:16];
	 wire [5:0] rd_w=ins_w[15:11];
	 
	 reg [31:0] register[31:0];

	 integer i=0;
	 
	 initial begin
		for(i=0;i<=31;i=i+1)begin
			register[i]=0;
		end
	 end
	 
	 assign rs_out=(RegAddr==rs_r && RegAddr!=0)?RegData:register[rs_r];
	 assign rt_out=(RegAddr==rt_r && RegAddr!=0)?RegData:register[rt_r];
	 
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
					$display("~%h: $%d <= %h",pc_4add-4, RegAddr,RegData);
					$display("%d@%h: $%d <= %h",$time, pc_4add-4, RegAddr,RegData);
				end		
			end
		end
	 end


endmodule
















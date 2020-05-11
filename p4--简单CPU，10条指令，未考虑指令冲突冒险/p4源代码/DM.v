`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:42:02 11/24/2018 
// Design Name: 
// Module Name:    DM 
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
module DM(
	 input [31:0] pc,
    input [31:0] dm_addr,
    input [31:0] MemData,
    input MemWrite,
    input clk,
    input reset,
    output [31:0] DM_out
    );
	 
	 reg [31:0]data_mem[1023:0];
	 integer i;
	 
	 initial begin
		for(i=0;i<=1023;i=i+1)begin
				data_mem[i]=0;
			end
	 end
	 
	 assign DM_out=data_mem[dm_addr[11:2]];
	 
	 always @(posedge clk) begin
		if(reset==1)begin
			for(i=0;i<=1023;i=i+1)begin
				data_mem[i]=0;
			end
		end
		else begin
			if(MemWrite==1)begin
				data_mem[dm_addr[11:2]]=MemData;
				$display("@%h: *%h <= %h",pc-4,dm_addr, MemData); 
			end
		end
	 end


endmodule








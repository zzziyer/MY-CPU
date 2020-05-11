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
	input [1:0]op,
	input [3:0]BE,
	input [31:0] pc,
    input [31:0] dm_addr,
    input [31:0] MemData,
    input MemWrite,
    input clk,
    input reset,
    output [31:0] DM_out,
	output [31:0]write_final
    );
	 
	 wire [7:0]byte3;
	 wire [7:0]byte2;
	 wire [7:0]byte1;
	 wire [7:0]byte0;
	 //wire [31:0]write_final;
	 wire [31:0]dm_addr_final=dm_addr-(dm_addr%4);
	 reg [31:0]data_mem[4095:0];
	 integer i;
	 
	 initial begin
		for(i=0;i<=4095;i=i+1)begin
				data_mem[i]=0;
			end
	 end
	 
	 assign DM_out=data_mem[dm_addr[13:2]];
	 
	 assign byte3=(BE[3]==1&&op==1)?MemData[31:24]:
				  (BE[3]==1&&op==2)?MemData[15:8]:
				  (BE[3]==1&&op==3)?MemData[7:0]:
				  DM_out[31:24];
	 assign byte2=(BE[2]==1&&op==1)?MemData[23:16]:
				  (BE[2]==1&&op==2)?MemData[7:0]:
				  (BE[2]==1&&op==3)?MemData[7:0]:
				  DM_out[23:16];
	 assign byte1=(BE[1]==1&&op==1)?MemData[15:8]:
				  (BE[1]==1&&op==2)?MemData[15:8]:
				  (BE[1]==1&&op==3)?MemData[7:0]:
				  DM_out[15:8];
	 assign byte0=(BE[0]==1&&op==1)?MemData[7:0]:
				  (BE[0]==1&&op==2)?MemData[7:0]:
				  (BE[0]==1&&op==3)?MemData[7:0]:
				  DM_out[7:0];
	 assign write_final={byte3,byte2,byte1,byte0};
	 
	 always @(posedge clk) begin
		if(reset==1)begin
			for(i=0;i<=4095;i=i+1)begin
				data_mem[i]=0;
			end
		end
		else begin
			if(MemWrite==1)begin
				data_mem[dm_addr[13:2]]=write_final;
				$display("%d@%h: *%h <= %h",$time,pc-4,dm_addr_final, write_final); 
				$display("~%h: *%h <= %h",pc-4,dm_addr_final, write_final); 
			end
		end
	 end


endmodule








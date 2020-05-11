`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    20:24:41 12/25/2018 
// Design Name: 
// Module Name:    CP0 
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
module CP0(
	input eret,
	input mtc0,
	input [31:0]WRITE_data,
	input [4:0]Addr,
	input clk,
	input reset,
    input [31:0] PC4,
    input BD,
    input T0_irq,
    input T1_irq,
	input [4:0] EXC_code,
    output [31:0] NPC,
	output [31:0]READ_data,
    output CP0_jump
    );
	
	assign inter6={{4'b0000},{T1_irq},{T0_irq}};
	assign interupt=((inter6 & SR[15:10])!=0) && (SR[0]==1) && (SR[1]==0);
	//IE==1&&EXL==0
	assign CP0_jump=(eret||interupt||EXC_code);
	
	reg [31:0]SR=0;
	reg [31:0]cause=0;
	reg [31:0]EPC=32'h3000;
	reg [31:0]PRId=0;
	
	assign NPC=(eret==1)?EPC:32'h00004180;
	
	assign READ_data=(Addr==12)?SR:
					 (Addr==13)?cause:
					 (Addr==14)?EPC:
					 (Addr==15)?PRId:
					 0;
	
	always @(posedge clk)begin
		if(reset==1)begin
			SR<=0;
			cause<=0;
			EPC<=32'h3000;
			PRId<=0;
		end
		else begin
			if(interupt==1)begin
				SR[1]<=1;
				EPC<=(BD==1)?PC4-8:PC4-4;
				cause[31]=BD;
				cause[15:10]=inter6;
				cause[6:2]=5'b0;
				
			end
			else if(EXC_code!=0)begin
				SR[1]<=1;
				EPC<=(BD==1)?PC4-8:PC4-4;
				cause[31]=BD;
				cause[15:10]=6'b0;
				cause[6:2]=EXC_code;
			end
			else if(eret==1)begin
				SR[1]<=0;
			end
			else if(mtc0==1)begin
				if(Addr==12)
				SR<=WRITE_data;
				else if(Addr==13)
				cause<=WRITE_data;
				else if(Addr==14)
				EPC<=WRITE_data;
				else if(Addr==15)
				PRId<=WRITE_data;
			end
			
		end
	end


endmodule

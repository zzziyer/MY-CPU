`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:05:47 11/24/2018 
// Design Name: 
// Module Name:    ALU 
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
 module ALU(
	//input jal_slt,
	//input [31:0]PC4,
    input [31:0] rs_out,
    input [31:0] rt_out,
	input [31:0] imm_ext,
    //input [4:0] sa,
	input [31:0] ins,
    input [2:0] aluop,
	 input sll_slt,
	 input ALUSrc,
    output reg[31:0] result=0,
    output reg zero=0
    );
	 
	 wire [4:0] sa=ins[10:6];
	 reg[31:0] A=0;
	 reg[31:0] B=0;
	 
	 always @(*)begin
		if(sll_slt==1)begin
			A=rt_out;
		end
		else begin
			A=rs_out;
		end
		
		if(ALUSrc==1)begin
			B=imm_ext;
		end
		else begin
			B=rt_out;
		end
		
		if(aluop==0)begin
			result=A+B;
		end
		else if(aluop==1)begin
			result=A-B;
		end 
		else if(aluop==2)begin
			result=A&B;
		end 
		else if(aluop==3)begin
			result=A|B;
		end 
		else if(aluop==4)begin
			result=~A;
		end 
		else if(aluop==5)begin
			result=A<<sa;
		end 
		else begin
			;
		end
		
		if(result==0)begin
			zero<=1;
		end
		else begin
			zero<=0;
		end
		
	 end
	 


endmodule

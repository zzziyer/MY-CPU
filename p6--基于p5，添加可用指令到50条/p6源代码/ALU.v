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
    input [31:0] rs_out,
    input [31:0] rt_out,
	input [31:0] imm_ext,
	input [31:0] ins,
    input [4:0] aluop,
	input sll_slt,
	input ALUSrc,
    output reg[31:0] result=0,
    output reg zero=0,
	output reg overflow=0
    );
	 
	 wire [4:0] sa=ins[10:6];
	 reg[31:0] A=0;
	 reg[31:0] B=0;
	 reg [32:0]temp;
	 
	 always @(*)begin
		overflow=0;
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
		else if(aluop==6)begin
			result=A>>sa;
		end
		else if(aluop==7)begin
			result=$signed(A)>>>sa;
		end
		else if(aluop==8)begin
			result=B<<A[4:0];
		end
		else if(aluop==9)begin
			result=B>>A[4:0];
		end
		else if(aluop==10)begin
			result=$signed(B)>>>A[4:0];
		end
		else if(aluop==11)begin
			result=A&B;
		end
		else if(aluop==12)begin
			result=B|A;
		end
		else if(aluop==13)begin
			result=~(B|A);
		end
		else if(aluop==14)begin
			result=B^A;
		end
		else if(aluop==15)begin
			result=($signed(A)<$signed(B))?1:0;
		end
		else if(aluop==16)begin
			result=(A<B)?1:0;
		end

	 end
	 


endmodule


			/*temp=({A[31],A})+({B[31]||B});
			if(temp[32]==temp[31])begin
				result=temp[31:0];
			end
			else begin
				overflow=1;
			end*/
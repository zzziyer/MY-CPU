`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    16:55:58 11/24/2018 
// Design Name: 
// Module Name:    CONTROL 
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
module CONTROL(
    //input [5:0] op,
    //input [5:0] func,
	input [31:0] ins,
    output jump,
    output RegDst,
    output ALUSrc,
    output MemtoReg,
    output RegWrite,
    output MemWrite,
    output branch,
    output [1:0] extop,
    output [2:0] aluop,
    output sll_slt,
    output jr_slt,
    output jal_slt
    );
	 
	 wire [5:0] op=ins[31:26];
	 wire [5:0] func=ins[5:0];
	 
	 assign jump=(op==6'b000010||op==6'b000011)?1:0;
	 //j||jal
	 assign RegDst=((op==6'b000000&&func==6'b100001)||
	 (op==6'b000000&&func==6'b100011)||(op==6'b000000&&func==6'b000000))?1:0;
	 //addu||subu||sll
	 assign ALUSrc=(op==6'b001101||op==6'b001111||
	 op==6'b100011||op==6'b101011)?1:0;
	 //ori||lui||lw||sw
	 assign MemtoReg=(op==6'b100011)?1:0;
	 //lw
	 assign RegWrite=(op==6'b000011||(op==6'b000000&&func==6'b100001)||
	 (op==6'b000000&&func==6'b100011)||op==6'b001101||op==6'b100011||
	 (op==6'b000000&&func==6'b000000)||op==6'b001111)?1:0;
	 //jal||addu||subu||ori||lw||sll||lui
	 assign MemWrite=(op==6'b101011)?1:0;
	 //sw
	 assign branch=(op==6'b000100)?1:0;
	 //beq
	 assign extop[1]=(op==6'b001111)?1:0;
	 //lui
	 assign extop[0]=(op==6'b100011||op==6'b101011)?1:0;
	 //lw||sw
	 assign aluop[2]=((op==6'b000000&&func==6'b000000))?1:0;
	 //sll
	 assign aluop[1]=(op==6'b001101)?1:0;
	 //ori
	 assign aluop[0]=((op==6'b000000&&func==6'b100011)||op==6'b001101||
	 (op==6'b000000&&func==6'b000000)||op==6'b000100)?1:0;
	 //subu||ori||sll||beq
	 assign sll_slt=((op==6'b000000&&func==6'b000000))?1:0;
	 //sll
	 assign jr_slt=((op==6'b000000&&func==6'b001000))?1:0;
	 //jr
	 assign jal_slt=(op==6'b000011)?1:0;
	 //jal

endmodule









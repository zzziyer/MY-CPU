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
	input [31:0] ins,
    output jump,
    output RegDst,
    output ALUSrc,
    output MemtoReg,
    output RegWrite,
    output MemWrite,
    output [2:0]branchop,
    output [1:0] extop,
    output [4:0] aluop,
    output sll_slt,//选择第一个运算数，0是rs，1是rt
    output jr_slt,
    output jal_slt,
	output [1:0]be_extop,
	output [2:0]mem_extop,
	output [3:0]mult_divop,
	output is_load,
	output is_save,
	output is_cal_r,
	output is_cal_i,
	output is_mu_di,
	output is_branch_rs,
	output is_branch_rsrt,
	output is_jalr,
	output is_mt,
	output is_mf,
	output is_jr,
	output jalr_slt,
	output is_code,
	output BD1,
	output mtc0,
	output mfc0,
	output eret,
	output over
    );
	 
	 wire [5:0] op=ins[31:26];
	 wire [5:0] func=ins[5:0];
	 
	 assign j =(op==6'b000010);
	 assign jal=(op==6'b000011);
	 assign addu=(op==6'b000000&&func==6'b100001);
	 assign subu=(op==6'b000000&&func==6'b100011);
	 assign sll=(op==6'b000000&&func==6'b000000);
	 assign ori=(op==6'b001101);
	 assign lui=(op==6'b001111);
	 assign lw=(op==6'b100011);
	 assign sw=(op==6'b101011);
	 assign beq=(op==6'b000100);
	 assign jr=(op==6'b000000&&func==6'b001000);
	 assign lb=(op==6'b100000);
	 assign lbu=(op==6'b100100);
	 assign lh=(op==6'b100001);
     assign lhu=(op==6'b100101);
	 assign sb=(op==6'b101000);
	 assign sh=(op==6'b101001);
	 assign add=(op==6'b000000&&func==6'b100000);
	 assign sub=(op==6'b000000&&func==6'b100010);
	 assign mult=(op==6'b000000&&func==6'b011000);
	 assign multu=(op==6'b000000&&func==6'b011001);
	 assign div=(op==6'b000000&&func==6'b011010);
	 assign divu=(op==6'b000000&&func==6'b011011);
	 assign srl=(op==6'b000000&&func==6'b000010);
	 assign sra=(op==6'b000000&&func==6'b000011);
	 assign sllv=(op==6'b000000&&func==6'b000100);
	 assign srlv=(op==6'b000000&&func==6'b000110);
	 assign srav=(op==6'b000000&&func==6'b000111);
	 assign aand=(op==6'b000000&&func==6'b100100);
	 assign oor=(op==6'b000000&&func==6'b100101);
	 assign nnor=(op==6'b000000&&func==6'b100111);
	 assign xxor=(op==6'b000000&&func==6'b100110);
	 assign addi=(op==6'b001000);
	 assign addiu=(op==6'b001001);
	 assign andi=(op==6'b001100);
	 assign xori=(op==6'b001110);
	 assign slt=(op==6'b000000&&func==6'b101010);
	 assign sltu=(op==6'b000000&&func==6'b101011);
	 assign slti=(op==6'b001010);
	 assign sltiu=(op==6'b001011);
	 assign bgez=(op==6'b000001&&ins[20:16]==5'b00001);
	 assign bltz=(op==6'b000001&&ins[20:16]==5'b00000);
	 assign bgtz=(op==6'b000111);
	 assign blez=(op==6'b000110);
	 assign bne=(op==6'b000101);
	 assign jalr=(op==6'b000000&&func==6'b001001);
	 assign mfhi=(op==6'b000000&&func==6'b010000);
	 assign mflo=(op==6'b000000&&func==6'b010010);
	 assign mthi=(op==6'b000000&&func==6'b010001);
	 assign mtlo=(op==6'b000000&&func==6'b010011);
	 assign mtc0=(op==6'b010000&&ins[25:21]==5'b00100);
	 assign mfc0=(op==6'b010000&&ins[25:21]==5'b00000);
	 assign eret=(op==6'b010000&&func==6'b011000);
	 
	 assign over=(add||sub||addi)?1:0;
	 
	 assign jump=(j||jal)?1:0;
	 
	 assign RegDst=(addu||subu||sll||add||sub||srl||sra
	 ||sllv||srlv||srav||aand||oor||nnor||xxor||slt||sltu||
	 jalr||mfhi||mflo)?1:0;
	 
	 assign ALUSrc=(ori||lui||lw||sw||lb||lbu||lh||lhu||
	 addi||addiu||andi||xori||slti||sltiu||sb||sh)?1:0;
	 
	 assign MemtoReg=(lw||lb||lbu||lh||lhu)?1:0;
	 
	 assign RegWrite=(jal||addu||subu||ori||
	 lw||sll||lui||lb||lbu||lh||lhu||add||sub||srl||sra
	 ||sllv||srlv||srav||aand||oor||nnor||xxor||
	 addi||addiu||andi||xori||slt||sltu||slti||sltiu||jalr
	 ||mfhi||mflo||mfc0)?1:0;
	 
	 assign MemWrite=(sw||sb||sh)?1:0;
	 
	 assign branchop[2]=(bgtz||bltz||bgez)?1:0;
	 assign branchop[1]=(bne||blez||bgez)?1:0;
	 assign branchop[0]=(beq||blez||bltz)?1:0;
	 
	 assign extop[1]=(lui)?1:0;
	 
	 assign extop[0]=(lw||sw||lb||lbu||lh||lhu||addi||addiu||
	 slti||sltiu||sh||sb)?1:0;
	 
	 assign aluop[4]=(sltu||sltiu)?1:0;
	 
	 assign aluop[3]=(sllv||srlv||srav||aand||oor||nnor||xxor||
	 andi||xori||slt||slti)?1:0;
	 
	 assign aluop[2]=(sll||srl||sra||oor||nnor||xxor||xori
	 ||slt||slti)?1:0;
	 
	 assign aluop[1]=(ori||srl||sra||srav||aand||xxor||andi
	 ||xori||slt||slti)?1:0;
	 
	 assign aluop[0]=(subu||ori||sll||beq||sub||sra||srlv
	 ||aand||nnor||andi||slt||slti)?1:0;
	 
	 assign sll_slt=(sll||srl||sra)?1:0;
	 
	 assign jr_slt=(jr||jalr)?1:0;
	 
	 
	 assign jal_slt=(jal)?1:0;
	 assign jalr_slt=(jalr)?1:0;
	 
	 assign mem_extop[2]=(lhu||lh)?1:0;
	 
	 assign mem_extop[1]=(lbu||lb)?1:0;
	 
	 assign mem_extop[0]=(lw||lb||lh)?1:0;
	 
	 assign be_extop[1]=(sh||sb)?1:0;
	 
	 assign be_extop[0]=(sw||sb)?1:0;
	 
	 assign mult_divop[3]=(mtlo)?1:0;
	 
	 assign mult_divop[2]=(divu||mfhi||mflo||mthi)?1:0;
	 
	 assign mult_divop[1]=(div||multu||mflo||mthi)?1:0;
	 
	 assign mult_divop[0]=(mult||multu||mfhi||mthi)?1:0;
	 
	 //////////////////////////////////////////////////////
	 
	 assign is_load=(lb||lbu||lh||lhu||lw);
	 assign is_save=(sb||sh||sw);
	 assign is_cal_r=(add||addu||sub||subu||srl||sra||
	 sllv||srlv||sll||srav||aand||oor||nnor||xxor||slt||sltu
	 ||mtc0||mfc0);
	 assign is_cal_i=(addi||addiu||andi||xori||ori||slti||
	 sltiu||lui);
	 assign is_mu_di=(mult||multu||div||divu);
	 assign is_branch_rs=(blez||bgtz||bltz||bgez);
	 assign is_branch_rsrt=(beq||bne);
	 assign is_jalr=jalr;
	 assign is_mt=(mthi||mtlo);
	 assign is_mf=(mfhi||mflo);
	 assign is_jr=jr;	 
	 
	 assign is_code=(is_load||is_save||is_cal_r||is_cal_i||
	 is_mu_di||is_branch_rs||is_branch_rsrt||is_jalr||
	 is_mt||is_mf||is_jr||j||jal||mtc0||mfc0||eret);
	 
	 assign BD1=(is_branch_rs||is_branch_rsrt||is_jalr
	 ||is_jr||j||jal);
endmodule









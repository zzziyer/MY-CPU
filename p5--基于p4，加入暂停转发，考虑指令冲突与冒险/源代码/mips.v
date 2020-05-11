`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:22 11/23/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	 
	 wire [31:0] ins;
	 
	 wire jump;
	 wire RegDst;
	 wire ALUSrc;
	 wire MemtoReg;
	 wire RegWrite_WB;
	 wire MemWrite;
	 wire branch;
	 wire [1:0] extop;
	 wire [2:0] aluop;
	 wire sll_slt;
	 wire jr_slt;
	 wire jal_slt;
	 
	 wire [31:0] alu_res;
	 wire Ztag;
	 
	 wire [31:0]pc;
	 wire [31:0]pc_4add;
	 
	 wire [31:0]imm_ext;
	 
	 wire [31:0] grfo_rs;
	 wire [31:0] grfo_rt;
	 wire [31:0] DM_out;
	 
	 wire change;
	 wire [31:0] npc;
	 
	 wire [31:0]IR_D_out;
	 wire [31:0]PC4_D_out;
	 
	 wire cmp_res;
	 
	 wire [31:0]IR_E_out;
	 wire [31:0]PC4_E_out;
	 wire [31:0]RS_E_out;
	 wire [31:0]RT_E_out;
	 wire [31:0]EXT_E_out;
	 
	 wire [31:0]IR_M_out;
	 wire [31:0]PC4_M_out;
	 wire [31:0]AO_M_out;
	 wire [31:0]RT_M_out;
	 
	 wire [31:0]IR_W_out;
	 wire [31:0]PC4_W_out;
	 wire [31:0]AO_W_out;
	 wire [31:0]DR_W_out;
	 
	 wire stall;
	 
	 wire RegDst_D;
	 wire RegWrite_D;
	 wire jal_slt_D;
	 wire jal_slt_M;
	 wire MemtoReg_W;
	 
	 wire [4:0]Forward_Addr_D_out;
	 wire [31:0]Forward_Data_D_out;
	 
	 wire [4:0]Forward_Addr_E_out;
	 wire [31:0]Forward_Data_E_out;
	 
	 wire [4:0]Forward_Addr_M_out;
	 wire [31:0]Forward_Data_M_out;
	 
	 wire [4:0]Forward_Addr_W_out;
	 wire [31:0]Forward_Data_W_out;
	 
	 
	 wire [1:0]sel_D_RS;
	 wire [1:0]sel_D_RT;
	 wire [1:0]sel_E_ALU1;
	 wire [1:0]sel_E_ALU2;
	 wire sel_M_WD;
	 
	 wire [31:0]rs_final;
	 wire [31:0]rt_final;
	 
	 wire [31:0]alu1_final;
	 wire [31:0]alu2_final;
	 wire [31:0]WD_final;
	 //总控
	 /*
	 CONTROL control(
		 .ins(),
		 .jump(jump),
		 .RegDst(RegDst),
		 .ALUSrc(ALUSrc),
		 .MemtoReg(MemtoReg),
		 .RegWrite(RegWrite),
		 .MemWrite(MemWrite),
		 .branch(branch),
		 .extop(extop),
		 .aluop(aluop),
		 .sll_slt(sll_slt),
		 .jr_slt(jr_slt),
		 .jal_slt(jal_slt)
    );    
	*/
	 //总控
	 STALL_CTR STALL_ctr(
		.IR_D(IR_D_out),
		.IR_E(IR_E_out),
		.IR_M(IR_M_out),
		.stall(stall)
	 );
	 
	 FORWARD_CTRL forward_ctrl(
		.addr_E(Forward_Addr_E_out),
		.addr_M(Forward_Addr_M_out),
		.addr_W(Forward_Addr_W_out),
		.IR_D(IR_D_out),
		.IR_E(IR_E_out),
		.IR_M(IR_M_out),
		.sel_D_RS(sel_D_RS),
		.sel_D_RT(sel_D_RT),
		.sel_E_ALU1(sel_E_ALU1),
		.sel_E_ALU2(sel_E_ALU2),
		.sel_M_WD(sel_M_WD)
	 );
	 
	 //F级
	 PC Pc(
		.clk(clk),
		.reset(reset),
		.stall(stall),
		.change(change),
		.npc(npc),
		.pc(pc),
		.pc_4add(pc_4add)
	 );
	 
	 IM im(
		.pc(pc),
		.instruction(ins)
	 );
	 
	 
	 CONTROL F_control(
		 .ins(ins),
		 //.jump(jump),
		 .RegDst(RegDst_D),
		 //.ALUSrc(ALUSrc),
		 //.MemtoReg(MemtoReg),
		 .RegWrite(RegWrite_D),
		// .MemWrite(MemWrite),
		// .branch(branch),
		// .extop(extop),
		// .aluop(aluop),
		 //.sll_slt(sll_slt),
		 //.jr_slt(jr_slt),
		 .jal_slt(jal_slt_D)
    );    
	 //F级
	 
	 
	 //D reg
	 D_Reg D_reg(
		.RegWrite(RegWrite_D),
		.RegDst(RegDst_D),
		.jal_slt(jal_slt_D),
		
		.clk(clk),
		.reset(reset),
		.stall(stall),
		.IR_D_in(ins),
		.PC4_D_in(pc_4add),
		.IR_D_out(IR_D_out),
		.PC4_D_out(PC4_D_out),
		.Forward_Addr_D_out(Forward_Addr_D_out),
		.Forward_Data_D_out(Forward_Data_D_out)
	 );
	 
	 
	 //D reg
	
	 
	 //D级
	 CONTROL D_control(
		 .ins(IR_D_out),
		 .jump(jump),
		 //.RegDst(RegDst_D),
		 //.ALUSrc(ALUSrc),
		 //.MemtoReg(MemtoReg),
		 //.RegWrite(RegWrite_D),
		 //.MemWrite(MemWrite),
		 .branch(branch),
		 .extop(extop),
		 //.aluop(aluop),
		 //.sll_slt(sll_slt),
		 .jr_slt(jr_slt)
		// .jal_slt(jal_slt_D)
	 );
	 
	 
	 GRF grf(
		.RegAddr(Forward_Addr_W_out),
		.RegData(Forward_Data_W_out),
		.ins_r(IR_D_out),
		.ins_w(IR_W_out),
		.pc_4add(PC4_W_out),
		
		.clk(clk),
		.reset(reset),
		.RegWrite(RegWrite_WB),
		
		.rs_out(grfo_rs),
		.rt_out(grfo_rt)
	 );
	 
	 MUX_D_RS mux_d_rs(
		.RD1(grfo_rs),
		.E_Forward(Forward_Data_E_out),
		.M_Forward(Forward_Data_M_out),
		.selet(sel_D_RS),
		.rs_final(rs_final)
	 );
	 
	 MUX_D_RT mux_d_rt(
		.RD2(grfo_rt),
		.E_Forward(Forward_Data_E_out),
		.M_Forward(Forward_Data_M_out),
		.selet(sel_D_RT),
		.rt_final(rt_final)
	 );
	 
	 
	 EXT ext(
		.ins(IR_D_out),
		.EXTslt(extop),
		.imm_ext(imm_ext)
	 );
	 
	 CMP cmp(
		.RF_RD1(rs_final),
		.RF_RD2(rt_final),
		.cmp_out(cmp_res)
	 );
	 
	 NPC Npc(
		.ins(IR_D_out),
		.PC4_D(PC4_D_out),
		.cmp_res(cmp_res),
		.branch(branch),
		.jump(jump),
		.jr_sel(jr_slt),
		.jr_alures(rs_final),
		.pc_new(npc),
		.change(change)
	 );
	 //D级
	 
	 //E Reg
	 E_Reg E_reg(
		.Forward_Addr_E_in(Forward_Addr_D_out),
		.Forward_Data_E_in(Forward_Data_D_out),
	 
		.clk(clk),
		.reset(reset),
		.stall(stall),
		.IR_E_in(IR_D_out),
		.PC4_E_in(PC4_D_out),
		.RS_E_in(rs_final),
		.RT_E_in(rt_final),
		.EXT_E_in(imm_ext),
		
		.IR_E_out(IR_E_out),
		.PC4_E_out(PC4_E_out),
		.RS_E_out(RS_E_out),
		.RT_E_out(RT_E_out),
		.EXT_E_out(EXT_E_out),
		.Forward_Addr_E_out(Forward_Addr_E_out),
		.Forward_Data_E_out(Forward_Data_E_out)
	 ); 
	 
	 
	 
	 
	 //E Reg
	 
	 //E级
	 CONTROL E_control(
		 .ins(IR_E_out),
		 //.jump(jump),
		 //.RegDst(RegDst),
		 .ALUSrc(ALUSrc),
		 //.MemtoReg(MemtoReg),
		 //.RegWrite(RegWrite),
		 //.MemWrite(MemWrite),
		 //.branch(branch),
		 //.extop(extop),
		 .aluop(aluop),
		 .sll_slt(sll_slt),
		 //.jr_slt(jr_slt),
		 .jal_slt(jal_slt_M)
	 );
	 
	 MUX_E_ALU1 mux_alu1(
		.E_reg_rs(RS_E_out),
		.M_Forward(Forward_Data_M_out),
		.W_Forward(Forward_Data_W_out),
		.selet(sel_E_ALU1),
		.alu1_final(alu1_final)
	 );
	 
	 MUX_E_ALU2 mux_alu2(
		.E_reg_rt(RT_E_out),
		.M_Forward(Forward_Data_M_out),
		.W_Forward(Forward_Data_W_out),
		.selet(sel_E_ALU2),
		.alu2_final(alu2_final)
	 );
	 
	 
	 ALU alu(
		.rs_out(alu1_final),
		.rt_out(alu2_final),
		.imm_ext(EXT_E_out),
		.ins(IR_E_out),
		.aluop(aluop),
		.sll_slt(sll_slt),
		.ALUSrc(ALUSrc),
		.result(alu_res)
		//.zero(Ztag)
	 );
	 //E级
	 
	 //M Reg
	 M_Reg M_reg(
		.jal_slt(jal_slt_M),
		.Forward_Addr_M_in(Forward_Addr_E_out),
		.Forward_Data_M_in(Forward_Data_E_out),
		.clk(clk),
		.reset(reset),
		.IR_M_in(IR_E_out),
		.PC4_M_in(PC4_E_out),
		.AO_M_in(alu_res),
		.RT_M_in(alu2_final),
		
		.IR_M_out(IR_M_out),
		.PC4_M_out(PC4_M_out),
		.AO_M_out(AO_M_out),
		.RT_M_out(RT_M_out),
		.Forward_Addr_M_out(Forward_Addr_M_out),
		.Forward_Data_M_out(Forward_Data_M_out)
	 );
	
	 //M Reg
	 
	 //M级
	 CONTROL M_control(
		 .ins(IR_M_out),
		 //.jump(jump),
		 //.RegDst(RegDst),
		 //.ALUSrc(ALUSrc),
		 .MemtoReg(MemtoReg_W),
		 //.RegWrite(RegWrite),
		 .MemWrite(MemWrite)
		 //.branch(branch),
		 //.extop(extop),
		 //.aluop(aluop),
		 //.sll_slt(sll_slt),
		 //.jr_slt(jr_slt),
		 //.jal_slt(jal_slt_M)
	 );
	 
	 MUX_M_WD mux_m_wd(
		.M_reg_out(RT_M_out),
		.W_Forward(Forward_Data_W_out),
		.selet(sel_M_WD),
		.WD_final(WD_final)
	 );
	 
	 
	 DM dm(
		.pc(PC4_M_out),
		.dm_addr(AO_M_out),//alu_result
		.MemData(WD_final),//rt_out
		.MemWrite(MemWrite),
		.clk(clk),
		.reset(reset),
		.DM_out(DM_out)
	 );
	 //M级
	 
	 //W Reg
	 W_Reg W_reg(
		.MemtoReg(MemtoReg_W),
		.Forward_Addr_W_in(Forward_Addr_M_out),
		.Forward_Data_W_in(Forward_Data_M_out),
		.clk(clk),
		.reset(reset),
		.IR_W_in(IR_M_out),
		.PC4_W_in(PC4_M_out),
		.AO_W_in(AO_M_out),
		.DR_W_in(DM_out),
		
		.IR_W_out(IR_W_out),
		.PC4_W_out(PC4_W_out),
		.AO_W_out(AO_W_out),
		.DR_W_out(DR_W_out),
		.Forward_Addr_W_out(Forward_Addr_W_out),
		.Forward_Data_W_out(Forward_Data_W_out)
	 );
	 
	 

	 //W Reg
	 
	 CONTROL W_control(
		 .ins(IR_W_out),
		 //.jump(jump),
		 //.RegDst(RegDst),
		 //.ALUSrc(ALUSrc),
		 //.MemtoReg(MemtoReg),
		 .RegWrite(RegWrite_WB)
		 //.MemWrite(MemWrite),
		 //.branch(branch),
		 //.extop(extop),
		 //.aluop(aluop),
		 //.sll_slt(sll_slt),
		 //.jr_slt(jr_slt),
		 //.jal_slt(jal_slt)
    );    


endmodule

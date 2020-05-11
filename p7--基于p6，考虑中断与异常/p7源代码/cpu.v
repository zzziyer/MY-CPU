`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:05:22 11/23/2018 
// Design Name: 
// Module Name:    cpu 
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
module cpu(
    input clk,
    input reset,
	input [31:0]Pr_RD,
	input T0_irq,
	input T1_irq,
	output [31:0]PrAddr,
	output [31:0]Pr_WD,
	output PrWe
    );
	 
	 wire [31:0] ins;
	 
	 wire jump;
	 wire RegDst;
	 wire ALUSrc;
	 wire MemtoReg;
	 wire RegWrite_WB;
	 wire MemWrite;
	 wire [2:0]branchop;
	 wire [1:0] extop;
	 wire [4:0] aluop;
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
	 wire [31:0]Forward_Data_M_out_not;
	 
	 wire [4:0]Forward_Addr_W_out;
	 wire [31:0]Forward_Data_W_out;
	 wire [31:0]Forward_Data_W_out_not;
	 
	 
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
	 
	 wire [3:0]mult_divop_D;
	 wire m_stall;
	 wire [3:0]mult_divop_E;
	 wire busy;
	 wire [31:0]HI;
	 wire [31:0]LO;
	 
	 wire [3:0]BE;
	 wire [1:0]be_extop;
	 wire [2:0]mem_extop;
	 wire [31:0]Dout;
	 
	 wire [31:0]CP0_NPC;
	 wire [31:0]CP0_READ_data;
	 wire CP0_jump;
	 wire [4:0]ECX_code_E;
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
	 
	 wire is_branch_rs_d;
	 wire is_branch_rsrt_d;
	 wire is_cal_r_d;
	 wire is_cal_i_d;
	 wire is_load_d;
	 wire is_save_d;
	 wire is_jr_d;
	 wire is_jalr_d;
	 wire is_mu_di_d;
	 wire is_mt_d;
	 
	 wire is_cal_r_e;
	 wire is_cal_i_e;
	 wire is_mf_e;
	 wire is_load_e;
	 
	 wire is_load_m;
	 wire overflow_ALU;
	 wire BD_M;
	 
	 STALL_CTR STALL_ctr(
		.IR_D(IR_D_out),
		.IR_E(IR_E_out),
		.IR_M(IR_M_out),
		.is_branch_rs_d(is_branch_rs_d),
		.is_branch_rsrt_d(is_branch_rsrt_d),
		.is_cal_r_d(is_cal_r_d),
		.is_cal_i_d(is_cal_i_d),
		.is_load_d(is_load_d),
		.is_save_d(is_save_d),
		.is_jr_d(is_jr_d),
		.is_jalr_d(is_jalr_d),
		.is_mu_di_d(is_mu_di_d),
		.is_mt_d(is_mt_d),
		.is_cal_r_e(is_cal_r_e),
		.is_cal_i_e(is_cal_i_e),
		.is_mf_e(is_mf_e),
		.is_load_e(is_load_e),
		.is_load_m(is_load_m),
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
		.CP0_jump(CP0_jump),
		.CP0_npc(CP0_NPC),
		.stall(stall),
		.m_stall(m_stall),
		.change(change),
		.npc(npc),
		.pc(pc),
		.pc_4add(pc_4add)
	 );
	 
	 IM im(
		.pc(pc),
		.instruction(ins)
	 ); 
	 //F级
	 
	 
	 //D reg
	 D_Reg D_reg(
		.clk(clk),
		.reset(reset),
		.stall(stall),
		.m_stall(m_stall),
		.IR_D_in(ins),
		.PC4_D_in(pc_4add),
		.IR_D_out(IR_D_out),
		.PC4_D_out(PC4_D_out),
		//.interupt({T0_irq,T1_irq}),
		//.EXC_E(ECX_code_E),
		.CP0_npc(CP0_NPC),
		.CP0_jump(CP0_jump)
	 );
	 
	 //D reg
	 
	 
	 //D级
	 CONTROL D_control(
		 .ins(IR_D_out),
		 .jump(jump),
		 .RegDst(RegDst_D), //选择D级Addr
		 //.ALUSrc(ALUSrc),
		 //.MemtoReg(MemtoReg),
		 .RegWrite(RegWrite_D),
		 //.MemWrite(MemWrite),
		 .branchop(branchop),
		 .extop(extop),
		 //.aluop(aluop),
		 //.sll_slt(sll_slt),
		 .jr_slt(jr_slt),  //选择D级Addr
		 .jal_slt(jal_slt_D) , //选择D级Addr
		 .mult_divop(mult_divop_D),
		 .is_load(is_load_d),
		 .is_save(is_save_d),
		 .is_cal_r(is_cal_r_d),
		 .is_cal_i(is_cal_i_d),
		 .is_mu_di(is_mu_di_d),
		 .is_branch_rs(is_branch_rs_d),
		 .is_branch_rsrt(is_branch_rsrt_d),
		 .is_jalr(is_jalr_d),
		 .is_mt(is_mt_d),
		 //.is_mf(),
		 .is_jr(is_jr_d),
		 .eret(eret_D),
		 .mtc0(mtc0_D)
	 );

	 //造回写数据与回写地址
	 assign Forward_Data_D_out=PC4_D_out+4;
	 assign Forward_Addr_D_out=(RegWrite_D==1)?
						((jal_slt_D==1)?5'h1f:
						(RegDst_D==1)?IR_D_out[15:11]:IR_D_out[20:16])
						:0;
	 //造回写数据与回写地址
	 
	 GRF grf(
		.RegAddr(Forward_Addr_W_out), //W级回写地址 *内部转发*
		.RegData(Forward_Data_W_out), //W级回写数据 *内部转发*
		.ins_r(IR_D_out), //read D级指令
		.ins_w(IR_W_out), //write W级指令
		.pc_4add(PC4_W_out), //W级PC，为了在写入时输出该指令的PC
		
		.clk(clk),
		.reset(reset),
		.RegWrite(RegWrite_WB),
		
		.rs_out(grfo_rs), //GRF读出rs *已经过内部转发修正*
		.rt_out(grfo_rt)  //GRF读出rt *已经过内部转发修正*
	 );
	 
	 assign rs_final=(sel_D_RS==0)?grfo_rs:
					 (sel_D_RS==1)?Forward_Data_E_out:
					 (sel_D_RS==2)?Forward_Data_M_out:
					  0;
					  
	 assign rt_final=(sel_D_RT==0)?grfo_rt:
					 (sel_D_RT==1)?Forward_Data_E_out:
					 (sel_D_RT==2)?Forward_Data_M_out:
					  0;			 
	 
	 
	 EXT ext(
		.ins(IR_D_out),
		.EXTslt(extop),
		.imm_ext(imm_ext)
	 );
	 
	 CMP cmp(
		.RF_RD1(rs_final),
		.RF_RD2(rt_final),
		.branchop(branchop),
		.cmp_out(cmp_res)
	 );
	 
	 NPC Npc(
		.ins(IR_D_out),
		.PC4_D(PC4_D_out),
		.cmp_res(cmp_res),
		.branchop(branchop),
		.jump(jump),
		.jr_sel(jr_slt),
		.jr_addr(rs_final), //jr要跳转的地址，来自rs寄存器的值
		
		.pc_new(npc),
		.change(change) 
	 );
	 //D级
	 
	 //E Reg
	 E_Reg E_reg(
		.CP0_npc(CP0_NPC),
		.Forward_Addr_E_in(Forward_Addr_D_out),
		.Forward_Data_E_in(Forward_Data_D_out),
		//.interupt({T0_irq,T1_irq}),
		//.EXC_E(ECX_code_E),
		.CP0_jump(CP0_jump),
		.clk(clk),
		.reset(reset),
		.stall(stall),
		.m_stall(m_stall),
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
	 wire over_E;
	 wire [1:0]be_extop_E;
	 wire [2:0]mem_extop_E;
	 wire eret_E;
	 wire mtc0_E;
	 wire is_code_E;
	 
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
		 //.jal_slt(jal_slt_M)
		 .mult_divop(mult_divop_E),
		 .is_load(is_load_e),
		 .is_cal_r(is_cal_r_e),
		 .is_cal_i(is_cal_i_e),
		 .is_mf(is_mf_e),
		 .eret(eret_E),
		 .mtc0(mtc0_E),
		 .is_code(is_code_E),
		 .mem_extop(mem_extop_E),
		 .be_extop(be_extop_E),
		 .over(over_E)
	 );
	 
	 assign alu1_final=(sel_E_ALU1==0)?RS_E_out:
					   (sel_E_ALU1==1)?Forward_Data_M_out:
					   (sel_E_ALU1==2)?Forward_Data_W_out:
					   0;
	 				   
	 assign alu2_final=(sel_E_ALU2==0)?RT_E_out:
					   (sel_E_ALU2==1)?Forward_Data_M_out:
					   (sel_E_ALU2==2)?Forward_Data_W_out:
					   0;
	
	 wire out_of_range=(~(alu_res>=32'h0000&&alu_res<=32'h2ffc)&&
						~(alu_res>=32'h7f00&&alu_res<=32'h7f0b)&&
						~(alu_res>=32'h7f10&&alu_res<=32'h7f1b));
						
	 wire count_reg=(alu_res>=32'h7f08&&alu_res<=32'h7f0b)||
					(alu_res>=32'h7f18&&alu_res<=32'h7f1b);
	 
	 
	 
	 assign ECX_code_E=
	 (PC4_E_out-4<32'h00003000||PC4_E_out-4>32'h00004ffc||
	 PC4_E_out[1:0]!=0)?4:  //PC值异常
	 
	 (is_code_E==0)?10:  //非法指令码
	 
	 (
	 (mem_extop_E!=0&&overflow_ALU==1)||  //地址溢出
	 (mem_extop_E==1&&alu_res%4!=0)||     //lw不对齐
	 ((mem_extop_E==4||mem_extop_E==5)&&alu_res%2!=0)|| //lh lhu不对齐
	 (mem_extop_E!=0&&out_of_range)||     //地址不在范围
	 ((mem_extop_E>=2&&mem_extop_E<=5)&&~(alu_res>=32'h0000&&alu_res<=32'h2ffc))
	 //用lb lbu lh lhu 取计时器
	 )?4:   //取数异常
	 
	 (
	 (be_extop_E!=0&&overflow_ALU==1)||  //地址溢出
	 (be_extop_E==1&&alu_res%4!=0)||       //sw不对齐
	 (be_extop_E==2&&alu_res%2!=0)||       //sh不对齐
	 (be_extop_E!=0&&out_of_range)||     //地址不在范围
	 (be_extop_E!=0&&count_reg)||        //尝试写count寄存器
	 ((be_extop_E>=2&&be_extop_E<=3)&&~(alu_res>=32'h0000&&alu_res<=32'h2ffc))
	 //用sb sh写计时器
	 )?5://存数异常
	 
	 (over_E==1&&overflow_ALU==1)?12:   //溢出
	 
	 0;
	 
	 CP0 cp0(
		.eret(eret_E),
		.mtc0(mtc0_E),
		.WRITE_data(alu2_final),
		.Addr(IR_E_out[15:11]),
		.clk(clk),
		.reset(reset),
		.PC4({PC4_E_out[31:2],2'b00}),
		.BD(BD_M),
		.T0_irq(T0_irq),
		.T1_irq(T1_irq),
		.EXC_code(ECX_code_E),
		.NPC(CP0_NPC),
		.READ_data(CP0_READ_data),
		.CP0_jump(CP0_jump)
	 );
	 
	 
	 
	 MUL_DIV mul_div(
		.clk(clk),
		.D1(alu1_final),
		.D2(alu2_final),
		.op(mult_divop_E),
		.busy(busy),
		.HI(HI),
		.LO(LO)
	 );
	 
	 assign m_stall=((mult_divop_E!=0)||busy==1)&&(mult_divop_D!=0); 
	 
	 ALU alu(
		.rs_out(alu1_final),
		.rt_out(alu2_final),
		.imm_ext(EXT_E_out),
		.ins(IR_E_out),
		.aluop(aluop),
		.sll_slt(sll_slt),
		.ALUSrc(ALUSrc),
		.result(alu_res),
		.overflow(overflow_ALU)
		//.zero(Ztag)
	 );
	 //E级
	 
	 
	 //wire [31:0]HI_in;
	 wire [31:0]HI_out;
	 wire [31:0]LO_out;
	 //wire [31:0]LO_in;
	 //M Reg
	 wire [31:0]CP0_data_out;
	 M_Reg M_reg(
		//.jal_slt(jal_slt_M),
		.Forward_Addr_M_in(Forward_Addr_E_out),
		.Forward_Data_M_in(Forward_Data_E_out),
		//.interupt({T0_irq,T1_irq}),
		//.EXC_E(ECX_code_E),
		.CP0_jump(CP0_jump),
		.CP0_npc(CP0_NPC),
		
		.clk(clk),
		.reset(reset),
		.IR_M_in(IR_E_out),
		.PC4_M_in(PC4_E_out),
		.AO_M_in(alu_res),
		.RT_M_in(alu2_final),
		.HI_in(HI),
		.LO_in(LO),
		.CP0_data_in(CP0_READ_data),
		
		.CP0_data_out(CP0_data_out),
		.HI_out(HI_out),
		.LO_out(LO_out),
		.IR_M_out(IR_M_out),
		.PC4_M_out(PC4_M_out),
		.AO_M_out(AO_M_out),
		.RT_M_out(RT_M_out),
		.Forward_Addr_M_out(Forward_Addr_M_out),
		.Forward_Data_M_out(Forward_Data_M_out_not) //承接上级流水的回写数据，但未经修正
		
	 );
	 
	 
	 //M Reg
	 
	 //M级
	
	 wire [3:0]mult_divop_M;
	 //对于上级流水回写数据进行修正
	 wire jalr_slt_M;
	 
	 CONTROL M_control(
		 .ins(IR_M_out),
		 //.jump(jump),
		 //.RegDst(RegDst),
		 //.ALUSrc(ALUSrc),
		 //.MemtoReg(MemtoReg_W),
		 //.RegWrite(RegWrite),
		 .MemWrite(MemWrite),
		 //.branch(branch),
		 //.extop(extop),
		 //.aluop(aluop),
		 //.sll_slt(sll_slt),
		 //.jr_slt(jr_slt),
		 .jal_slt(jal_slt_M),
		 .be_extop(be_extop),
		 .mult_divop(mult_divop_M),
		 .is_load(is_load_m),
		 .jalr_slt(jalr_slt_M),
		 .BD1(BD_M),
		 .mfc0(mfc0_M)
	 );
	 
	 assign Forward_Data_M_out=(jal_slt_M||jalr_slt_M)?Forward_Data_M_out_not:
							   (mult_divop_M==5)?HI_out:
							   (mult_divop_M==6)?LO_out:
							   (mfc0_M)?CP0_data_out:
	                           AO_M_out;
							   
	 
	assign WD_final=(sel_M_WD==0)?RT_M_out:Forward_Data_W_out;
	 
	assign PrAddr=AO_M_out[31:0];
	assign Pr_WD=write_final_M;
	assign PrWe=MemWrite;
	 
	 wire [31:0]write_final_M;
	 BE_EXT be_ext(
		.AO(AO_M_out[1:0]),
		.op(be_extop),
		.BE(BE)
	 );
	 
	 assign is_DM_M=(AO_M_out>=32'h0000&&AO_M_out<=32'h2fff);
	 
	 DM dm(
		.op(be_extop),
		.BE(BE),
		.pc(PC4_M_out),
		.dm_addr(AO_M_out),//alu_result
		.MemData(WD_final),//rt_out
		.MemWrite(MemWrite && is_DM_M),
		.clk(clk),
		.reset(reset),
		.DM_out(DM_out),
		.write_final(write_final_M)
	 );
	 //M级
	 
	 //W Reg
	 W_Reg W_reg(
		//.MemtoReg(MemtoReg_W),
		.Forward_Addr_W_in(Forward_Addr_M_out),
		.Forward_Data_W_in(Forward_Data_M_out),
		.clk(clk),
		.reset(reset),
		.IR_W_in(IR_M_out),
		.PC4_W_in(PC4_M_out),
		.AO_W_in(AO_M_out),
		.DR_W_in(is_DM_M ? DM_out : Pr_RD),
		
		.IR_W_out(IR_W_out),
		.PC4_W_out(PC4_W_out),
		.AO_W_out(AO_W_out),
		.DR_W_out(DR_W_out),
		.Forward_Addr_W_out(Forward_Addr_W_out),
		.Forward_Data_W_out(Forward_Data_W_out_not) //承接上级流水的回写数据，但未经修正
	 );
	 
	 //W Reg
	 
	 CONTROL W_control(
		 .ins(IR_W_out),
		 //.jump(jump),
		 //.RegDst(RegDst),
		 //.ALUSrc(ALUSrc),
		 .MemtoReg(MemtoReg_W),
		 .RegWrite(RegWrite_WB),
		 //.MemWrite(MemWrite),
		 //.branch(branch),
		 //.extop(extop),
		 //.aluop(aluop),
		 //.sll_slt(sll_slt),
		 //.jr_slt(jr_slt),
		 //.jal_slt(jal_slt)
		 .mem_extop(mem_extop)
    );  
	
	MEM_EXT mem_ext(
		.AO(AO_W_out[1:0]),
		.Din(DR_W_out),
		.op(mem_extop),
		.Dout(Dout)
	 );
	
	assign Forward_Data_W_out=(MemtoReg_W==1)?Dout:Forward_Data_W_out_not;


endmodule

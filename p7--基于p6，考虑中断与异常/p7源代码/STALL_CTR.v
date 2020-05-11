`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    13:34:29 12/03/2018 
// Design Name: 
// Module Name:    STALL_CTR 
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
module STALL_CTR(
    input [31:0] IR_D,
    input [31:0] IR_E,
    input [31:0] IR_M,
	input is_branch_rs_d,
	input is_branch_rsrt_d,
	input is_cal_r_d,
	input is_cal_i_d,
	input is_load_d,
	input is_save_d,
	input is_jr_d,
	input is_jalr_d,
	input is_mu_di_d,
	input is_mt_d,
	input is_cal_r_e,
	input is_cal_i_e,
	input is_mf_e,
	input is_load_e,
	input is_load_m,
    output stall
    );
	
	 assign d_rs_0=(is_branch_rs_d||is_jr_d||is_jalr_d);
	 assign d_rs_1=(is_load_d||is_save_d||is_cal_i_d||is_mt_d);
	 assign d_rsrt_1=(is_cal_r_d||is_mu_di_d);
	 assign d_rsrt_0=(is_branch_rsrt_d);
	 assign e_rd_1=(is_cal_r_e||is_mf_e);
	 assign e_rt_1=is_cal_i_e;
	 assign e_rt_2=is_load_e;
	 assign m_rt_1=is_load_m;
	 
	 wire [4:0]rsd=IR_D[25:21];
	 wire [4:0]rse=IR_E[25:21];
	 wire [4:0]rsm=IR_M[25:21];	
	 
	 wire [4:0]rtd=IR_D[20:16];
	 wire [4:0]rte=IR_E[20:16];
	 wire [4:0]rtm=IR_M[20:16];
	 
	 wire [4:0]rdd=IR_D[15:11];
	 wire [4:0]rde=IR_E[15:11];
	 wire [4:0]rdm=IR_M[15:11];
	 
	 wire stall_1=
	 (d_rs_0 && e_rd_1 && (rde==rsd&&rde!=0))||
	 (d_rs_0 && e_rt_1 && (rte==rsd&&rte!=0))||
	 (d_rs_0 && e_rt_2 && (rte==rsd&&rte!=0))||
	 (d_rs_0 && m_rt_1 && (rtm==rsd&&rtm!=0));
	 
	 wire stall_2=
	 (d_rsrt_1 && e_rt_2 && ((rte==rsd||rte==rtd)&&rte!=0));
	 
	 wire stall_3=
	 (d_rs_1 && e_rt_2 && (rte==rsd&&rte!=0));
	 
	 wire stall_4=
	 (d_rsrt_0 && e_rd_1 && ((rde==rsd||rde==rtd)&&rde!=0))||
	 (d_rsrt_0 && e_rt_1 && ((rte==rsd||rte==rtd)&&rte!=0))||
	 (d_rsrt_0 && e_rt_2 && ((rte==rsd||rte==rtd)&&rte!=0))||
	 (d_rsrt_0 && m_rt_1 && ((rtm==rsd||rtm==rtd)&&rtm!=0));
	 
	 assign stall=stall_1||stall_2||stall_3||stall_4;

endmodule







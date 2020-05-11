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


//////////////////////////////////
	 //op:31:26  func:5:0
	 //rd:15:11 rt:20:16 rs:25:21
	 
	 //cal_r
	 //addu op==6'b000000&&func==6'b100001
	 //subu op==6'b000000&&func==6'b100011
	 //sll op==6'b000000&&func==6'b000000
	 
	 //cal_i
	 //ori op==6'b001101
	 //lui op==6'b001111
	 
	 //b
	 //beq op==6'b000100
	 
	 //load
	 //lw op==6'b100011
	 
	 //save
	 //sw op==6'b101011
	 
	 //j op==6'b000010
	 //jal op==6'b000011
	 //jr op==6'b000000&&func==6'b001000
     ////////////////////////////////////////
module STALL_CTR(
    input [31:0] IR_D,
    input [31:0] IR_E,
    input [31:0] IR_M,
    output stall
    );
	 wire stall_b;
	 wire stall_cal_r;
	 wire stall_cal_i;
	 wire stall_load;
	 wire stall_save;
	 wire stall_jr;
	 
	 wire [5:0]opd=IR_D[31:26];
	 wire [5:0]ope=IR_E[31:26];
	 wire [5:0]opm=IR_M[31:26];
	 
	 wire [4:0]rsd=IR_D[25:21];
	 wire [4:0]rse=IR_E[25:21];
	 wire [4:0]rsm=IR_M[25:21];	
	 
	 wire [4:0]rtd=IR_D[20:16];
	 wire [4:0]rte=IR_E[20:16];
	 wire [4:0]rtm=IR_M[20:16];
	 
	 wire [4:0]rdd=IR_D[15:11];
	 wire [4:0]rde=IR_E[15:11];
	 wire [4:0]rdm=IR_M[15:11];
	 
	 wire [5:0]fd=IR_D[5:0];
	 wire [5:0]fe=IR_E[5:0];
	 wire [5:0]fm=IR_M[5:0];
	 
	 wire stall_b1;
	 wire stall_b2;
	 wire stall_b3;
	 wire stall_b4;
	 
	 wire stall_cal_r1;
	 
	 wire stall_cal_i1;
	 
	 wire stall_load1;
	 
	 wire stall_save1;
	 
	 wire stall_jr1;
	 wire stall_jr2;
	 wire stall_jr3;
	 wire stall_jr4;
	 
	 assign is_calr_d = 
		(opd==6'b000000&&fd==6'b100001) | // addu
		(opd==6'b000000&&fd==6'b100011) | //subu
		(opd==6'b000000&&fd==6'b000000);  //sll
		
	 assign is_beq_d=
		(opd==6'b000100); //beq
		
	 assign is_cali_d=
		(opd==6'b001101)| //ori
		(opd==6'b001111); //lui
	
	 assign is_load_d=
		(opd==6'b100011); //lw
		
	 assign is_save_d=
		(opd==6'b101011); //sw
		
	 assign is_jr_d=
		(opd==6'b000000&&fd==6'b001000); //jr
	 
	 assign is_calr_e = 
		(ope==6'b000000&&fe==6'b100001) | // addu
		(ope==6'b000000&&fe==6'b100011) | //subu
		(ope==6'b000000&&fe==6'b000000);  //sll
		
	 assign is_cali_e=
		(ope==6'b001101)| //ori
		(ope==6'b001111); //lui
		
	 assign is_load_e=
		(ope==6'b100011); //lw
	
	 assign is_load_m=
		(opm==6'b100011); //lw
	
	
	 
	 assign stall=stall_b||stall_cal_r||stall_cal_i||stall_load||stall_save||stall_jr;
	 //
	 assign stall_b= is_beq_d &&(stall_b1||stall_b2||stall_b3||stall_b4);
	 
	 assign stall_b1= is_calr_e &&
	 ((rde==rsd && rsd!=0)||(rde==rtd && rtd!=0));
	 
	 assign stall_b2= is_cali_e &&
	 ((rte==rsd && rsd!=0)||(rte==rtd && rtd!=0));
	 
	 assign stall_b3= is_load_e &&
	 ((rte==rsd && rsd!=0)||(rte==rtd && rtd!=0));
	 
	 assign stall_b4= is_load_m &&
	 ((rtm==rsd && rsd!=0)||(rtm==rtd && rtd!=0));
	 //
	 assign stall_cal_r= is_calr_d &&stall_cal_r1;
	 
	 assign stall_cal_r1= is_load_e &&
	 ((rte==rsd && rsd!=0)||(rte==rtd && rtd!=0));
	 //
	 assign stall_cal_i= is_cali_d &&stall_cal_i1;
	 
	 assign stall_cal_i1= is_load_e &&
	 (rte==rsd && rsd!=0);
	 //
	 assign stall_load= is_load_d &&stall_load1;
	 
	 assign stall_load1= is_load_e &&
	 (rte==rsd && rsd!=0);
	 //
	 assign stall_save= is_save_d &&stall_save1;
	 
	 assign stall_save1= is_load_e &&
	 (rte==rsd && rsd!=0);
	 //
	 assign stall_jr= is_jr_d &&(stall_jr1||stall_jr2||stall_jr3||stall_jr4);
	 
	 assign stall_jr1= is_calr_e &&
	 (rde==rsd && rsd!=0);
	 
	 assign stall_jr2= is_cali_e &&
	 (rte==rsd && rsd!=0);
	 
	 assign stall_jr3= is_load_e &&
	 (rte==rsd && rsd!=0);
	 
	 assign stall_jr4= is_load_m &&
	 (rtm==rsd && rsd!=0);	 
	
	

endmodule







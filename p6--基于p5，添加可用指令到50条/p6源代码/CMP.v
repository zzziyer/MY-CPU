`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    11:25:04 12/03/2018 
// Design Name: 
// Module Name:    CMP 
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
module CMP(
    input [31:0] RF_RD1,
    input [31:0] RF_RD2,
	input [2:0]branchop,
    output  cmp_out
    );
	 
	 assign cmp_out=(branchop==1&&RF_RD1==RF_RD2)?1:
					(branchop==2&&RF_RD1!=RF_RD2)?1:
					(branchop==3&&$signed(RF_RD1)<=0)?1:
					(branchop==4&&$signed(RF_RD1)>0)?1:
					(branchop==5&&$signed(RF_RD1)<0)?1:
					(branchop==6&&$signed(RF_RD1)>=0)?1:				
					0;


endmodule

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
    output  cmp_out
    );
	 
	 assign cmp_out=(RF_RD1==RF_RD2)?1:0;
	 
	 /*always @(*)begin
		if(RF_RD1==RF_RD2)
		cmp_out=1;
		else
		cmp_out=0;
	 end*/


endmodule

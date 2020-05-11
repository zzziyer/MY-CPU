`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:43:14 12/03/2018 
// Design Name: 
// Module Name:    MUX_E_ALU1 
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
module MUX_E_ALU1(
    input [31:0] E_reg_rs,
    input [31:0] M_Forward,
    input [31:0] W_Forward,
    input [1:0] selet,
    output [31:0] alu1_final
    );
	
	assign alu1_final=(selet==0)?E_reg_rs:
			(selet==1)?M_Forward:
			(selet==2)?W_Forward:0;
	
	/*always @(*)begin
		if(selet==0)begin
			alu1_final<=E_reg_rs;
		end
		else if(selet==1)begin
			alu1_final<=M_Forward;
		end
		else if(selet==2)begin
			alu1_final<=W_Forward;
		end
	end*/


endmodule

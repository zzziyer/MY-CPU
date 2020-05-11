`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:45:14 12/03/2018 
// Design Name: 
// Module Name:    MUX_E_ALU2 
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
module MUX_E_ALU2(
    input [31:0] E_reg_rt,
    input [31:0] M_Forward,
    input [31:0] W_Forward,
    input [1:0] selet,
    output [31:0] alu2_final
    );
	
	assign alu2_final=(selet==0)?E_reg_rt:
			(selet==1)?M_Forward:
			(selet==2)?W_Forward:0;
	
	/*always @(*)begin
		if(selet==0)begin
			alu2_final<=E_reg_rt;
		end
		else if(selet==1)begin
			alu2_final<=M_Forward;
		end
		else if(selet==2)begin
			alu2_final<=W_Forward;
		end
	end*/


endmodule

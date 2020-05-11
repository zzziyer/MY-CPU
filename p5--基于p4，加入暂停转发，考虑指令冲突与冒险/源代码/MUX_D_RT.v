`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:06 12/03/2018 
// Design Name: 
// Module Name:    MUX_D_RT 
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
module MUX_D_RT(
    input [31:0] RD2,
    input [31:0] E_Forward,
    input [31:0] M_Forward,
    input [1:0] selet,
    output [31:0] rt_final
    );
	
	
	assign rt_final=(selet==0)?RD2:
			(selet==1)?E_Forward:
			(selet==2)?M_Forward:0;
	
	/*always @(*)begin
		if(selet==0)begin
			rt_final<=RD2;
		end
		else if(selet==1)begin
			rt_final<=E_Forward;
		end
		else if(selet==2)begin
			rt_final<=M_Forward;
		end
	end*/


endmodule

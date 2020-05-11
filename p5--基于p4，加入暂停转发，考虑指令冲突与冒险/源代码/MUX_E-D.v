`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:35:44 12/03/2018 
// Design Name: 
// Module Name:    MUX_D_RS 
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
module MUX_D_RS(
    input [31:0] RD1,
    input [31:0] E_Forward,
    input [31:0] M_Forward,
    input [1:0] selet,
    output [31:0] rs_final
    );
	
	
	assign rs_final=(selet==0)?RD1:
			(selet==1)?E_Forward:
			(selet==2)?M_Forward:0;
	/*always @(*)begin
		if(selet==0)begin
			rs_final<=RD1;
		end
		else if(selet==1)begin
			rs_final<=E_Forward;
		end
		else if(selet==2)begin
			rs_final<=M_Forward;
		end
	end*/
	
	
	
	


endmodule

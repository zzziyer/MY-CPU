`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:47:26 12/03/2018 
// Design Name: 
// Module Name:    MUX_M_WD 
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
module MUX_M_WD(
    input [31:0] M_reg_out,
    input [31:0] W_Forward,
    input selet,
    output [31:0] WD_final
    );
	
	assign WD_final=(selet==0)?M_reg_out:W_Forward;
	
	/*always @(*)begin
		if(selet==0)begin
			WD_final<=M_reg_out;
		end
		else begin
			WD_final<=W_Forward;
		end
	end*/


endmodule

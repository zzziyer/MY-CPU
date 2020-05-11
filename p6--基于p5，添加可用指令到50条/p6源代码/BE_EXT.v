`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    23:39:23 12/14/2018 
// Design Name: 
// Module Name:    BE_EXT 
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
module BE_EXT(
    input [1:0] AO,
	input [1:0] op,
    output [3:0] BE
    );
	
	assign BE=(op==0)?4'b1111:
			  (op==1&&AO[1]==0)?4'b0011:
			  (op==1&&AO[1]==1)?4'b1100:
			  (op==2&&AO==0)?4'b0001:
			  (op==2&&AO==1)?4'b0010:
			  (op==2&&AO==2)?4'b0100:
			  (op==2&&AO==3)?4'b1000:
			  4'b0000;




endmodule

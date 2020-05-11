`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    12:47:03 12/03/2018 
// Design Name: 
// Module Name:    NPC 
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
module NPC(
    input cmp_res,
	 input branch,
	 input jump,
	 input jr_sel,
    //input [25:0] add26,
    //input [15:0] imm16,
	input [31:0] ins,
    input [31:0] PC4_D,
	 input [31:0] jr_alures,
    output reg[31:0] pc_new=0,
	output change
    );
	 
	 wire [25:0] add26=ins[25:0];
	 wire [15:0] imm16=ins[15:0];
	 assign change=(branch&&cmp_res)||jump||jr_sel;
	 
	 always @(*)begin
		if(branch==1&&cmp_res==1) begin
			pc_new<=PC4_D+{{14{imm16[15]}}, imm16, 2'b00};
		end
		else if(jump==1)begin
			pc_new<={PC4_D[31:28],add26,2'b00};
		end
		else if(jr_sel==1)begin
			pc_new<=jr_alures;
		end
		else begin
			;//pc_new=PC4_D;
		end
	 end


endmodule

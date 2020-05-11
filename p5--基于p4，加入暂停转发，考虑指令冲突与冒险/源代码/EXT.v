`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:54:52 11/24/2018 
// Design Name: 
// Module Name:    EXT 
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
module EXT(
	input [31:0] ins,
    //input [15:0] imm,
    input [1:0] EXTslt,
    output reg[31:0] imm_ext=0
    );
	 
	 wire [15:0] imm=ins[15:0];
	 
	 always @(*)begin
		if(EXTslt==0)begin
			imm_ext[31:16]<=0;
			imm_ext[15:0]<=imm;
		end
		else if(EXTslt==1)begin
			if(imm[15]==0)begin
				imm_ext[31:16]<=0;
				imm_ext[15:0]<=imm;
			end
			else begin
				imm_ext[31:16]<=16'b1111111111111111;
				imm_ext[15:0]<=imm;
			end
		end
		else if(EXTslt==2)begin
			imm_ext[31:16]<=imm;
			imm_ext[15:0]<=0;
		end
		else begin
			;
		end
	 end


endmodule

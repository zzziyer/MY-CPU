`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:58:42 12/15/2018 
// Design Name: 
// Module Name:    MEM_EXT 
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
module MEM_EXT(
    input [1:0] AO,
    input [31:0] Din,
    input [2:0] op,
    output [31:0] Dout
    );
	
	
	assign Dout=(op==0)?Din:
	
				(op==1&&AO==0)?{{24{1'b0}},{Din[7:0]}}:
				(op==1&&AO==1)?{{24{1'b0}},{Din[15:8]}}:
				(op==1&&AO==2)?{{24{1'b0}},{Din[23:16]}}:
				(op==1&&AO==3)?{{24{1'b0}},{Din[31:24]}}:
				
				(op==2&&AO==0)?{{24{Din[7]}},{Din[7:0]}}:
				(op==2&&AO==1)?{{24{Din[15]}},{Din[15:8]}}:
				(op==2&&AO==2)?{{24{Din[23]}},{Din[23:16]}}:
				(op==2&&AO==3)?{{24{Din[31]}},{Din[31:24]}}:
				
				(op==3&&AO[1]==0)?{{16{1'b0}},{Din[15:0]}}:
				(op==3&&AO[1]==1)?{{16{1'b0}},{Din[31:16]}}:
				
				(op==4&&AO[1]==0)?{{16{Din[15]}},{Din[15:0]}}:
				(op==4&&AO[1]==1)?{{16{Din[31]}},{Din[31:16]}}:
				0;
				
				
				
	
	/*always @(*)begin
		if(op==0)begin
			Dout<=Din;
		end
		if(op==1)begin
			if(AO==0)
				Dout={{24{1'b0}},{Din[7:0]}};
			else if(AO==1)
				Dout={{24{1'b0}},{Din[15:8]}};
			else if(AO==2)
				Dout={{24{1'b0}},{Din[23:16]}};
			else if(AO==3)
				Dout={{24{1'b0}},{Din[31:24]}};
		end
		if(op==2)begin
			if(AO==0)
				Dout={{24{Din[7]}},{Din[7:0]}};
			else if(AO==1)
				Dout={{24{Din[15]}},{Din[15:8]}};
			else if(AO==2)
				Dout={{24{Din[23]}},{Din[23:16]}};
			else if(AO==3)
				Dout={{24{Din[31]}},{Din[31:24]}};
		end
		if(op==3)begin
			if(AO[1]==0)
				Dout={{16{1'b0}},{Din[15:0]}};
			else if(AO[1]==1)
				Dout={{16{1'b0}},{Din[31:16]}};
		end
		if(op==4)begin
			if(AO[1]==0)
				Dout={{16{Din[15]}},{Din[15:0]}};
			else if(AO[1]==1)
				Dout={{16{Din[31]}},{Din[31:16]}};
		end
	end*/


endmodule

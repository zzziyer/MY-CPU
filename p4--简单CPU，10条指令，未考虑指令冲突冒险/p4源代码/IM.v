`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    10:29:04 11/24/2018 
// Design Name: 
// Module Name:    IM 
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
module IM(
    input [31:0]pc,
    //output [25:0] add26,
    //output [15:0] immediate,
    //output [5:0] func,
    //output [4:0] sa,
    //output [4:0] rd,
    //output [4:0] rt,
    //output [4:0] rs,
    //output [5:0] opcode,
	output [31:0]instruction
    );
	 
	 reg [31:0]ins_mem[1023:0];
	 
	 integer i;
	 initial begin
		for(i=0;i<=1023;i=i+1)begin
				ins_mem[i]=0;
		end
		$readmemh("code.txt",ins_mem);
	 end
	 
	 assign instruction=ins_mem[pc[11:2]];
	 
	 /*
	 assign add26=ins_mem[pc[11:2]][25:0];
	 assign immediate=ins_mem[pc[11:2]][15:0];
	 assign func=ins_mem[pc[11:2]][5:0];
	 assign sa=ins_mem[pc[11:2]][10:6];
	 assign rd=ins_mem[pc[11:2]][15:11];
	 assign rt=ins_mem[pc[11:2]][20:16];
	 assign rs=ins_mem[pc[11:2]][25:21];
	 assign opcode=ins_mem[pc[11:2]][31:26];
	 */

	 
	 

endmodule

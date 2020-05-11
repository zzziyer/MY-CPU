`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    00:00:16 12/04/2018 
// Design Name: 
// Module Name:    FORWARD_CTRL 
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
module FORWARD_CTRL(
    input [4:0] addr_E,
    input [4:0] addr_M,
    input [4:0] addr_W,
    input [31:0] IR_D,
    input [31:0] IR_E,
    input [31:0] IR_M,
    output [1:0] sel_D_RS,
    output [1:0] sel_D_RT,
    output [1:0] sel_E_ALU1,
    output [1:0] sel_E_ALU2,
    output sel_M_WD
    );
	wire [4:0]rsd=IR_D[25:21];
	wire [4:0]rtd=IR_D[20:16];
	wire [4:0]rse=IR_E[25:21];
	wire [4:0]rte=IR_E[20:16];
	wire [4:0]rsm=IR_M[25:21];
	wire [4:0]rtm=IR_M[20:16];
	//rs:25:21 rt:20:16
	assign sel_D_RS=(addr_E==rsd && addr_E!=0)?1:
	                (addr_M==rsd && addr_M!=0)?2:0;
	assign sel_D_RT=(addr_E==rtd && addr_E!=0)?1:
	                (addr_M==rtd && addr_M!=0)?2:0;				
	assign sel_E_ALU1=(addr_M==rse && addr_M!=0)?1:
	                  (addr_W==rse && addr_W!=0)?2:0;
	assign sel_E_ALU2=(addr_M==rte && addr_M!=0)?1:
	                  (addr_W==rte && addr_W!=0)?2:0;
	assign sel_M_WD=(addr_W==rtm && addr_W!=0)?1:0;


endmodule

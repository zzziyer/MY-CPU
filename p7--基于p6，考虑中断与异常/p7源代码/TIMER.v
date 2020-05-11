`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    19:48:53 12/24/2018 
// Design Name: 
// Module Name:    TIMER 
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
module TIMER(
    input clk,
    input reset,
    input [3:2] addr,
    input we,
    input [31:0] data_in,
    output [31:0] data_out,
    output IRQ
    );
	
	reg [31:0] ctrl=0;
	reg [31:0] present=0;
	reg [31:0] count=0;
	reg irq_count=0;
	integer s=0;
	
	assign IRQ=irq_count&&ctrl[3];
	
	assign data_out=(addr==0)?ctrl:
					(addr==1)?present:
					(addr==2)?count:0;
					
	always @(posedge clk)begin
		if(reset==1)begin
			ctrl<=0;
			present<=0;
			count<=0;
			irq_count<=0;
		end
		else begin
			if(we==1)begin
				if(addr==0)
				ctrl<=data_in;
				else if(addr==1)
				present<=data_in;
			end
			else begin
				case (s)
					0:begin
						if(ctrl[0]==1)begin
							irq_count<=0;
							s<=1;
						end
						else begin
							irq_count<=0;
							s<=0;
						end
					end
					1:begin
						s<=2;
						count <= present;
					end
					2:begin
						if(ctrl[0]==0)begin
							s<=0;
						end
						else if(ctrl[0]==1&&count<=1)begin
							irq_count<=1;
							s<=3;
						end
						else begin
							count<=count-1;
							s<=2;
						end
					end
					3:begin
						if(ctrl[2:1]==0)begin
							ctrl[0]<=0;
							s<=0;
						end
						else begin
							irq_count<=0;
							s<=0;
						end
					end
				endcase
			end
			
		end
	end


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    22:24:45 12/14/2018 
// Design Name: 
// Module Name:    MUL_DIV 
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
module MUL_DIV(
	input clk,
    input [31:0] D1,
    input [31:0] D2,
    input [3:0]op,
	output reg busy=0,
    output reg[31:0] HI=0,
    output reg[31:0] LO=0
    );
	
	integer cnt=0;
	reg [63:0]temp=0;
	//assign temp=D1*D2;
	
	always @(posedge clk)begin
		if(busy==1)begin
			if(cnt!=0) begin
				cnt=cnt-1;
			end
			if(cnt==0)begin
				busy=0;
			end
		end
		else begin
			if(op==1)begin//mult
				temp=$signed(D1)*$signed(D2);
				HI=temp[63:32];
				LO=temp[31:0];
				busy=1;
				cnt=5;
			end
			else if(op==2)begin//div
				LO=$signed($signed(D1)/$signed(D2));
				HI=$signed($signed(D1)%$signed(D2));
				busy=1;
				cnt=10;
			end
			else if(op==3)begin//multu
				temp=D1*D2;
				HI=temp[63:32];
				LO=temp[31:0];
				busy=1;
				cnt=5;
			end
			else if(op==4)begin//divu
				LO=D1/D2;
				HI=D1%D2;
				busy=1;
				cnt=10;
			end
			else if(op==7)begin//mthi
				HI=D1;
			end
			else if(op==8)begin//mtlo
				LO=D1;
			end
		end
		
	end


endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date:    14:25:14 12/26/2018 
// Design Name: 
// Module Name:    mips 
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
module mips(
    input clk,
    input reset
    );
	
	wire [31:0]PrAddr;
	wire [31:0]Pr_WD;
	wire PrWe;
	wire [31:0]data_out_T0;
	wire IRQ_T0;
	wire [31:0]data_out_T1;
	wire IRQ_T1;
	wire [3:2]ADDR_T0_out;
	wire [3:2]ADDR_T1_out;
	wire [31:0]READ_data_out;
	wire T0_we;
	wire T1_we;
	
	cpu c_p_u(
		.clk(clk),
		.reset(reset),
		.Pr_RD(READ_data_out),
		.T0_irq(IRQ_T0),
		.T1_irq(IRQ_T1),
		.PrAddr(PrAddr),
		.Pr_WD(Pr_WD),
		.PrWe(PrWe)
	);
	
	
	
	
	
	BRIDGE bridge(
		.ADDR_in(PrAddr),
		.we(PrWe),
		//.WD_in(Pr_WD),
		.T0_data_in(data_out_T0),
		.T1_data_in(data_out_T1),
		
		.ADDR_T0_out(ADDR_T0_out),
		.ADDR_T1_out(ADDR_T1_out),
		.READ_data_out(READ_data_out),
		.T0_we(T0_we),
		.T1_we(T1_we)
	);
	
	
	
	TIMER timer1(
		.clk(clk),
		.reset(reset),
		.addr(ADDR_T0_out[3:2]),
		.we(T0_we),
		.data_in(Pr_WD),
		
		.data_out(data_out_T0),
		.IRQ(IRQ_T0)
	);
	
	
	
	TIMER timer2(
		.clk(clk),
		.reset(reset),
		.addr(ADDR_T1_out[3:2]),
		.we(T1_we),
		.data_in(Pr_WD),
		
		.data_out(data_out_T1),
		.IRQ(IRQ_T1)
	);
	


endmodule

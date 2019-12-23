`timescale 1ns/1ps
module PWM_Int_4_Controller_testbench ();

	reg clk, reset;
	reg [31:0] command;
	wire [3:0] pwm_out;
	wire [19:0] count;

	PWM_Int_4_Controller PWM_Int_4_inst (clk, command, reset, pwm_out, count);

	initial begin
		command = 0;
		clk<=0;
		reset<=0;
		#5
		reset<=1;
		# 20
		command[31:30] <= 2'b01;
		command[19:0] <= 20'b 1000_0000_0000_0000_0000;
		#1000
		command[31:30] <= 2'b10;
		command[19:0] <= 20'b 1100_0000_0000_0000_0000;
	end

	always begin
		#5 clk = ~clk;
	end

endmodule
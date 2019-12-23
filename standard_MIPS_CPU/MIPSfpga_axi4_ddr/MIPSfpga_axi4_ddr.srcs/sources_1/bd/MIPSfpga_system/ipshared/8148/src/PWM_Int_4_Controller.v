`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 2019/12/13 15:50:11
// Design Name: 
// Module Name: PWM_Int_4
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module PWM_Int_4_Controller #(
    parameter integer period = 20)
(
    input Clk,
    input [31:0] Command,
    input Reset,
    output reg [3:0] PWM_out,
    output reg [period-1:0] count
);
    reg [period-1:0] DutyCycles [0:3];
    wire [1:0] Choose;
    
    assign Choose = Command[31:30];
   
   initial begin
        PWM_out = 0;
        count = 0;
        DutyCycles[0] = 0;
        DutyCycles[1] = 0;
        DutyCycles[2] = 0;
        DutyCycles[3] = 0;
   end
        
    always @(posedge Clk)
        if(!Reset)
            count <= 0;
        else
            count <= count + 1;
     
     always @(posedge Clk)
        if(count < DutyCycles[0])
            PWM_out[0] = 1'b0;
        else
            PWM_out[0] = 1'b1;
            
     always @(posedge Clk)
        if(count < DutyCycles[1])
            PWM_out[1] = 1'b0;
        else
            PWM_out[1] = 1'b1;
            
     always @(posedge Clk)
        if(count < DutyCycles[2])
            PWM_out[2] = 1'b0;
        else
            PWM_out[2] = 1'b1;
            
     always @(posedge Clk)
        if(count < DutyCycles[3])
            PWM_out[3] = 1'b0;
        else
            PWM_out[3] = 1'b1;
            
      always @(posedge Clk)
        if(!Reset) begin
            DutyCycles[0] <= 0;
            DutyCycles[1] <= 0;
            DutyCycles[2] <= 0;
            DutyCycles[3] <= 0;
        end
        else
            DutyCycles[Choose] = Command[period-1:0];
       
endmodule

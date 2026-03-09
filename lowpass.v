`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 08.03.2026 00:09:33
// Design Name: 
// Module Name: lowpass
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


module lowpass(
 input clk,
 input signed [15:0]X_IN,
 output reg signed [15:0]Y_OUT
    );
 reg signed [15:0] X0,X1,X2,X3,X4,X5,X6,X7;   
 reg signed [19:0]sum;
always@(posedge clk)
 begin 
  X0<=X_IN;
  X1<=X0;
  X2<=X1;
  X3<=X2;
  X4<=X3;
  X5<=X4;
  X6<=X5;
  X7<=X6;
 end
always@(posedge clk) begin
 sum=X1+X2+X3+X4+X5+X6+X7;  
 Y_OUT=sum>>>3;   
end 
endmodule

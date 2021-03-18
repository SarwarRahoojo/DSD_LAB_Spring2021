`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:18:08 PM
// Design Name: 
// Module Name: T_FF
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


module T_FF(Q, clk,t,reset,en);
input clk,t,reset,en;
output reg Q;

always@(posedge clk, posedge reset)
begin
if(reset==1)
Q<=1'b0;

else if (en == 1'b0)
Q<=Q;

else if (t == 0)
 Q<=Q;
 
 else if(t == 1)
Q<=~Q;

else 
Q<=1'bx;

end
endmodule

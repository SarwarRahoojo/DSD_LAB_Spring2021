`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 02:39:09 PM
// Design Name: 
// Module Name: DFF_3
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


module DFF_3(q,clk,d,reset,en);

input clk,d,reset,en;
output reg q;

always@(posedge clk, posedge reset )
begin

if (reset == 1)

q <= 1'b0;

else if (en == 0)
  q<=q;

else
 q <= d;
 
end
endmodule

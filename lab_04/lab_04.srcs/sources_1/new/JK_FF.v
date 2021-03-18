`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:14:09 PM
// Design Name: 
// Module Name: JK_FF
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


module JK_FF(q,clk,j,k,reset,en);

input clk,j,k,reset,en;
output reg q;

always@(posedge clk, posedge reset )
begin

if (reset == 1'b1)

           q <= 1'b0;

else if (en == 1'b0)
 
             q<=q;

else if(j==1'b0 && k==1'b1)
   
             q <= 0;
else if(j==1'b0 && k==1'b0)
        
              q <= q;
else if(j==1'b1 && k==1'b0)
             
               q <= 1;
else if(j==1'b1 && k ==1'b0)
                  
               q <= 1; 
else if (j == 1'b1 && k ==1'b1)
               q <= ~q;
else
q<=1'bx;
end
endmodule
`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 03/18/2021 03:01:35 PM
// Design Name: 
// Module Name: SR_FF
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


module SR_FF(q,clk,s,r,reset,en);

input clk,s,r,reset,en;
output reg q;

always@(posedge clk, posedge reset )
begin

if (reset == 1'b1)

           q <= 1'b0;

else if (en == 1'b0)
 
             q<=q;

else if(s==1'b0 && en ==1'b1)
   
             q <= 0;
else if(s==1'b0 && en ==1'b0)
        
              q <= q;
else if(s==1'b1 && en ==1'b0)
             
               q <= 1;
else if(s==1'b1 && en ==1'b1)
                  
               q <= 1'bx; 
else
               q <= q;
end
endmodule
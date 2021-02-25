`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 04:34:14 PM
// Design Name: 
// Module Name: Full_Adder
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


module Full_Adder(sum, c_out, a, b, c_in );
input a, b,c_in;
output sum,c_out;
xor xor1(s1,a,b);
xor xor2(sum,s1,c_in);
and and1(c1,a,b);
and and2(s2,s1,c_in);
xor xor3(c_out,c1,s2);
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 04:25:46 PM
// Design Name: 
// Module Name: ibitcomparator
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


module ibitcomparator(Gth, E, Lth, A,B);

input A,B;
output Gth, E, Lth;
wire n1,n2;

not not1(n1,B);
not not2(n2,A);

and and1(Gth, A, n1);
and and2 (Lth, B, n2);

xor xor1(E, A, B);

endmodule

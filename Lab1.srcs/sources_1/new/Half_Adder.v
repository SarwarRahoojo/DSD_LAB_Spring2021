`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 02/25/2021 05:50:00 PM
// Design Name: 
// Module Name: Half_Adder
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

//Author: Ghulam Sarwar

module Half_Adder(sum,c_out,a,b);

input a,b;
output sum,c_out;

and and1(c_out,a,b);
xor xor1(sum,a,b);

endmodule

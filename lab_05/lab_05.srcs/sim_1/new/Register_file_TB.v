`timescale 1ns / 1ps

module Register_File_TB;

// parameters
parameter word = 8;
parameter add  = 10;

// ports
reg Clk, W_en;
reg [word-1:0] W_data;
reg [add-1:0] W_Add;
reg [add-1:0] R_Add;
wire [word-1:0] R_data;

// Instatiation
Register_File_para RFP0(Clk, W_en, W_data, R_data, W_Add, R_Add);

// clock gen
initial
Clk = 0;
always #10 Clk = ~ Clk;

initial
begin
        /// Write 
        @(negedge Clk);  W_en = 1; W_Add = 0; W_data = 100;
        @(negedge Clk);  W_en = 1; W_Add = 1; W_data = 150;
        @(negedge Clk);  W_en = 1; W_Add = 2; W_data = 50;
        @(negedge Clk);  W_en = 1; W_Add = 3; W_data = 70;
        @(negedge Clk);  W_en = 1; W_Add = 4; W_data = 33;

     
        // Read 
        @(negedge Clk);  W_en = 0; R_Add = 4; 
        @(negedge Clk);  W_en = 0; R_Add = 3; 
        @(negedge Clk);  W_en = 0; R_Add = 2; 
        @(negedge Clk);  W_en = 0; R_Add = 1;
        @(negedge Clk);  W_en = 0; R_Add = 0; 
        
        // finish simulation
        @(negedge Clk); $stop;
end 

endmodule

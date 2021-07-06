module Register_File(Clk, W_en, W_data, R_data, W_Add, R_Add);

// parameters
parameter word = 8;
parameter add  = 10;

// ports
input Clk, W_en;
input [word-1:0] W_data;
input [add-1:0] W_Add;
input [add-1:0] R_Add;
output reg [word-1:0] R_data;

// Memory generation 2D
reg [7:0] reg_file [2**add-1:0];  // 2^10-1 = 1023

// control logic
always@(posedge Clk)
begin
    if(W_en) // if HIGH, then write operation
        reg_file [W_Add] <= W_data; 
    else // otherwise read operation
        R_data <= reg_file [R_Add];
        
end 


endmodule



 

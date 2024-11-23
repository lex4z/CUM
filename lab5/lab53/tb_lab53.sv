`timescale 1ns / 1ps

module tb_lab53();
    localparam int clk_period = 10;
    
    logic clk = 0;
    logic [7 : 0] din = 8'b11001011;
    logic [7 : 0] din2;
    logic [7 : 0] dout;
    
    always # (clk_period/2) clk = ~clk;
    always # (clk_period/2) din = din + 1;
    
    
    always_ff @(posedge clk) begin
        din2 <= din;  //тактирование входа
    end
    
    
    lab53 test53(
        .clk (clk),
        .din (din2),
        .dout (dout)
    );
    
endmodule
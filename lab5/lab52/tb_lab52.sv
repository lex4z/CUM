`timescale 1ns / 1ps

module tb_lab52();
    localparam int clk_period = 10;//ns
    
    logic clk = 0;
    logic srst = 0;
    logic [15 : 0] t;
    
    always # (clk_period/2) clk = ~clk;
    always # (clk_period*16) srst = ~srst;
    
    lab52 test_lab52(
    .clk (clk),
    .srst (srst),
    .dout (t));
    
endmodule

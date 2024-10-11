`timescale 1ns / 1ps

module tb_lab55();
    localparam int clk_period = 10;
    logic clk = 0;
    logic srst = 0;
    logic [1 : 0] dout;
    
    always # (clk_period/2) clk = ~clk;
    //always # (clk_period*16) srst = ~ srst;
    
    initial begin
        srst = 1;
        #10;
        srst = 0;
        #200;
        
        $stop;
        
    end
    
    lab55 test55(
    .clk (clk),
    .srst (srst),
    .coded (dout));
    
    
endmodule

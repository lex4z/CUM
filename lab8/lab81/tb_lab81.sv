`timescale 1ns / 1ps

module tb_lab81();
    logic clk = 0;
    logic srst = 0;
    logic info = 0;
    logic [1 : 0] coded;
    
    lab82 test81(
        .clk   (clk),
        .srst  (srst),
        .info  (info),
        .coded (coded)
    );
    
    always #(5) clk = ~clk;
    
    initial begin
        #5;
        srst = 1;
        info = 0;
        #10;
        
        srst = 0;
        info = 1;
        #50;
        
        info = 0;
        #10;
        
        info = 1;
        #10;
        
        info = 0;
        #100;
        
        $stop;
    end
    
endmodule

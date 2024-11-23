`timescale 1ns / 1ps

module tb_lab54();
    localparam int clk_period = 10;
    logic clk = 0;
    logic srst = 1;
    logic psp_bit;

    always # (clk_period/2) clk = ~clk;
    
    lab54 test54(
        .clk (clk),
        .srst (srst),
        .psp_bit (psp_bit)
    );

    initial begin
        srst = 1;
        #10;
        
        srst = 0;
        #100;
        
        $stop;
    end
    
endmodule

`timescale 1ns / 1ps

module tb_lab92();
    logic clk = 0;
    logic [7 : 0] x1;
    logic [7 : 0] x2;
    logic [7 : 0] dout;
    
    always #(5) clk = ~clk;
    
    lab92 test92(
        .clk  (clk),
        .x1   (x1),
        .x2   (x2),
        .dout (dout)
    );
    
    initial begin
        x1 = 8'b00100000;
        x2 = 8'b00001000;
        #10;
        
        x1 = 8'b11110000;
        x2 = 8'b11100000;
        #10;
        
        x1 = 8'b00110000;
        x2 = 8'b10100000;
        #10;
        
        x1 = 8'b11101100;
        x2 = 8'b00111000;
        #10;
        
        x1 = 8'b11110000;
        x2 = 8'b00110000;
        #10;
        
        x1 = 8'b11110000;
        x2 = 8'b00110000;
        #10;
        
        $stop;
    end
endmodule

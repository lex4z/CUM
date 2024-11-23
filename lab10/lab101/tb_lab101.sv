`timescale 1ns / 1ps

module tb_lab101();
    
    logic clk = 0;
    logic [15:0] din;
    logic [31:0] dout;

    always #(5) clk = ~clk;
    
    lab101 test101(
        .clk  (clk),
        .din  (din),
        .dout (dout)
    );
    
    initial begin
        din = 16'd2615;
        #10;
        
        din = -16'd17412;
        #10;
        
        #30;
        
        $stop;
    end

endmodule

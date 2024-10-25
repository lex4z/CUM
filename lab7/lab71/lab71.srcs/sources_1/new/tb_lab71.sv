`timescale 1ns / 1ps

module tb_lab71();
    logic clk = 0;
    logic srst = 0;
    logic [7 : 0] dout;
    
    always #(5) clk = ~clk;
    
    lab71 test71(
    .clk (clk),
    .srst (srst),
    .led (dout)
    );
    
    initial begin
        srst = 1;
        #10 srst = 0;
        
        #320;
        #320;
        $stop;
        
        
    
    end
    
endmodule

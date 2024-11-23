`timescale 1ns / 1ps

module tb47();
    logic [7 : 0] x;
    logic [9 : 0] y;
    
    lab47 test47(
    .x (x),
    .y (y));
    
    initial begin
        for (x = 0; x < 256; x++) #10;
        
        $stop;
    end
     
endmodule

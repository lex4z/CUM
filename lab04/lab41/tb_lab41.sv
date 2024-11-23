`timescale 1ns / 1ps

module tb_lab41();

    localparam int PERIOD = 80;
    
    logic [2 : 0] x1 = 3'b000;
    logic [2 : 0] x2 = 3'b000;
    logic [3 : 0] y  = 4'b0000;
    
    always #(PERIOD/8) x1 = x1 + 1;
    always #(PERIOD) x2 = x2 + 1;
    
    lab41 test_lab41(
        .x1 (x1),
        .x2 (x2),
        .y (y)
    );
    
endmodule

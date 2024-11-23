`timescale 1ns / 1ps

module tb_lab111();
    logic clk = 1;
    logic din_v = 1;
    logic [15:0] din;
    logic [15:0] dout;
    logic [3:0] counter = 0;
    
    always #(5) clk = ~clk;
    
    always_ff @(posedge clk) counter <= counter + 1;
    
    lab111_main test111(
        .clk(clk),
        .din_v(din_v),
        .din({12'b0,counter}),
        .dout(dout)
    );
    
    
endmodule

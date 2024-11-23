`timescale 1ns / 1ps

module lab62(
    input logic clk,
    output logic led
    );
    logic [26 : 0] counter = '0;
    
    always_ff @(posedge clk) counter <= counter + 1;
    
    assign led = counter[26];
endmodule

`timescale 1ns / 1ps

module lab91(
    input  logic          clk,
    input  logic [15 : 0] x1,
    input  logic [7  : 0] x2,
    output logic [20 : 0] dout
    );

    logic [20 : 0] x1_extended;
    assign x1_extended = {x1[15],x1,4'b0000};
    
    logic [20 : 0] x2_extended;
    assign x2_extended = {{13{x2[7]}},x2};
    
    always_ff @(posedge clk) dout <= x1_extended + x2_extended;
    
endmodule

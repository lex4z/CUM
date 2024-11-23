`timescale 1ns / 1ps

module lab92(
    input  logic                clk,
    input  logic signed [7 : 0] x1, //(1,8,4)
    input  logic signed [7 : 0] x2, //(1,8,4)
    output logic        [7 : 0] dout
    );
    logic signed [15 : 0] result; //(1,16,8)
    
    always_ff @(posedge clk) begin
        result = x1 * x2;
        dout = {result[15],result[10:4]};
    end
    
endmodule

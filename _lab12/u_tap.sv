`timescale 1ns / 1ps

module tap #(
    parameter partSumLength = 20
)(
    input logic clk,
    input logic coeff,
    input logic sample_valid,
    input logic signed [15:0] sample,
    input  logic signed [partSumLength-1:0] prev_tap,
    output logic signed [partSumLength-1:0] next_tap
    );
    
    always_ff @(posedge clk) begin
        if(sample_valid) begin
            if(coeff) next_tap <= $signed(prev_tap) - $signed(sample);
            else next_tap <=  $signed(prev_tap) +  $signed(sample);
        end
    end

endmodule

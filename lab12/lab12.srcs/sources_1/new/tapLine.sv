`timescale 1ns / 1ps

module tapLine #(
    parameter tapLineLength = 11,
    parameter partSumLength = 20
)(
    input logic clk,
    input logic signed [15:0] sample,
    input logic sample_valid,
    input logic coeffs [tapLineLength],
    output logic signed [partSumLength-1:0] dout
    );
    logic signed [partSumLength-1:0] results [tapLineLength] = '{default: '0};
    
    
    tap #(.partSumLength (partSumLength))
        u_tap (
            .clk (clk),
            .sample (sample),
            .sample_valid (sample_valid),
            .coeff (coeffs[tapLineLength-1]),
            .prev_tap (999'b0),
            .next_tap (results[0])
        );
    generate
        for (genvar i = 1; i < tapLineLength; i = i + 1) begin
            tap #(.partSumLength (partSumLength))
            u_tap (
                .clk (clk),
                .sample (sample),
                .sample_valid (sample_valid),
                .coeff (coeffs[tapLineLength-1-i]),
                .prev_tap (results[i-1]),
                .next_tap (results[i])
            );
        end
    endgenerate
    
    assign dout = results[tapLineLength-1];
endmodule

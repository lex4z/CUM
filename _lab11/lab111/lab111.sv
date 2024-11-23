`timescale 1ns / 1ps

module lab111_main #(
    parameter WINDOW_SIZE = 8
    )
    (
    input logic clk,
    input logic din_v,
    input logic signed [15:0] din,
    output logic signed [15:0] dout
    );
    logic signed [18 : 0] accumulator = '0;
    logic signed [15 : 0] window [WINDOW_SIZE] = '{default:'0};
    
    always_ff @(posedge clk) begin
        if(din_v)
            window <= {din,window[0 : WINDOW_SIZE-2]};
            accumulator <= accumulator + din - window[WINDOW_SIZE-1];
    end
    
    assign dout = accumulator[18:3];
    
endmodule

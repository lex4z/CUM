`timescale 1ns / 1ps

module lab111_main #(
    parameter WINDOW_SIZE = 8
    )
    (
    input logic clk,
    input logic din_v,
    input logic [15:0] din,
    output logic [15:0] dout
    );
    logic [18 : 0] accumulator = 24'b0;
    logic [15 : 0] window [WINDOW_SIZE] = '{default:'0};
    
    always_ff @(posedge clk) begin
        if(din_v)
            window <= {din,window[0:WINDOW_SIZE-2]};
            accumulator <= accumulator + din - window[WINDOW_SIZE-1];
        dout <= accumulator >> 3;
    end
    
    
    
endmodule

`timescale 1ns / 1ps

module lab52(
    input logic clk,
    input logic srst,
    output logic [15 : 0] dout
    );
    logic [15 : 0]  shifter;
    
    always_ff @(posedge clk) begin
        if (srst) shifter = 16'b1011111010101111;
        else shifter <= {shifter[0], shifter[15:1]};
    end
    
    assign dout = shifter;
endmodule

`timescale 1ns / 1ps

module lab51(
    input logic clk,
    input logic clear,
    input logic preset,
    input logic j,
    input logic k,
    input logic enable,
    output logic jk_out
    );
    logic q;
    
    always_ff @(posedge clk or posedge clear or posedge preset) begin
        if (clear) q <= 1'b0;
        else if (preset) q <= 1'b1;
        else if (enable) begin
            case ({k,j})
                2'b00: q <= q;
                2'b11: q <= ~q;
                /*
                2'b01: q <= 1'b1;
                2'b10: q <= 1'b0;
                */
                default q<= j; 
            endcase
        end
    end
    
    assign jk_out = q;
    
    
endmodule

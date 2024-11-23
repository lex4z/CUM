`timescale 1ns / 1ps

module lab44(
    input  logic [1 : 0] din0,
    input  logic [1 : 0] din1,
    output logic [3 : 0] an,
    output logic [6 : 0] seg
    );
    logic [3 : 0] p;
    
    always_comb begin
        p = din0 * din1;
    end
    
    lab24 seg_out(
        .sw (p),
        .an (an),
        .seg (seg)
    );
    
endmodule

`timescale 1ns / 1ps

module lab34(
    input  logic [3 : 0] din0,
    input  logic [3 : 0] din1,
    input  logic [3 : 0] din2,
    input  logic [3 : 0] din3,
    input  logic [1 : 0] addr,
    output logic [3 : 0] an,
    output logic [6 : 0] seg
    );   

    logic [3 : 0] signal;
        
    always_comb begin
        signal = '0;
        case(addr)
            2'b00: signal = din0;
            2'b01: signal = din1;
            2'b10: signal = din2;
            2'b11: signal = din3; 
        endcase
    end

    lab24 seg_out(
        .sw  (signal),
        .an  (an),
        .seg (seg)
    );
    
endmodule

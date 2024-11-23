`timescale 1ns / 1ps

module lab55(
    input  logic         clk,
    input  logic         srst,
    output logic [1 : 0] coded
    );
    logic psp_bit;
    logic [6 : 0] code;
    
    lab54 psp_gen(
        .clk (clk),
        .srst (srst),
        .psp_bit (psp_bit)
    );
    
    always_ff @(posedge clk) begin
        if (srst) begin
            coded <= 2'b00;
            code <= 7'b0000000;
        end else begin
            code <= {psp_bit, code[6:1]};
            coded[0] <= code[0] ^ code[3] ^ code[4] ^ code[5] ^ code[6];
            coded[1] <= code[0] ^ code[1] ^ code[3] ^ code[4] ^ code[6];
        end
    end
    
endmodule

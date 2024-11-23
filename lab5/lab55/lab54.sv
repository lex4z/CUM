`timescale 1ns / 1ps

module lab54(
    input logic clk,
    input logic srst,
    output logic psp_bit
    );
    logic [14 : 0] shifter = 15'b101010001110110;
    
    always_ff @(posedge clk) begin
        if (srst) shifter <= 15'b101010001110110;
        else shifter <= {shifter[13:0],psp_bit};
    end
    
    assign psp_bit = shifter[14] ^ shifter[13];
    
endmodule

`timescale 1ns / 1ps

module lab53(
    input logic clk,
    input logic [7 : 0] din,
    output logic [7 : 0] dout
    );
    logic [7 : 0] delayed_din;
    
    always_ff @(posedge clk) begin
        delayed_din <= din;
    end
    
    assign dout = delayed_din;
endmodule

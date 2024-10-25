`timescale 1ns / 1ps

module lab74 #(
    parameter WIDTH = 32,
    parameter LENGTH = 16,
    parameter ADDRESS_WIDTH = $clog2(LENGTH)
)
(
    input logic clk,
    input logic write_enable,
    input logic [ADDRESS_WIDTH-1 : 0] address,
    input logic [WIDTH-1 : 0] din,
    output logic [WIDTH-1 : 0] dout
    );
    logic [WIDTH-1 : 0] ram [0 : LENGTH-1] = '{default: '0};
    
    always_ff @(posedge clk) begin
        if (write_enable) ram[address] <= din;
        dout <= ram[address];
    end
endmodule

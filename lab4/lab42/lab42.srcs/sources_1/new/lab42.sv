`timescale 1ns / 1ps

module lab42(
    input logic signed [6 : 0] din,
    output logic signed [7 : 0] led
    );
    const logic signed [7 : 0] cnst = 'h03;
    assign led = din + cnst;
endmodule

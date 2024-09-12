`timescale 1ns / 1ps

module lab24 (
 input logic [3 : 0] sw,
 output logic [6 : 0] seg,
 output logic [3 : 0] an
);
 assign an = 4'b1110;
 assign seg = (sw == 4'b0000) ? ~(7'b0111111) : 0;
 
endmodule



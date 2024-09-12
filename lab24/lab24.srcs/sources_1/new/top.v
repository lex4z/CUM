`timescale 1ns / 1ps

module lab24 (
 input logic [3 : 0] sw,
 output logic [6 : 0] seg,
 output logic [3 : 0] an
);
 assign an = 4'b1110;
 assign seg = 
 (sw == 4'b0000) ? ~(7'b0111111):
 (sw == 4'b0001) ? ~(7'b0000110):
 (sw == 4'b0010) ? ~(7'b1011011):
 (sw == 4'b0011) ? ~(7'b1001111):
 (sw == 4'b0100) ? ~(7'b1100110):
 (sw == 4'b0101) ? ~(7'b1101101):
 (sw == 4'b0110) ? ~(7'b1101101):
 (sw == 4'b0111) ? ~(7'b1111101):
 (sw == 4'b1000) ? ~(7'b0000111):
 (sw == 4'b1001) ? ~(7'b1111111):
 (sw == 4'b1010) ? ~(7'b1101111):
 (sw == 4'b1011) ? ~(7'b1110111):
 (sw == 4'b1100) ? ~(7'b1111100):
 (sw == 4'b1101) ? ~(7'b1011110):
 (sw == 4'b1110) ? ~(7'b1111001):
 (sw == 4'b1111) ? ~(7'b1110001):0;

 
endmodule



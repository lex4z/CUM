`timescale 1ns / 1ps

module lab25 (
    input  logic [4 : 0] sw,
    output logic [6 : 0] seg,
    output logic [3 : 0] an
    );

    assign an = 4'b1110;

    assign seg = 
    (sw[4]) ? ~(7'b1100110):
    (sw[3]) ? ~(7'b1001111):
    (sw[2]) ? ~(7'b1011011):
    (sw[1]) ? ~(7'b0000110):
    (sw[0]) ? ~(7'b0111111):
    ~(7'b1111001);

endmodule


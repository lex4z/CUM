`timescale 1ns / 1ps

module lab22 (
 input logic [7 : 0]  sw,
 output logic [3 : 0] led
);
assign led = 
(sw == 8'b10000000) ? 4'b0000:
(sw == 8'b01000000) ? 4'b0001:
(sw == 8'b00100000) ? 4'b0010:
(sw == 8'b00010000) ? 4'b0011:
(sw == 8'b00001000) ? 4'b0100:
(sw == 8'b00000100) ? 4'b0101:
(sw == 8'b00000010) ? 4'b0110:
(sw == 8'b00000001) ? 4'b0111: 4'b1000;

/*
always @(sw)
case(sw)
8'b10000000: led = 4'b0000;
8'b01000000: led = 4'b0001;
8'b00100000: led = 4'b0010;
8'b00010000: led = 4'b0011;
8'b00001000: led = 4'b0100;
8'b00000100: led = 4'b0101;
8'b00000010: led = 4'b0110;
8'b00000001: led = 4'b0111;
default:     led = 4'b1000;
endcase
*/

endmodule


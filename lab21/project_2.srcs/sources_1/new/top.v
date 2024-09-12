`timescale 1ns / 1ps

module lab21 (
 input logic [2 : 0] sw ,
 output logic [7 : 0] led
);
assign led = 
(sw == 3'b000) ? 8'b10000000:
(sw == 3'b001) ? 8'b01000000:
(sw == 3'b010) ? 8'b00100000:
(sw == 3'b011) ? 8'b00010000:
(sw == 3'b100) ? 8'b00001000:
(sw == 3'b101) ? 8'b00000100:
(sw == 3'b110) ? 8'b00000010:
(sw == 3'b111) ? 8'b00000001:0;

/*
always @(sw)
case(sw)
3'b000: led = 8'b10000000;
3'b001: led = 8'b01000000;
3'b010: led = 8'b00100000;
3'b011: led = 8'b00010000;
3'b100: led = 8'b00001000;
3'b101: led = 8'b00000100;
3'b110: led = 8'b00000010;
3'b111: led = 8'b00000001;
endcase
*/



endmodule

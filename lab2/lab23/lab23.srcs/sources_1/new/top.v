`timescale 1ns / 1ps

module lab23 (
 input logic [3 : 0]  sw,
 output logic [3 : 0] led
);
 assign led[3] = sw[3]^sw[2];
 assign led[2] = sw[2]^sw[1];
 assign led[1] = sw[1]^sw[0];
 assign led[0] = sw[0];
 
 //assign led = (sw[0] << 3) + (sw[1]^sw[0] << 2) + (sw[2]^sw[1] << 1) + (sw[3]^sw[2]);
  /*
 assign led = 
 (sw == 4'b0000) ? 4'b0000:
 (sw == 4'b0001) ? 4'b0001:
 (sw == 4'b0010) ? 4'b0011:
 (sw == 4'b0011) ? 4'b0010:
 (sw == 4'b0100) ? 4'b0110:
 (sw == 4'b0101) ? 4'b0111:
 (sw == 4'b0110) ? 4'b0101:
 (sw == 4'b0111) ? 4'b0100:
 (sw == 4'b1000) ? 4'b1100:
 (sw == 4'b1001) ? 4'b1101:
 (sw == 4'b1010) ? 4'b1111:
 (sw == 4'b1011) ? 4'b1110:
 (sw == 4'b1100) ? 4'b1010:
 (sw == 4'b1101) ? 4'b1011:
 (sw == 4'b1110) ? 4'b1001:
 (sw == 4'b1111) ? 4'b1000:0;

always @(sw)
 case(sw)
 4'b0000: led = 4'b0000;
 4'b0001: led = 4'b0001;
 4'b0010: led = 4'b0011;
 4'b0011: led = 4'b0010;
 4'b0100: led = 4'b0110;
 4'b0101: led = 4'b0111;
 4'b0110: led = 4'b0101;
 4'b0111: led = 4'b0100;
 4'b1000: led = 4'b1100;
 4'b1001: led = 4'b1101;
 4'b1010: led = 4'b1111;
 4'b1011: led = 4'b1110;
 4'b1100: led = 4'b1010;
 4'b1101: led = 4'b1011;
 4'b1110: led = 4'b1001;
 4'b1111: led = 4'b1000;
 endcase
 */

endmodule


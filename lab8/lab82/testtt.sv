`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 10/25/2024 12:18:08 AM
// Design Name: 
// Module Name: testtt
// Project Name: 
// Target Devices: 
// Tool Versions: 
// Description: 
// 
// Dependencies: 
// 
// Revision:
// Revision 0.01 - File Created
// Additional Comments:
// 
//////////////////////////////////////////////////////////////////////////////////


module testtt(

    );
    logic [7:0] dout3;
    logic [7:0] test;
    logic [7:0] gray_counter = 8'b10011011;
    assign test = {gray_counter[7],gray_counter[7:1]^gray_counter[6:0]};
    assign dout3[7] = gray_counter[7];
       assign         dout3[6] = gray_counter[7] ^ gray_counter[6];
       assign         dout3[5] = gray_counter[6] ^ gray_counter[5];
     assign           dout3[4] = gray_counter[5] ^ gray_counter[4];
       assign         dout3[3] = gray_counter[4] ^ gray_counter[3];
     assign           dout3[2] = gray_counter[3] ^ gray_counter[2];
     assign           dout3[1] = gray_counter[2] ^ gray_counter[1];
       assign         dout3[0] = gray_counter[1] ^ gray_counter[0];
endmodule

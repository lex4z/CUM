`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 09:55:53 PM
// Design Name: 
// Module Name: top
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


module top(
    input logic [15 : 0] A,
    input logic [15 : 0] B,
    output logic [31 : 0] P
    );
    localparam int CLK = 400;
    
    mult_gen_0 your_instance_name (
  .CLK(CLK),  // input wire CLK
  .A(A),      // input wire [15 : 0] A
  .B(B),      // input wire [15 : 0] B
  .P(P)      // output wire [31 : 0] P
  );
endmodule

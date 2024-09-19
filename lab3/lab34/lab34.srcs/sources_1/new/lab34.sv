`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 09:28:16 PM
// Design Name: 
// Module Name: lab34
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


module lab34(
    input logic [3 : 0] din0,
    input logic [3 : 0] din1,
    input logic [3 : 0] din2,
    input logic [3 : 0] din3,
    input logic [1 : 0] addr,
    output logic [3 : 0] an,
    output logic [6 : 0] seg
    );   
    logic [3 : 0] signal;
    
    always_comb
    
    case(addr)
    2'b00: signal = din0;
    2'b01: signal = din1;
    2'b10: signal = din2;
    2'b11: signal = din3;
    default: signal = 0;
    endcase
    
    lab24 seg_out(
    .sw (signal),
    .an (an),
    .seg (seg));
    
endmodule

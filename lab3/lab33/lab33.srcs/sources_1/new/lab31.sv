`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 07:57:31 PM
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


module lab31(
    input logic [3 : 0] din,
    input logic [1 : 0] addr,
    output logic dout
    );
    
    always_comb
    
    case (addr)
    2'b00: dout = din[0];
    2'b01: dout = din[1];
    2'b10: dout = din[2];
    2'b11: dout = din[3];
    
    endcase
    
    
endmodule

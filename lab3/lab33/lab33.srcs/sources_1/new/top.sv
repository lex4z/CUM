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


module lab33(
    input logic [3 : 0] din,
    input logic [1 : 0] addr1,
    input logic [1 : 0] addr2,
    output logic [3 : 0] dout
    );
    
    lab31 mut(
    .din (din),
    .addr (addr1),
    .dout (dout2));
    
    lab32 dut(
    .din (dout2),
    .addr (addr2),
    .dout (dout));
    
    
endmodule

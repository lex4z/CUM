`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 07:22:15 PM
// Design Name: 
// Module Name: tb
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


module tb();
    localparam int PERIOD = 80;
    
    logic [2 : 0] x1 = 3'b000;
    logic [2 : 0] x2 = 3'b000;
    logic [3 : 0] y = 4'b0000;
    
    always #(PERIOD/8) x1 = x1 + 1;
    always #(PERIOD) x2 = x2 + 1;

    lab41 testt(
    .x1 (x1),
    .x2 (x2),
    .y (y));
    
endmodule

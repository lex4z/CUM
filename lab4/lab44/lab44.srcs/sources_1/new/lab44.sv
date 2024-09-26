`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/26/2024 09:00:11 PM
// Design Name: 
// Module Name: lab44
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


module lab44(
    input logic [1 : 0] din0,
    input logic [1 : 0] din1,
    output logic [3 : 0] an,
    output logic [6 : 0] seg
    );
    logic [3 : 0] p;
    
    always_comb begin
    p = din0 * din1;
    end
    
    lab24 seg_out(
    .sw (p),
    .an (an),
    .seg (seg));
    
endmodule

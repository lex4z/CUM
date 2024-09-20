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


module lab32(
    input logic din,
    input logic [1 : 0] addr,
    output logic [3 : 0] dout
    );
    
    always_comb begin
    dout = 4'b0000;
    case (addr)
    2'b00: dout[0] = din;
    2'b01: dout[1] = din;
    2'b10: dout[2] = din;
    2'b11: dout[3] = din;
    default: dout = 0;
    
    endcase
    end
    
endmodule

`timescale 1ns / 1ps
//////////////////////////////////////////////////////////////////////////////////
// Company: 
// Engineer: 
// 
// Create Date: 09/19/2024 10:02:49 PM
// Design Name: 
// Module Name: test_bench
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


module test_bench();
    localparam int INPUT_PERIOD = 10;
    localparam int ADDR_PERIOD = 100;
    
    logic din = 1'b0;
    logic [1 : 0] addr = 2'b00;
    logic [3 : 0] dout;
    
    always # (INPUT_PERIOD/2) din = ~din;
    always # (ADDR_PERIOD/4) addr = addr + 1;
    
    lab32 dut(
    .din (din),
    .addr (addr),
    .dout (dout));
    
endmodule

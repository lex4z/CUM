`timescale 1ns / 1ps

module lab72(
    input logic clk,
    input logic write_enable,
    input logic [1 : 0] address,
    input logic [2 : 0] sw,
    output logic [2 : 0] led
    //,output logic [3:0] [0:2] ram_test 
    );
    logic [3:0] [0:2] ram  = '0;
    
    always_ff @(posedge clk) begin
        if(write_enable) ram[address] <= sw;
        led <= ram[address];
    end
    //assign ram_test = ram;
endmodule

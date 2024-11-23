`timescale 1ns / 1ps

module tb_lab72();
    logic clk = 1;
    logic write_enable = 0;
    logic [1 : 0] address;
    logic [2 : 0] din;
    logic [2 : 0] dout;
    logic [3:0] [0:2] test;
    
    logic t = 0;
    
    always #(5) clk = ~clk;
    always #(10) t = ~t;
    
    always_ff @(posedge clk) write_enable <= t;
    
    lab72 test72(
    .clk (clk),
    .address (address),
    .write_enable (write_enable),
    .sw (din),
    .led (dout),
    .ram_test (test));
    
    initial begin
        address = 2'b00;
        
        #40;
        //write_enable = 0;
        din = 3'b001;
        #20;
        //write_enable = 1;
        din = 3'b001;
        #20;
        
        address = 2'b01;
        
        //write_enable = 0;
        din = 3'b010;
        #20;
        //write_enable = 1;
        din = 3'b010;
        #20;
        
        address = 2'b10;
        
        //write_enable = 0;
        din = 3'b011;
        #20;
        //write_enable = 1;
        din = 3'b011;
        #20;
        
        address = 2'b11;
        
        //write_enable = 0;
        din = 3'b100;
        #20;
        //write_enable = 1;
        din = 3'b100;
        #20;
        
        $stop;
        
    end
    
endmodule

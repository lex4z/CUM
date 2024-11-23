`timescale 1ns / 1ps

module tb_lab74();
    localparam WIDTH = 32;
    localparam LENGTH = 16;
    localparam ADDRESS_WIDTH = $clog2(LENGTH);
    
    logic clk = 0;
    always #(5) clk = ~clk;
    
    logic [ADDRESS_WIDTH-1 : 0] address;
    logic [WIDTH-1 : 0] din;
    logic [WIDTH-1 : 0] dout;
    logic write_enable;
    
    lab74  #(.WIDTH (WIDTH),
             .LENGTH (LENGTH))
    test74 (
    .clk (clk),
    .din (din),
    .dout (dout),
    .write_enable (write_enable),
    .address (address));
    
    logic [3 : 0] address1 = 0;
    always_ff @(posedge clk) address1 <= address1 + 1;
    
    logic [15 : 0] din1 = 0;
    always_ff @(posedge clk) din1 <= din1 + 1;
    
    initial begin
        write_enable = 0;
        #200;
        write_enable = 1;
        #160;
        write_enable = 0;
    end
    
    assign din[31 : 13] = '0;
    assign din[12 : 0] = din1[12 : 0];
    assign address = address1;
endmodule

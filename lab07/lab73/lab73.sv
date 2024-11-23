`timescale 1ns / 1ps

module lab73(
    input logic clk,
    inout logic srst,
    output logic [3 : 0] led,
    output logic counter26
    );
    logic [3 : 0] rom [16] = {
        4'b0000,
        4'b0001,
        4'b0011,
        4'b0010,
        4'b0110,
        4'b0111,
        4'b0101,
        4'b0100,
        4'b1100,
        4'b1101,
        4'b1111,
        4'b1110,
        4'b1010,
        4'b1011,
        4'b1001,
        4'b1000
    };
    
    logic [26:0] counter = 0;

    always_ff @(posedge clk) begin
        if(srst) counter <= 27'b0;
        else counter <= counter + 1;
    end
    
    logic enable;
    logic counter26_delayed;

    always_ff @(posedge clk) counter26_delayed <= counter[26];

    assign enable = counter[26] * ~(counter26_delayed);
    
    
    logic [3 : 0] address = 0;

    always_ff @(posedge clk) begin
        if(srst) address <= 0;
        else if(enable) address <= address + 1;
    end
    
    assign led = rom[address];
    assign counter26 = counter[26];
    
endmodule

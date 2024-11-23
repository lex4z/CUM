`timescale 1ns / 1ps

module lab71 (
    input logic clk,
    input logic srst,
    output logic [7 : 0] led
    );
    logic [3 : 0] address = 0;
    logic [7 : 0] rom [0 : 15] = '{
        8'b00000000, 
        8'b00110000,
        8'b01011001,
        8'b01110101,
        
        8'b01111111,
        8'b01110101,
        8'b01011001,
        8'b00110000,
        
        8'b00000000,
        8'b11001111,
        8'b10100110,
        8'b10001010,
        
        8'b10000001,
        8'b10001010,
        8'b10100110,
        8'b11001111
    };
    
    always_ff @(posedge clk) begin
        if (srst) address <= 0;
        else address <= address + 1;
        led <= rom[address];
    end
    
    //assign led = rom[address];
endmodule

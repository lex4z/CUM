`timescale 1ns / 1ps

module lab63(
    input logic srst,
    input logic clk,
    input logic mode, //0 - up, 1 - down
    output logic [7 : 0] led
    );
    logic [29 : 0] counter = '0;
    
    always_ff @(posedge clk) begin
        if(srst) counter <= '0;
        else if(mode) counter <= counter - 1;
        else counter <= counter + 1;
    end
    
    assign led = counter [29 : 22];
endmodule

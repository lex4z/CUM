`timescale 1ns / 1ps

module lab61(
    input  logic         clk,
    input  logic         srst,
    output logic [7 : 0] led
    );

    logic [29 : 0] counter;

    always_ff @(posedge clk) begin
        if(srst) counter <= 30'b0;
        else counter <= counter + 1;
    end
    
    assign led = counter [29 : 22];
endmodule

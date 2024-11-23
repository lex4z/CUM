`timescale 1ns / 1ps

module lab64(
    input logic srst,
    input logic clk,
    output logic [7 : 0] led
    );
    logic [26 : 0] counter = '0;
    logic [7 : 0] shifter;
    logic counter26_delayed;
    logic en;

    always_ff @(posedge clk) begin
        if (srst) counter <= '0;
        else counter <= counter + 1;
    end
    
    always_ff @(posedge clk) counter26_delayed <= counter[26];
    
    assign en = counter[26] * (~counter26_delayed);
    
    always_ff @(posedge clk) begin
        if (srst) shifter <= 8'b00000001;
        else if (en) shifter <= {shifter[0], shifter[7:1]}; 
    end
    
    assign led = shifter;
    
endmodule

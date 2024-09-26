`timescale 1ns / 1ps

module lab43(
    input logic [3 : 0] din,
    output logic [7 : 0] led
    );
    always_comb begin
    led[3 : 0] = din;
    //led[7 : 4] = din << 2 + din >> 2;
    led[7 : 4] = {din[1:0], din[3:2]};
    
    end
endmodule

`timescale 1ns / 1ps

module lab93(
    input  logic                clk,
    input  logic signed [7 : 0] x1, //(1,8,4)    
    input  logic signed [7 : 0] x2, //(1,8,4)
    output logic        [7 : 0] dout  
    );
    logic signed [15 : 0] result; //(1,16,8)
    always_ff @(posedge clk) begin
        result = x1 * x2;
        
        if (result[14 : 11] == {4{result[15]}}) 
            dout = result[11 : 4] + result[3]; //если биты 14-11 одинаковы и равны знаковому, то переполнения нету
        else 
            dout = 8'h7F + result[15]; //если знаковый бит 1, то 7F = 01111111 -> 10000000
        
    end
endmodule
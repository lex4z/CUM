`timescale 1ns / 1ps

module lab93(
    input logic clk,
    input logic [7 : 0] x1, //(1,8,4)    
    input logic [7 : 0] x2, //(1,8,4)
    output logic [7 : 0] dout
   //,output logic [15 : 0] test  
    );
    logic signed [15 : 0] result; //(1,16,8)
    //assign test = result;
    always_ff @(posedge clk) begin
        result = $signed(x1) * $signed(x2);
        
        if(result[14:11]=={4{result[15]}}) dout = result[11:4]+result[3]; //esli biti 14-11 odinakovi i ravni znakovomu, to perepolneniya net
        else dout = 8'h7F + result[15]; //esli znakoviy bit 1, to 7F = 01111111 -> 10000000
        
    end
endmodule
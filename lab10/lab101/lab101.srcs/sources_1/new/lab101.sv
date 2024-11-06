`timescale 1ns / 1ps

module lab101(
    input logic clk,
    input logic [15 : 0] din,
    output logic [31 : 0] dout
    //,output logic [23:0] mantissa
    );
    
    logic [31:0] dout_delayed;
    logic [31:0] dout_double_delayed;
    logic [15:0] mantissa;
    logic [7:0] exponent;
    logic [31:0] float;
    
    always_ff @(posedge clk) begin
        dout <= dout_double_delayed;
        dout_double_delayed <= dout_delayed;
        dout_delayed <= float;
    end
    
    always_comb begin
        mantissa = ({16{din[15]}}^din)+din[15]; //if din[15] == 1 => din = ~din + 1
        if (din != 0) begin
        
            for(exponent = 8'd127 + 8'd15; mantissa[15] != 1'b1 ;exponent--)
                mantissa = mantissa << 1;
            
            float = {din[15],exponent,mantissa[14:0],8'b00000000};
        end else float = 32'b0;
    end
    
    
endmodule

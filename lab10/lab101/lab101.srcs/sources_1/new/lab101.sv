`timescale 1ns / 1ps

module lab101(
    input logic clk,
    input logic [15 : 0] din,
    output logic [31 : 0] dout
    );
    
    logic [31:0] dout_delayed;
    logic [31:0] dout_double_delayed;
    logic [15:0] mantissa;
    logic [7:0] exponent;
    logic [31:0] float;
    logic [3:0] shift;
    
    //задержка выхода на два такта
    always_ff @(posedge clk) begin
        dout <= dout_double_delayed;
        dout_double_delayed <= dout_delayed;
        dout_delayed <= float;
    end
    
    always_comb begin
        // взятие модуля исходного числа как мантиссы
        mantissa = ({16{din[15]}}^din) + din[15]; //if din[15] == 1 => din = ~din + 1

        if (din != 0) begin
            //счёт порядка. начальное значение 127 + 15, т.к. смещение -127 и кол-во бит 16-1
            //если старший бит не 1, то делается смещение влево, делается до первой 1 в старшем бите
            //for(exponent = 8'd127 + 8'd15; mantissa[15] != 1'b1 ;exponent--) mantissa = mantissa << 1;

            //нам нельзя использовать форы (на плате не будет работать)
            if (mantissa[15]) shift = 4'd0;
            else if (mantissa[14]) shift = 4'd1;
            else if (mantissa[13]) shift = 4'd2;
            else if (mantissa[12]) shift = 4'd3;
            else if (mantissa[11]) shift = 4'd4;
            else if (mantissa[10]) shift = 4'd5;
            else if (mantissa[9])  shift = 4'd6;
            else if (mantissa[8])  shift = 4'd7;
            else if (mantissa[7])  shift = 4'd8;
            else if (mantissa[6])  shift = 4'd9;
            else if (mantissa[5])  shift = 4'd10;
            else if (mantissa[4])  shift = 4'd11;
            else if (mantissa[3])  shift = 4'd12;
            else if (mantissa[2])  shift = 4'd13;
            else if (mantissa[1])  shift = 4'd14;
            else if (mantissa[0])  shift = 4'd15;

            exponent = 8'd127 + 8'd15 - {4'b0000,shift};
            mantissa = mantissa << shift;
            
            //формирование выхода знак, порядок, мантисса и незначащие нули чтобы заполнить все биты мантиссы
            float = {din[15],exponent,mantissa[14:0],8'b00000000};
        end else float = 32'b0; //выход задаётся 32 нулями если вход имеет значение 0 
    end
    
    
endmodule

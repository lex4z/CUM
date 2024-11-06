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
            for(exponent = 8'd127 + 8'd15; mantissa[15] != 1'b1 ;exponent--) 
                mantissa = mantissa << 1; 
            
            //формирование выхода знак, порядок, мантисса и незначащие нули чтобы заполнить все биты мантиссы
            float = {din[15],exponent,mantissa[14:0],8'b00000000};
        end else float = 32'b0; //выход задаётся 32 нулями если вход имеет значение 0 
    end
    
    
endmodule

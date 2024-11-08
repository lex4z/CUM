`timescale 1ns / 1ps

module lab102(
    input logic clk,
    input logic [31:0] din1,
    input logic [31:0] din2,
    output logic [31:0] dout
    );
    
    //logic [7:0] delta_exponent;
    logic dout_sign;
    logic din1_sign;
    logic din2_sign;
    
    logic [7:0] dout_exponent;
    logic [7:0] din1_exponent;
    logic [7:0] din2_exponent;

    logic [25:0] dout_mantissa; //26 бит, т.к. у сложения 24-х битных чисел результат 25 бит и знак
    logic [23:0] din1_mantissa;
    logic [23:0] din2_mantissa;
    
    
    always_comb begin
        //разбивка входных данных для удобства
        din1_sign = din1[31];
        din1_exponent = din1[30:23];
        din1_mantissa = {1'b1,din1[22:0]};
        
        din2_sign = din2[31];
        din2_exponent = din2[30:23];
        din2_mantissa = {1'b1,din2[22:0]};
        
        //чтобы не считать если одно из слагаемых 0
        if(din1 == 32'b0) dout = din2;
        if(din2 == 32'b0) dout = din1;
        
        if(din1_mantissa == din2_mantissa && din1_sign == ~din2_sign) dout = 32'b0;
        else if(din1_exponent && din2_exponent) begin
            //выравнивание мантисс
            if(din1_exponent > din2_exponent) begin
                din2_mantissa = din2_mantissa >> (din1_exponent - din2_exponent);
                dout_exponent = din1_exponent;
            end else if(din1_exponent < din2_exponent) begin
                din1_mantissa = din1_mantissa >> (din2_exponent - din1_exponent);
                dout_exponent = din2_exponent;
            end
            
            //сумма, от которой затем берется модуль (if)
            dout_mantissa = (din1_sign ? -din1_mantissa : din1_mantissa) + (din2_sign ? -din2_mantissa : din2_mantissa);
            dout_sign = dout_mantissa[25];
            if(dout_sign) dout_mantissa = (~dout_mantissa) + 1;
            
            //устранение переполнения
            if(dout_mantissa[24]) begin
                dout_mantissa = dout_mantissa >> 1;
                dout_exponent = dout_exponent + 1;
            end
            
            //неожиданная нормировка
            if(dout_mantissa[23] == 0) begin
                dout_mantissa = dout_mantissa << 1;
                dout_exponent = dout_exponent - 1;
            end
            //запись финального результата
            dout = {dout_sign,dout_exponent,dout_mantissa[22:0]};
       end 
    end
endmodule

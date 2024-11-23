`timescale 1ns / 1ps

module lab47(
    input logic [7 : 0] x,
    output logic [9 : 0] y
    );
    const logic [7:0] cnst = 8'b10110110;
    logic [17 : 0] temp;
    
    always_comb begin
        temp = x * cnst; //8 бит после запятой
        y = temp >> 6;   // 2 бита после зарятой
    end
    
endmodule

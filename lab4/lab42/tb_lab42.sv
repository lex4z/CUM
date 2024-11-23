`timescale 1ns / 1ps

module tb_lab42();
    logic signed [6 : 0] x;
    logic signed [7 : 0] y;
    
    lab42 test42(
        .din (x),
        .led (y)
    );
    
    initial begin
        x = 7'b0000001;
        #200;

        x = 7'b1000001;
        #200;

        x = 7'b1111101;
        #200;

        x = 7'b0001111;
        #200;

        x = 7'b1001111;
        #200;
        
        $stop;
    end
    
    
endmodule

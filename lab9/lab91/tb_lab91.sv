`timescale 1ns / 1ps

module tb_lab91();
    logic clk = 0;
    logic [15 : 0] x1;
    logic [15 : 0] x2;
    logic [20 : 0] dout;
    
    always #(5) clk = ~clk;
    
    lab91 test91(
        .clk  (clk),
        .x1   (x1),
        .x2   (x2[7 : 0]),
        .dout (dout)
    );
    
    initial begin
        x1 = 16'b0000000000000011;
        x2[7:0] = 8'b00000001;
        x2[15:8]={8{x2[7]}};
        #10;
        
        x1 = 16'b1111111111001111;
        x2[7:0] = 8'b11110011;
        x2[15:8]={8{x2[7]}};
        #10;
        
        x1 = 16'b0000000000000100;
        x2[7:0] = 8'b10011000;
        x2[15:8]={8{x2[7]}};
        #10;
        
        x1 = 16'b1111110111001111;
        x2[7:0] = 8'b01110001;
        x2[15:8]={8{x2[7]}};
        #10;
        
        $stop;
    end

endmodule

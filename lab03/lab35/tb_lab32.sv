`timescale 1ns / 1ps

module tb_lab32();

    localparam int INPUT_PERIOD = 10;
    localparam int ADDR_PERIOD = 100;
        
    logic         din  = 1'b0;
    logic [1 : 0] addr = 2'b00;
    logic [3 : 0] dout;
        
    always #(INPUT_PERIOD/2) din  = ~din;
    always #(ADDR_PERIOD/4)  addr = addr + 1;
        
    lab32 dut(
        .din (din),
        .addr (addr),
        .dout (dout)
    );
        
endmodule

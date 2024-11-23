`timescale 1ns / 1ps

module lab33(
    input  logic [3 : 0] din,
    input  logic [1 : 0] addr1,
    input  logic [1 : 0] addr2,
    output logic [3 : 0] dout
    );
    
    logic dut_in;
        
    lab31 mut(
        .din  (din),
        .addr (addr1),
        .dout (dut_in)
    );
        
    lab32 dut(
        .din  (dut_in),
        .addr (addr2),
        .dout (dout)
    );

endmodule

`timescale 1ns / 1ps

module lab113();
    logic clk = 0;
    logic rfd;
    logic srst;
    logic din_v;
    logic [15:0] din;
    logic [15:0] dout;
    
    always #(5) clk = ~clk;
    
    ReadFile #(
        .numOfBits(16),
        .file_name("/home/user/lab113/data2fpga.dat")
    ) tb_ReadFile (
        .clk(clk),
        .rfd(rfd),
        .rst(srst),
        .dv(din_v),
        .data(din)
    );
    
    lab111_main test111(
        .clk(clk),
        .din_v(din_v),
        .din(din),
        .dout(dout)
    );
    
    WriteFile_full #(
        .numOfBits(16),
        .file_name("/home/user/lab113/data_from_fpga.dat")
    ) tb_WriteFile_full (
        .clk(clk),
        .dv(din_v),
        .DataIn(dout),
        .sign(1)
    );
        
    initial begin
        rfd = 0;
        srst = 1;
        #100;
        
        rfd = 1;
        srst = 0;
        
    end 
endmodule

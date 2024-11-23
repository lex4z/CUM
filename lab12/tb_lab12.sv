`timescale 1ns / 1ps

module tb_lab12();
    localparam int partSumLength = 32;
    localparam int tapLineLength = 11;
    
    logic clk = 1;
    logic rfd;
    logic srst;
    logic din_v;
    logic signed [15:0] din = 0;
    logic signed [partSumLength-1:0] dout;
    
    
    //b11: 1 1 1 -1 -1 -1 1 -1 -1 1 -1 
    //  h: -1 1 -1 -1 1 -1 -1 -1 1 1 1
    //     1  0  1  1 0  1  1  1 0 0 0
    logic barker_coeffs [tapLineLength] = {
    1'b1,
    1'b0,
    1'b1,
    1'b1,
    1'b0,
    1'b1,
    1'b1,
    1'b1,
    1'b0,
    1'b0,
    1'b0
    };
    
    always #(5) clk = ~clk;
    
    ReadFile #(
        .numOfBits(16),
        .file_name("/home/user/lab12/data2fpga.dat")
    ) tb_ReadFile (
        .clk(clk),
        .rfd(rfd),
        .rst(srst),
        .dv(din_v),
        .data(din)
    );
    
    tapLine #(
        .partSumLength (partSumLength),
        .tapLineLength (tapLineLength)
    ) test_tapLine (
        .clk(clk),
        .sample(din),
        .sample_valid(din_v),
        .coeffs (barker_coeffs),
        .dout(dout)
    );
    
    WriteFile_full #(
        .numOfBits(partSumLength),
        .file_name("/home/user/lab12/data_from_fpga.dat")
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
        
        #1000000;
        $stop;
    end 

endmodule

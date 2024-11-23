`timescale 1ns / 1ps

module lab112 (
    input logic clk,
    input logic srst,
    input logic din_v,
    input logic [15:0] din,
    output logic [15:0] dout
    );
    logic [15 : 0] delay_line [128] = '{default:'0};
    
    //without reset
    
    always_ff @(posedge clk) if(din_v) delay_line <= {din,delay_line[0:126]};

    //with reset
    /*
    always_ff @(posedge clk) begin
        if(srst)
            delay_line = '{default: '0};
        else if(din_v)
            delay_line <= {din,delay_line[0:126]};
    end
    */
    
    assign dout = delay_line[127];
endmodule
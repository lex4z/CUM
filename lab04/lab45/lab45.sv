`timescale 1ns / 1ps

module lab45(
    input  logic         dir,
    input  logic [1 : 0] cmd,
    input  logic [5 : 0] din,
    output logic [5 : 0] dout_din,
    output logic [5 : 0] dout_shifted
    );

    assign dout_din = din;
    
    always_comb begin
        if(dir) begin //left
            case(cmd)
                2'b00: dout_shifted = din << 1;
                2'b01: dout_shifted = {din[4:0],1'b0};
                2'b10: dout_shifted = {din[4:0],din[5]}; //din << 1 + din >> 5
                default: dout_shifted = din;
            endcase
        end else begin
            case(cmd)   
                2'b00: dout_shifted = din >> 1;
                2'b01: dout_shifted = {din[5],din[5:1]};
                2'b10: dout_shifted = {din[0],din[5:1]};
                default: dout_shifted = din;
            endcase
        end
    end

endmodule

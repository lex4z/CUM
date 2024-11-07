`timescale 1ns / 1ps

module kitaipartiya(
    input logic clk,
    input logic [15:0] din,
    output logic [31:0] dout
);

    // Internal registers for pipelining
    logic [15:0] din1_reg1;
    logic [15:0] din1_reg2;
    logic [31:0] dout_reg;

    // Pipeline stage 1: Register input
    always_ff @(posedge clk) begin
        din1_reg1 <= din;
        din1_reg2 <= din1_reg1;
    end

    // Pipeline stage 2: Convert fixed-point to floating-point
    always_ff @(posedge clk) begin
        if (din1_reg2 == 16'b0) begin
            // Convert zero to positive zero in IEEE 754 format
            dout_reg <= 32'b0;
        end else begin
            // Convert fixed-point number to floating-point number
            // Here we assume the fixed-point number is in the format (1,16,0)
            // which means 1 sign bit, 16 integer bits, and 0 fractional bits.
            // The conversion logic will depend on the specific implementation
            // of the fixed-point to floating-point conversion algorithm.
            // For simplicity, we assume a direct conversion without handling
            // special cases like denormal numbers, infinities, or NaNs.

            // Extract sign, exponent, and mantissa
            logic sign;
            logic [7:0] exponent;
            logic [22:0] mantissa;

            sign = din1_reg2[15];
            if (din1_reg2[15]) begin
                // If the number is negative, take the two's complement
                din1_reg2 = ~din1_reg2 + 1;
            end

            // Calculate exponent and mantissa
            exponent = 8'd127 + 7; // 127 is the bias for single-precision IEEE 754
            mantissa = din1_reg2[14:0]; // 16-bit integer part

            // Combine sign, exponent, and mantissa to form the IEEE 754 single-precision float
            dout_reg <= {sign, exponent, mantissa};
        end
    end

    // Output the result with a delay of two clock cycles
    assign dout = dout_reg;

endmodule
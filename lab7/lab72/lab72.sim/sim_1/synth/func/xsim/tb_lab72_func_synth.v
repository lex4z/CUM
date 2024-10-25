// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Oct 17 22:33:16 2024
// Host        : 53c1755a8b55 running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -mode funcsim -nolib -force -file
//               /home/user/lab72/lab72.sim/sim_1/synth/func/xsim/tb_lab72_func_synth.v
// Design      : lab72
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module lab72
   (clk,
    write_enable,
    address,
    sw,
    led);
  input clk;
  input write_enable;
  input [1:0]address;
  input [2:0]sw;
  output [2:0]led;

  wire [1:0]address;
  wire [1:0]address_IBUF;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire [2:0]led;
  wire \led[0]_i_1_n_0 ;
  wire \led[1]_i_1_n_0 ;
  wire [1:0]led_OBUF;
  wire ram;
  wire \ram[0][0]_i_1_n_0 ;
  wire \ram[1][0]_i_1_n_0 ;
  wire \ram_reg_n_0_[0][0] ;
  wire \ram_reg_n_0_[0][1] ;
  wire \ram_reg_n_0_[1][0] ;
  wire \ram_reg_n_0_[1][1] ;
  wire \ram_reg_n_0_[2][0] ;
  wire \ram_reg_n_0_[2][1] ;
  wire [2:0]sw;
  wire [1:0]sw_IBUF;
  wire write_enable;
  wire write_enable_IBUF;

  IBUF \address_IBUF[0]_inst 
       (.I(address[0]),
        .O(address_IBUF[0]));
  IBUF \address_IBUF[1]_inst 
       (.I(address[1]),
        .O(address_IBUF[1]));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \led[0]_i_1 
       (.I0(\ram_reg_n_0_[2][1] ),
        .I1(\ram_reg_n_0_[0][1] ),
        .I2(address_IBUF[1]),
        .I3(address_IBUF[0]),
        .I4(\ram_reg_n_0_[1][1] ),
        .O(\led[0]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'h0FAC00AC)) 
    \led[1]_i_1 
       (.I0(\ram_reg_n_0_[2][0] ),
        .I1(\ram_reg_n_0_[0][0] ),
        .I2(address_IBUF[1]),
        .I3(address_IBUF[0]),
        .I4(\ram_reg_n_0_[1][0] ),
        .O(\led[1]_i_1_n_0 ));
  OBUF \led_OBUF[0]_inst 
       (.I(led_OBUF[0]),
        .O(led[0]));
  OBUF \led_OBUF[1]_inst 
       (.I(led_OBUF[1]),
        .O(led[1]));
  OBUF \led_OBUF[2]_inst 
       (.I(1'b0),
        .O(led[2]));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[0] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\led[0]_i_1_n_0 ),
        .Q(led_OBUF[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \led_reg[1] 
       (.C(clk_IBUF_BUFG),
        .CE(1'b1),
        .D(\led[1]_i_1_n_0 ),
        .Q(led_OBUF[1]),
        .R(1'b0));
  LUT3 #(
    .INIT(8'h02)) 
    \ram[0][0]_i_1 
       (.I0(write_enable_IBUF),
        .I1(address_IBUF[0]),
        .I2(address_IBUF[1]),
        .O(\ram[0][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ram[1][0]_i_1 
       (.I0(write_enable_IBUF),
        .I1(address_IBUF[1]),
        .I2(address_IBUF[0]),
        .O(\ram[1][0]_i_1_n_0 ));
  LUT3 #(
    .INIT(8'h20)) 
    \ram[2][0]_i_1 
       (.I0(write_enable_IBUF),
        .I1(address_IBUF[0]),
        .I2(address_IBUF[1]),
        .O(ram));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram[0][0]_i_1_n_0 ),
        .D(sw_IBUF[1]),
        .Q(\ram_reg_n_0_[0][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[0][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram[0][0]_i_1_n_0 ),
        .D(sw_IBUF[0]),
        .Q(\ram_reg_n_0_[0][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][0] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram[1][0]_i_1_n_0 ),
        .D(sw_IBUF[1]),
        .Q(\ram_reg_n_0_[1][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[1][1] 
       (.C(clk_IBUF_BUFG),
        .CE(\ram[1][0]_i_1_n_0 ),
        .D(sw_IBUF[0]),
        .Q(\ram_reg_n_0_[1][1] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][0] 
       (.C(clk_IBUF_BUFG),
        .CE(ram),
        .D(sw_IBUF[1]),
        .Q(\ram_reg_n_0_[2][0] ),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \ram_reg[2][1] 
       (.C(clk_IBUF_BUFG),
        .CE(ram),
        .D(sw_IBUF[0]),
        .Q(\ram_reg_n_0_[2][1] ),
        .R(1'b0));
  IBUF \sw_IBUF[0]_inst 
       (.I(sw[0]),
        .O(sw_IBUF[0]));
  IBUF \sw_IBUF[1]_inst 
       (.I(sw[1]),
        .O(sw_IBUF[1]));
  IBUF write_enable_IBUF_inst
       (.I(write_enable),
        .O(write_enable_IBUF));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

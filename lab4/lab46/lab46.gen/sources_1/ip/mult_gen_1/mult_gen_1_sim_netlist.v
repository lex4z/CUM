// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Sep 27 12:08:41 2024
// Host        : 836c62ae998d running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/lab46/lab46.gen/sources_1/ip/mult_gen_1/mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mult_gen_1
   (CLK,
    A,
    B,
    P);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF p_intf:b_intf:a_intf, ASSOCIATED_RESET sclr, ASSOCIATED_CLKEN ce, FREQ_HZ 10000000, FREQ_TOLERANCE_HZ 0, PHASE 0.0, INSERT_VIP 0" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 a_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME a_intf, LAYERED_METADATA undef" *) input [15:0]A;
  (* x_interface_info = "xilinx.com:signal:data:1.0 b_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME b_intf, LAYERED_METADATA undef" *) input [15:0]B;
  (* x_interface_info = "xilinx.com:signal:data:1.0 p_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME p_intf, LAYERED_METADATA undef" *) output [31:0]P;

  wire [15:0]A;
  wire [15:0]B;
  wire CLK;
  wire [31:0]P;
  wire [47:0]NLW_U0_PCASC_UNCONNECTED;
  wire [1:0]NLW_U0_ZERO_DETECT_UNCONNECTED;

  (* C_A_TYPE = "0" *) 
  (* C_A_WIDTH = "16" *) 
  (* C_B_TYPE = "0" *) 
  (* C_B_VALUE = "10000001" *) 
  (* C_B_WIDTH = "16" *) 
  (* C_CCM_IMP = "0" *) 
  (* C_CE_OVERRIDES_SCLR = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_ZERO_DETECT = "0" *) 
  (* C_LATENCY = "1" *) 
  (* C_MODEL_TYPE = "0" *) 
  (* C_MULT_TYPE = "1" *) 
  (* C_OPTIMIZE_GOAL = "1" *) 
  (* C_OUT_HIGH = "31" *) 
  (* C_OUT_LOW = "0" *) 
  (* C_ROUND_OUTPUT = "0" *) 
  (* C_ROUND_PT = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  (* is_du_within_envelope = "true" *) 
  mult_gen_1_mult_gen_v12_0_18 U0
       (.A(A),
        .B(B),
        .CE(1'b1),
        .CLK(CLK),
        .P(P),
        .PCASC(NLW_U0_PCASC_UNCONNECTED[47:0]),
        .SCLR(1'b0),
        .ZERO_DETECT(NLW_U0_ZERO_DETECT_UNCONNECTED[1:0]));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2023.1"
`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
KUaKzaiUy+PF6hJx6nRT61A3zj1MVbDVX6brdK11mV39kC05zIh1o5y1c5/Qs9BoLq9UL4RZ8k5f
PhBBUQzHHw+bW7ExufB5tahGiG/PbxoV1ksHXOIyYobGc92QVYyFdI0DCH3/mShH3dIPmGrdhxpS
TWsvdEw5yuZZvJEdWaA=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
GberH2b1XOkDbvTKGmSGGhU/Fy0asnk+Rz+wHciYmi1E54D3qLypHJqt74luk+uswRq5kgQw8X+V
SotRe37PYRcGPwUrz7oLVQf9h7jqBCfny6ubBFEZdHJzfKejbwONTKsoP0fV6pYvsomkz5oMp+l4
7C971VQbx8RU+E8SXuFEz9K8may1mWbEnMdOKSKWCH8RstMZfQulf4dWF6j66iYfBzMuegl2HemM
s0AHlQFWe9anszxR+LpTy691Xo08SJxLBok+RoZfe2SQGG9unFmFn3EqZdNeWWKErQbJJs8VRB26
bcTCAgiPskugXspU2E8SdZvk+xnvjtR4r4+6IQ==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
nHK/CVHR2PV0V8ZjGGHIFsN/exvygpUh8h066P7lahKCnmrPREwnWKld1lXHfh4kOhl28qi9/WDb
H3AL/4UXLmWER9kw80h5IBSw6yHNPQMv61FdqGBSfggqKYkHF3gC1FGSWA4zlii8NVPGXvlrs5RG
OgNKyncA6lM9KGVGDZM=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
l3xGeg9CwZgotBkJBFaQD5sGcp1L3pSFplSdYso7dOPw7sKIRmPxOpxGjvUbT4nBnndT7bFBhGhM
y00UOg4Oj96DGjm46YX+ESp4r0FqzCbB3uPWSHb4mYLvuZEqf++NWkODANxT+2VPhTkGVmkbR37r
xipajr8FHFniud+8ohnz/SWeVykaTY7nI04i4LH5W9/ThSzfBeNYJsRNAEFuWSz6oQ+ngpz8fUa2
PPtBXf5t/QWrb8a02bHWfIrv/8xUlcPYt5ujanJhaH8+GZq//GeaNk73C/azKONpxpHOVb7K6+vR
YfDqJ/5gMnSJFpzdS2Ki4l56QsAi5Kos8ZIpHQ==

`pragma protect key_keyowner="Real Intent", key_keyname="RI-RSA-KEY-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
bz6+PTye4yzmbPqUAt58ZSSfgUFWYJUsW7WngKOl6FaQSaWmYyC6+UIEHjSJ46zGL1UkzMt7ftmb
Ygk8nZuuAwL8nTa6WsUiytgyjJGgkuS6lExFU7HkO/x+OjPOdUmVv+6QqBy+lD75r5TQsCqVbEuT
nKmyuAMIbYwxTzgGv7c5ks73KdQLQ22LzNDfPNySaJ2ov9qHF7eY81s+viQTYWhYLX3ckIYiPhy8
OOxci4isH7SuQKkPrv4NQWN9h2tUwd1mlRegrgs/lPcaRP8OT2Gp9JoBYxzxLONHC9wc39Y3fflD
Qfxw+bjglr5xGvXc9p4fE3TvvB3ArSIHcxhQJQ==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2022_10", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
IGAOeTNlmlEi+iWEJt9fUt/wm7+7Jhp06DIfcj5iM98jb7dROg5DG5mDH149JCyvhlzB2pQGs4g8
owRbbHjJoRYB4sQkdq/PCfk5lDsJXgW7D86M/V5CAaHd5TUGynMgSlKAWkZWL3ING6cHLcoPiCQb
ybfmIXg0dFCkM/ygKawGu1K1Qp6Jn62yLc3yGyGcwJlBwAejUprLmkGWJLhKxSAaZiraIPLsUPHy
8+nj9+hjDomSqlXxrCaU/P3c+7QJ/mkXWkQ1TvTMJrpyyB3SkvGY16rf0gcS4edq0SXRhA0OuVum
UD2b8sdP6zrkXxJjOIGJFBtBC5FWBDJva+lAdg==

`pragma protect key_keyowner="Metrics Technologies Inc.", key_keyname="DSim", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
jJGb0fDk5wJq4PUkUAzmDXiu5nBx5xFPbQ8faDe0yxazQT3L4+3WMgo0SAG3mFDI4UXC7gx837fK
YBV37OMFtaQ/aVqti1/IXwqABxZCM5fd+YTDMuOJLvTv9oXXzTSrasGsOgExG5/pDDvhP/s8MQA+
Tw4xAaJa79xQmNVSvmWGyecwvlIEdT5hmHfecs82lPjJvtTcieProVnUMwcU8pRk3q2m5+5g7vYV
5bL5F7skGgy1dkt26i776w/BzljMXPUlShXC11Z3OHKdBIEnT5oB4NpGDTww5RGJLxywsbkCRMkk
XiYCWJgmeQjmHUZ1uIe0JqyxsvKV8asjI1YUUw==

`pragma protect key_keyowner="Atrenta", key_keyname="ATR-SG-RSA-1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=384)
`pragma protect key_block
N3JiRa6NhBC3KawTT6EPvyj//Pt745fGHnOBVgu+8uJp65V7lTVeR1v0adczGA4hegoxI6ymmmaZ
ZtFA4xF2jY3/Fzah91XS2SWiW2NqzYQrozAtG9FJ+HzgAkeX/Sy9GdDVrzgYcZW7oalsBuJ7sulr
+l3dc++GnFkq+IZfS4677VmmzQW4/ZASU9kNE9r2rIR0RN5jT9HWwCCxarCqTvQHnJRsbYG2725H
/RQC+pFpN3sLfE//Vu6pjC2g6LfYE34jpdeb8yN5GkU6ybRZqTOQLtEN8N304pGmRmBfAOWyl6VA
d8txy7ejPGaiu1Hwt+MVXJo4po7vVHRmpLvtP3CKLewHfCG+UykdYqrT8IdaxypDjxAk+puc9jsc
P69yR/HjjWoIBlQ5btY3+sKJe3SardsSOx/55XhjMfWhM6O1VkDGQ8R77WzL9/dP3N+n3zp3hI/K
Og4aveX1HAXDBbbGF89RNpZ4e4elDwDN8o7ZbTI1nZz4y+G7S1GzLg5X

`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="CDS_RSA_KEY_VER_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F47PXxCoL2GWTplpURu09s8RDF1DBSe6qbHV7iO4X3sgsSC775pbojdSvgqaCuFdgk0D/YZ9UvQQ
AShB+KYwaK+JndRHv8siGXzdvud0Ls+Ls96QKnnoo6Sp5vtX5UwZA+O5bT0kE31HrwGrw9W2y+CA
tdV1E9RQ4Wp6UaootE0aZNFZtDyocXcL0j8J0RbA5CGktFfcB5pNUEl99wvwJCE+PlTnakInMBhn
J8SxJ2OnAx1VKPi1Mr2boRa/S9QiM0I6EKmjgG+p6mbX2uDX56RyDgZ7RThkWmKSLTjV9ylE7v7l
irdRR1Yb+h6xiyssSQEg81ZGk0l2Tn0gTyPulA==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UNRuqs6UqppzaS45serwfVFGT40mLkJNAgH6ll8vlEPxXn36RxJ1/CYZ3qY5qmvW5ZucDG0Nqi0L
snt9ERCOnyUq3CG2y/kFmykjH0zFG10ZIt8TzsaJp09sbPx8LCqosabcaiXPchvF2v8V6jni2dD0
edvazdHLeVhEB3u+mAoA44sL2+9feNBtyo0/O4itHgzujFrgllf3DzN5eOu+41Ejws4PWH3WYoKJ
OV/kKumCaXwuQDs3k6i0fZ3ff4BsmcNIXPJ14/Z256u5n1XQNsCqjVxD15VvHCMkFa0yHsitF8/K
BAVzgVYTwihC1W15Ru0gN7Tw5ehaNxtMW7FAUg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
AxT8omp0igCIHxWQjhutZ88hOaZu1tk802mp6GIv9BYgUYsc1+3wladz2DZP2pL53TAnwZBkxU6c
c83N0kTgFEICQQiX3AKgSVpKL5WlDavW8gSl5uPp+Tx/kPvOd7trldV1qNrwodNALv86DAEVCWdx
Yp2wHJOBahBLreK5g3F2xDNPKzPpy36WLSKzMvlQgqu4/yKTS0QbEVy0SkzAy/uIShdq4hWnSGmP
gGMXRUQVH7iHKGUWHvqkn1HbrMtmTcooKUOyX49EGj5Kc0sl5Ff5fGdGoA+iU4+kCfywjKFNPXmB
F4NVcib2r3jGeJVn8I5PPardJ6JvOYD9tgbPcA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
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
ukWMZ8k=
`pragma protect end_protected
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

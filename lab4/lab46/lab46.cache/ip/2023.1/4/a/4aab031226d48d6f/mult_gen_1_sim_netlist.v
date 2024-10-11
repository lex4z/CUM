// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Fri Sep 27 12:08:38 2024
// Host        : 836c62ae998d running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_1_sim_netlist.v
// Design      : mult_gen_1
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_1,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
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
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_mult_gen_v12_0_18 U0
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
cLp9f/oy0UCi3Uir0NcIIra8gPAre6vgsBHUx94Ryna0yXNlH05KkKuSwbAFRAq/5U1X0e2bXdfY
egsby3Bs3SAKZkgxtjU/O1voIbMH60In5NjHFtzNw+e0vD9RA9QEXdfAJdXdNW3wXkl1zB8X+EMy
3NMK+z1ESnX2VE2kXQcUOP3473V6pEw5Oxo3SdGowojAqTjQypu5/GI5ku9MmUoqBhWBY0ml9h6G
zvmgAIc1xQ8ed2+bqXYR36t9A4YAIx8X0B119zr4FE46RweQADaJbuPSclhFDFb3CSef6F5u0ie3
XyTWVj6VSBRi98HQTCZ1konqhrWV3wchVhn4ZA==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Mz8oWVU5bmkqjmncoAjhswZFA6kaqY1ZqNq2SVrHN3kupOQkkfuahO9gf7iIg2nJoyDGtCasw1CE
qNUfGfDKbaiXpHVVJRIVDS3kX3bZUarSVmhUuP5N4XuzYXn+hiPKsxlS9DJOxL0aDq8zctkjm/zr
0yy2bwFEonj4W61l7UrutYDT45/CD1+4iTApg/whGeKvgtq2TKLmVLd+/GTe9nu6zfLERdSNIub+
bthBT2dIMtOKDUxDuD/GPJ2k1oWUkbjOHrrD4qlxWY9NVtrp6Jph1qgpK0aWl0QCaGYaNjQDYBSU
+kn1V5U/jiDavIezn6bJ+lhuHVtXk9lypGknzA==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11168)
`pragma protect data_block
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
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

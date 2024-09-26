// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Sep 26 22:04:55 2024
// Host        : 2ff8f80f96ce running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim
//               /home/user/lab46_2/lab46_2.gen/sources_1/ip/mult_gen_0/mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2023.1" *) 
(* NotValidForBitStream *)
module mult_gen_0
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
  mult_gen_0_mult_gen_v12_0_18 U0
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
UL+GV+2I1LrMq4eBXRrMWxvNcpObSx5Inka3GP4gt3sNKtSSjyBG1VJNCyNkGYVp/+pZUo+wxCem
/Xlb79QhzFxhiwszreZ4Jo3zRdanAuOlDa3tDX/XhVB6SywIY1KwGsEefIjN80OvfYp+lhKp92Ju
uEF/0xoGq7yQUjCAmK1vLZaSrCPEhd/2v1TKiUGyLAu2MB3xZXF7VQ6JUMGRERbNJuR6XlD/Af+X
SSuxvK7ULBNld6TmF+2XCo83AcPifIXzgboGVDgDeI14hJhct6MNCWMaUIJYzHrdVm0+YnP/LJA/
Wphu03HDVgIrKvIArNRXk/pidctzUfxdAMI3/A==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
54U8zp8p3PInPUMaDUmxCKqhUaFdj32Ovt7PteUeRrh99AZ72nT587NHla4mrUq9xTLX+UEoDLdF
F8gYmB7FkXTpcON9FWobnehdm6IbWWFeDYN5Nx/Wo5elqsgKyvpk4KzbmVLJ/CdZ8Pq1KAttA9wQ
VchV5hbDu9+mol0xgjgR+hvCAgfGd9v6TScl6uzwvh5FT+odCTPGSDM5U/o2kzhaG3zVJBc9kcBT
c01/R5zX08CNHZMw9YHkPPumLkZM4ypDFXlLk0y2sXzaJLqLEhL1hgUIy+efjeyTk4PymdI+Qdr2
hZr+vQDeq7wj+5t7t1SODIDoAC/AuVhOR0Sicw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 11120)
`pragma protect data_block
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
AxOI5f0=
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

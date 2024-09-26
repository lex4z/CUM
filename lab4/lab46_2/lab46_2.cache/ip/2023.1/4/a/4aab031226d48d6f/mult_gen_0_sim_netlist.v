// Copyright 1986-2022 Xilinx, Inc. All Rights Reserved.
// Copyright 2022-2023 Advanced Micro Devices, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2023.1 (lin64) Build 3865809 Sun May  7 15:04:56 MDT 2023
// Date        : Thu Sep 26 22:04:52 2024
// Host        : 2ff8f80f96ce running 64-bit Ubuntu 22.04.5 LTS
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ mult_gen_0_sim_netlist.v
// Design      : mult_gen_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "mult_gen_0,mult_gen_v12_0_18,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "mult_gen_v12_0_18,Vivado 2023.1" *) 
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
n4q+07Hh28oFswTO449jk+bzx4kxXMYE6E34DjJjckuZcwP92wB2IsrtapUd9u1b28y4fr2OsudU
dqV35ih1GzGGUe3t8xhvNyH9y88fIjZNWVp5UcXKbUiaW/s0WAZLuxobzjlvn+AB7xX/EPpvf9MF
Oztm3hm6lSOhtRIn6d209h4yKnHj8jm6WEXpoFOgDba8/6nnVOqDPowoIL/v8C6BMa48I90fzzS7
xrbhDfKehiBObMy1WWCF/qWvc/tYN+VUbU0av/zriqS4kHYSmaPdvk6OO8ylPZ6TNDplmFUuddeC
3LOT2l6o8x3tqVygizAtJK+PVPbs50+gWdeTmg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
kHI4Ejyy6WbvSh+xAuw6IVgvyldife9N9a2VHMRfh2Ck5kLCvUKGt3BaGyIbu0uGnJZL+oWmL7oV
347xdbOJpry49W1MAO3UFuOZsc8vs+9IV/lwMgugYgQruoNDh1UgFRrUSKF1FNyDvrNYMp1Uv++X
Qoz4wH16LFbZGvrXnmnROdgm4GYUincFebTbKZMioJjLwFMX+n1Qb4I3jkvGMtJz8CwO9sWcDkzK
FiW4I9vlKuIfIfomIQ8xd29errR9heAZaxflSIlGM2S9NtG9UuUAf++jy1xDgoTGYlZ9eoJE5iuv
C8JYqpZ4Vfd+X+DnvLpVFb/FH6zZPk1M6W31CQ==

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

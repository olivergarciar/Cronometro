// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Dec 17 12:41:53 2018
// Host        : MSI-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
//               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix
   (CLK,
    UP,
    LOAD,
    L,
    Q);
  (* x_interface_info = "xilinx.com:signal:clock:1.0 clk_intf CLK" *) (* x_interface_parameter = "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000" *) input CLK;
  (* x_interface_info = "xilinx.com:signal:data:1.0 up_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef" *) input UP;
  (* x_interface_info = "xilinx.com:signal:data:1.0 load_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef" *) input LOAD;
  (* x_interface_info = "xilinx.com:signal:data:1.0 l_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef" *) input [3:0]L;
  (* x_interface_info = "xilinx.com:signal:data:1.0 q_intf DATA" *) (* x_interface_parameter = "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef" *) output [3:0]Q;

  wire CLK;
  wire [3:0]L;
  wire LOAD;
  wire [3:0]Q;
  wire UP;
  wire NLW_U0_THRESH0_UNCONNECTED;

  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 U0
       (.CE(1'b1),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_U0_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule

(* C_AINIT_VAL = "0" *) (* C_CE_OVERRIDES_SYNC = "0" *) (* C_COUNT_BY = "1" *) 
(* C_COUNT_MODE = "2" *) (* C_COUNT_TO = "1" *) (* C_FB_LATENCY = "0" *) 
(* C_HAS_CE = "0" *) (* C_HAS_LOAD = "1" *) (* C_HAS_SCLR = "0" *) 
(* C_HAS_SINIT = "0" *) (* C_HAS_SSET = "0" *) (* C_HAS_THRESH0 = "0" *) 
(* C_IMPLEMENTATION = "0" *) (* C_LATENCY = "1" *) (* C_LOAD_LOW = "0" *) 
(* C_RESTRICT_COUNT = "0" *) (* C_SCLR_OVERRIDES_SSET = "1" *) (* C_SINIT_VAL = "0" *) 
(* C_THRESH0_VALUE = "1" *) (* C_VERBOSITY = "0" *) (* C_WIDTH = "4" *) 
(* C_XDEVICEFAMILY = "artix7" *) (* downgradeipidentifiedwarnings = "yes" *) 
module decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
   (CLK,
    CE,
    SCLR,
    SSET,
    SINIT,
    UP,
    LOAD,
    L,
    THRESH0,
    Q);
  input CLK;
  input CE;
  input SCLR;
  input SSET;
  input SINIT;
  input UP;
  input LOAD;
  input [3:0]L;
  output THRESH0;
  output [3:0]Q;

  wire \<const1> ;
  wire CLK;
  wire [3:0]L;
  wire LOAD;
  wire [3:0]Q;
  wire UP;
  wire NLW_i_synth_THRESH0_UNCONNECTED;

  assign THRESH0 = \<const1> ;
  VCC VCC
       (.P(\<const1> ));
  (* C_AINIT_VAL = "0" *) 
  (* C_CE_OVERRIDES_SYNC = "0" *) 
  (* C_FB_LATENCY = "0" *) 
  (* C_HAS_CE = "0" *) 
  (* C_HAS_SCLR = "0" *) 
  (* C_HAS_SINIT = "0" *) 
  (* C_HAS_SSET = "0" *) 
  (* C_IMPLEMENTATION = "0" *) 
  (* C_SCLR_OVERRIDES_SSET = "1" *) 
  (* C_SINIT_VAL = "0" *) 
  (* C_VERBOSITY = "0" *) 
  (* C_WIDTH = "4" *) 
  (* C_XDEVICEFAMILY = "artix7" *) 
  (* c_count_by = "1" *) 
  (* c_count_mode = "2" *) 
  (* c_count_to = "1" *) 
  (* c_has_load = "1" *) 
  (* c_has_thresh0 = "0" *) 
  (* c_latency = "1" *) 
  (* c_load_low = "0" *) 
  (* c_restrict_count = "0" *) 
  (* c_thresh0_value = "1" *) 
  (* downgradeipidentifiedwarnings = "yes" *) 
  decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv i_synth
       (.CE(1'b0),
        .CLK(CLK),
        .L(L),
        .LOAD(LOAD),
        .Q(Q),
        .SCLR(1'b0),
        .SINIT(1'b0),
        .SSET(1'b0),
        .THRESH0(NLW_i_synth_THRESH0_UNCONNECTED),
        .UP(UP));
endmodule
`pragma protect begin_protected
`pragma protect version = 1
`pragma protect encrypt_agent = "XILINX"
`pragma protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`pragma protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`pragma protect key_block
RhedCTftnR/lFLJouqVu00X8CC4TkDlMiW/WeWJSYDyQHVO1xW1z9+hmgAziXI4s3uGElBs9cXRS
4yVMV7QH0w==

`pragma protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
qX90FYlZfOA3sZpcv0rrvWRKCSlr3skWpeAe5OSxHcZPsVQFyY0hhWVDtP/vB+dV9hIUwAN29Fn9
+L9OEXYMlIw5gH6s9NmquAs3lmPRLTrrpKJWdvf6+b+LeG9CPwLz87bXAk4qQW80zUHBaDKDLV3q
pd/gEf8Y3st+mLOGjNU=

`pragma protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
chpH3Rj5RAirYZHkpJvTu4EJpydPPSy15v646y2lN/1w3bwHI+M8EpLMBjimx8uIWRJZ6dDWPR8E
zkwK1TMroEKFaL8IkFMSHPyzqbrH9l1jxYFs0ee8Itp8Rg8qenv5RXM+h4JRTtRmzHk1A8s8zeKY
MgXzIBCAzBa/vSgzDuDaUnO8r8f/5KtRjmE28JLNXXAxyijBrMTCiIHMRJZL5/+LgUyVq7/Zr5yx
7kuNGWv7Q0wESEqhsQbK6UNel5ak1cor7647dYJgIxnNZ6jGVJPkqi8ydAIZ0z0Dy4txBvVaMyP6
2kYYnbVN6S6q6yr/QcJHEOgefF59B/8JuWzdoQ==

`pragma protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
Z2XauOF3/9FUIv1kEFfEtdy93+zHY5q9dH1pJCNLytoWWhhJBfCI5Uc2w/fQLrvVw2Ivy0/rs9qH
9fomTNECWeCphNDVpWGNcFDGE51jt6SDWt7FmgfZq4iXN7XWrfmkQa4DB7QbtSBHCMcBT53TKbDH
suKNhAWMV0htWeNEgN4Y0biiz8U4RLT1stdsMMtEzfYVhtrTmFWLihJ/9gJ01pm/kv4OB2cJEslg
sjbxCE2B4Y1uSj93tnBAw4/f2RYGfPcSrkaXkNgOYK2dc5NQgd82XvP8siAK/ETcZQ1lBK367Rxv
nlr6QUMwKALmjLVe/IThpCRGbOSy3QykkwnpHw==

`pragma protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
F/mF2RV90mf5PFUZZUjMej6jQS+Qx16uCeiDQxUX+H+O2yjP6UECegDbtLmGk9algbDuGBCE0KgZ
HzSxX5pMwDq1J7nFyBsu1dGyu8NeJxfu0fFA/qS/SYJSTtwnZ/eIj09mNLJ3w8wGR87ke1ETTRpx
4Ni9DzGJ/aaWFaUenL/x4UWS9yqlaNi5Utcpa4kcUHC6fW0asZsThZJBqpArO54TF40nxZAD+V82
6mBGFOKUzgmHqXNsbVif4JqUd63LG8YWxjrOeesq61xzyjw9caQMuA9v/5sQslCFaeSt2atgqyaA
y4mcm0kU60s6mYqJr4KZt8DWG7LPGoIjhjpnMg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`pragma protect key_block
YNrNxIZl8p2OCPz+4Y4awQ09ZZ41X8EdKu2SX1gXfB3qoV3EOXf4eFHtYJ+bFIccfEIqPfZ+dnr7
udcSDAJMcxqZe+YNk5hTq+uX4PlnQH/IVlkgyYiDhQ7aRIS5pwtIRC3biXn80933ov4zlWLI+ZBq
bG8lodZjxKh6HZPWi7s=

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
eWToRZf4bzAQhHTj44yEkOqolJ3BOvlBPKnKoDCpSvCHSrnRcJKgOd47PnboABTqLVstQenz8AFe
rWHBbaad7KOIh3LsEXBwDHKDdby7iDAB5nd3j2Wp7qiHOv7WpIJ5RG1GMQa8+QXHMVaV4jSvsdmt
d0D9H0WEVaqrSFW2ucpsMYNE0LnKcSJ1SejKOcgISzaGJgXcmEAOVAOnCDPc4slwc3dt7Jne1KvY
i66An36Mfhhd1b0RikMf4yqpM+uVrL5XWIP+TBtw3iQRE0ZkUSn3K0My73/2vKKBfwyV0c+M/Il+
aMxNaD44Gq+/f6zGjkelgMEI4BjB5rs1KRvSCg==

`pragma protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
XuNSaqm6LAMYZUa0xT9/mg/kJE+Ld1CUGQfTPmxeLln7GmPpXzJz1HizwvyZ+4FoTFfQfDD8o8TB
z2clTIsMZfr3AY3uGVU5ZpoBE/jnW9Mxd6m7D7Hl9U9iXdiYWRP0yvjzIeF5tKBUQyWc0iwNP0/T
XTxEcAX9IJ3fgQ3cMKwHCJHzwjrjsn7kQVF3oPzLX0NS4loRWk9rZLdiNlFZp/7MIn+dWw1rMWPW
G2wVH1CUq5dUpqkq6VsXq9jXXbQiFYoSt57BqXCznGnchOQmqrLnkADUiFA5W1huOLHHdTwUp/o0
7v7BfY5LaOtTSxezVze10pMWdKKqxC3pUqZfbg==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
P8/+Dq1DVJK4bPTvcpwmEqa7a6iwfOCkbiOxSo5fTbUtaJqhjbhSd9ZKeaPRxmGSKVgz6V13j9iE
1EZ0z2r5xixVNl3jPuZ6eFbawSIkW4bfUt+8c6DQurgUqKo3wykrfYOAVoGEe904qbia7FOuzokM
KFs+n7ngN8VTqBUq47wAkQk20xxE7we4S4eH4xWXwzHpnrqb2rMqYHAvsGVVyqSxMeBVzgGyIkSV
Lj9SMgxr4T+WwZho/ETmCP+s4M8f+K3JYBF3Mnaws4OqZ6YD4uhsosCWdCMoPFkwgOdEvY1qW+/Q
0NO4y8k4WgA61U4P+vlPAYFZknLQSzeuJZCYkQ==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7776)
`pragma protect data_block
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
eBcSvULAHC5l6MDnBsot8n+h3/PBpHqp
`pragma protect end_protected
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
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

endmodule
`endif

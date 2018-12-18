// Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
// Date        : Mon Dec 17 12:41:54 2018
// Host        : MSI-PC running 64-bit major release  (build 9200)
// Command     : write_verilog -force -mode funcsim
//               c:/Users/Oliver/Documents/GitHub/Cronometro/Cronometro.srcs/sources_1/ip/c_counter_binary_0/c_counter_binary_0_sim_netlist.v
// Design      : c_counter_binary_0
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a100tcsg324-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* CHECK_LICENSE_TYPE = "c_counter_binary_0,c_counter_binary_v12_0_12,{}" *) (* downgradeipidentifiedwarnings = "yes" *) (* x_core_info = "c_counter_binary_v12_0_12,Vivado 2018.2" *) 
(* NotValidForBitStream *)
module c_counter_binary_0
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
  c_counter_binary_0_c_counter_binary_v12_0_12 U0
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
(* C_XDEVICEFAMILY = "artix7" *) (* ORIG_REF_NAME = "c_counter_binary_v12_0_12" *) (* downgradeipidentifiedwarnings = "yes" *) 
module c_counter_binary_0_c_counter_binary_v12_0_12
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
  c_counter_binary_0_c_counter_binary_v12_0_12_viv i_synth
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
izubJCeSC/60XgbZk2VKzYiSFSa4fJPPndpDV2+UgXrrby70no/ia0CRdDjoN/jyv0N/brUKxsKz
qEDWjtb02B28svLk22FB2gsUyLTgsqfzVt2SbtZxiKuS6SRClA+TI+i2gf36ijCTqWEZs6R2Uuf5
0D8Kyb9UrMTjeGUOUJd3lnXx0ydIdJdyc9b9wKyKAL9hqW6r0OuwQ3PvD57+UVbSqgfqttgJikXD
AzFgXY8a0DjlUosAfxPqlTTYWFARqakUsvMAY75yIH0XqqSJpkIHHgSnrtH2Zs1Hq3iXkTTVKzWh
z6VodOYzNItKA+Y+cFMGXUCZ+Wss/VUeIxmmaw==

`pragma protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`pragma protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`pragma protect key_block
UB5kh8mfAtH4g6Az9GWQqag78W0/4Q0nsWQf3ZX9FVjeGzUmyO5FJKjujg34h6cgk6aQD3q+r/3z
QLFSjMCz7mnmnKYtXLnmXkgSkam7ywL7CCGZkgsgSe3GGh0e0IbIqhY0O+osnAmfrrbY7RUWazc5
83r5mut00TmOb83SPaZ3r/w0ul9hRisU5xrEu3MJCJnKm3sx2Nz3nCfgKL7dkLTJ0UwQxRpMapnA
gys/50flRTJC9F0xWeZRYFtZtP+fcySNTxUma9H2++XZ0olZWwVBkGIXb9J6wPqxwrLMsrK4nc4n
RXBjVBWXuoSSp6pi+leHMmU6F1vjyl61KN6/rw==

`pragma protect data_method = "AES128-CBC"
`pragma protect encoding = (enctype = "BASE64", line_length = 76, bytes = 7856)
`pragma protect data_block
lB5/vOHdbPDy6gV+G5ywm0OglT5alP7Lip6xrr8OQekoNKq8yuSnRweZCfadqEPMIW5GbBQ+VdlF
eFeyVBH+64hR0aQCCaQLvSbpI4c+Sgxzh5cP9rGADI9EaziTkrpcg1cjmpbf+kV2l6fubKJzxLG/
OmJoItemJmE9TzPtRIMpPbc90Hb7W3Xtag9czKcWQ1AXcHYJIojmBvVdLkRtHfa+tRQ9pTHHtGBL
UkETPg9ssfN9DZxrgrGhnGmBy3T7wLqoZ7XIo3uB1KMnOcO/a/z2YBKcoP4pFXvT2nS8X6oLM5Iq
Yd0RjhGtWGdNnvouEf8A0u2oUqXFmV2XvcXjOE4QSQfuxKBAmoxmcSdrqNqOlkBQvA9PkzYtapQV
E3v/R+80G3eUBHovKVGJK37fU+efhJLa2+OahuiRePJfpccSkwBmLP4I9G9xeBvEjcdIyavP7LWw
kYk0tEd0v7IICukeRWhMAkjDOp/L8raBTi7445otdJJGjQcGHcqEgIq3c5G618emcA1Bt+lMdWuD
W7ajFT+zfvsHfRpxEAsmotG1tx7JkM2vBjUuR0F2iyeZeri67dXFt5eeCCBp1Wbyk1kh0ninxqv4
Rv/QcLdWd1gVG3sENbTOtcmnztfW3NycUdfpVWGUi5gUDS7v5a24mLfSyV1ZMwc45tfjworDs04g
qvNHhWElchcBmORVbC+d91t3E6sMKvvM/wf5tW62XY8QYf2jG64IhTwNnh1AimWIo8OOk8Ozgm+x
DVz/u5wO8sq1tfSyo9Xo5kd7+Wcu7una2OK1xL6+48eCgtWNMpLctN209lZ/RGHZHkZUJO2fJ6lc
VeA6i6Q4M0NfkxN4GMvDJbkM2VmYUf3StnKaR8+0x2sMYGJbDrJgv9y/F/zTUJgrskoe9j+R/+nR
tgm87Dwa2DKTl0WWJypqkVTGINh1ZNIi3VcnfaIyvxzaI03KFFWkrqHfhdApr2tv9FYwS4XaeJSO
q6IFIHWA9cOv+3EHV7hOPkx7P0QyJBqGXNsG79M0CbffAPGUVD4yI0lK0NrUZnjUm1EctkMPjzEt
rwf+sDCKO/kjMeXEnA4lKfAFDhBzdYZ5hVcxM6b1r+QVeIqqUL6FyBbYafD+EoWIhykjYMx5tSOg
zoBJPVmnKuMW3Q53/kGwA2lguLHAnIxojz8fR9teCMxxgJPkIPZSIfLAbkTCf2xyUfVz/ZG243Fn
2Q6sMDjLj1MEqOZ82FB5Wr6KaJ72jefuG62AtoIyzRJr8NreJdxxC19cMmAqlY/3mkS7tulSLc8H
jNFpteOGTvK2DLrJkgXYm7K7pmy/Zmz+20YnilhiMi9ZFW4Jj+7rYd03Ypdso06yLcmuInNzu2pg
2DjLeLejWwKqMhEKeiib3sfLWX1qdxh1iO5dYC/CREFcAi0ZzAX8mhDKOl7m1k2zeRAbPK3pSJ6q
ZvamzUbtZDitKsi8TS1jO/ibgP1aC25JRwTb2cVNhJIpOiDkg+rIV5w5sLv6Z3mcAgKlbGYpOtRs
B+Jf1X4hVfTfn+Xsvryel5xtShPdz3IfOZa37t+Go4KPGQ/0J111N3CWEVN8Nc+V93fH4slhHfeh
UBuHW3ykIn36/DfsZrBVUGH3uJnxmgp10qmLLi+xVDazE1XJsOJMQTnu2tNUGU3ybmej9t//rhdx
yyW+GYcxiI8mDQETbpss6KoeLCthI/I9gE+YKZ0AnS7PvlBT8hnF4uwLtaT1ED1+jUDbxPdar5IK
8nl/1CsQegDuGCoNBYx0R4Vb1Dv4cJtB8Wxr0rqDUpz3mhgpIjNGsVXc6VMbT9LqJmTdky+FELvR
DCltvcewoU9IaG96/jiCfAHb4FXTA1U8H/UvSVLeQZrexDZHC1DlXnuOW98E02i9GkvZhpnx/SUP
glzTj5JGxuAX0TH/pxFKTnjiUX8uAxmduaIJJXmrjpSWMqSqvF8vnaaAHcM35PApcuy/Pf3msQVM
byEanBMfDXnOFh328bQ8rQQvj8MI0AlRKGxwUQXvHOWA/EdnHEI5BsRw3IW03FtoqzTP7opaQqgS
pVn6xmJFqI/zGvOkzt71hmwBzsKJQIw/zE1Yn0sAkN8W5hrSK2IIdsyJwZ1KnI8jAiOq8Otg0CiT
/VjooWOLqELtihHsm/qhs8GkxTTuz49wQOxjCqI1woqAy7UT1/E+FRTViIgjGLir6qblOARp2+uk
S7728TU6gt3rNVnXA0uGqhLhKU2x54A1yVD/c2bSQunV/cv2avzB1shrZWdaFw9DHWPpzMH8giSa
4y0fkHZ8L6qLzjs9dMhkWlu7+pEsRuNG8pBWLslRgExI2UEudLNG9akaSIZFHs3WHEzGaeiqReyS
8pCcOEmiLfqRGRqtN/iUGoTkdUSnnzI6SHyh7Bygg0tXElCXvZ2gnJYtGAUURUlx57Ld8V1+drg8
wUDI0ghe/rA4MX9lrp/HhKdogum3SZMu79g3oGqTItb3bnG/zb+0UQScJgwaFsarpmIGQ3rSoYmb
wiv8aRGm94watHWYmXFHK7B94OVaMUNTJlRB0GMjrQjJj93GZHLyaaBFe5beLknaALmMf6fDD9Ua
Atn5/FVMBwo/UwRCiiD+KilqdX6A++tBVqEf74KsJblFwv5I4U2MCJWT1ebiybBvIkSWYljTRIuN
dfALgCIw2TZnvsSY7Oecbtd75ANnF91bI8kcDksB9queVKk2N/GdF0tBuf6WwGK5ZpE/sYaN8Gbb
Yr/v7wEo27M8g7atSjo9QNDnPQYpz88+wdzXf/dEetTDQcZpVChGMlLA8yKIvwgAZzgnbrWRHlAa
HimTwEqzygd7YQnBOtOY3j1YYZaeivRrazR9LAZ3rgYf4co2PB1mDceC7lAFR5GIwuG2ZzQC3hM0
Q08xLwUBkO1Ypd5QvbpHgstWfixfoEaQLgiGVi0MxzorwulMhK1M4cKwmSWDx2L/cKsoBiEv06bX
rIHR+wyCFYJ+Ah89Y1mjFGfGOGpDz21ziCaTP8u06Dp8LlicrvCEF+v8ZSWyrBsygXrrgtKbxnu4
fuzTeKS83FtnAlcRzypJL8BQlHuJ5TI+ekLswUI+grlYfTlTmaNykvSvz3NBovKVhZbL/gOjz6yW
hEiOqpM5PNBXS+K3Sr8UZjRmDuJEI8Iz26R7Q/kVyonKNMG27ZuGHh2HFlW83JqRsnOahHx6T45o
OwDUme7GhYwR0HsSjjl/VrFvOLMPm0fdJXFjmISnwqN5EHQGSZnPP0P1zT0t7j94ueouNsZH9kRa
beB2zmfOeSxgoNIPkmAdfASSvyLW4SmcS3y58uk9d+5CY60R7a/vs9iz49IfTJNCNjNkkLPQ/Cwa
YMgFM5te6bQM9tSqIPbDlzcTGLO0Y2wjaikQ2/Dhdpsc8WP1RyRmAw/wSXc7xlm6ufWLcv2RySOM
WslfnUs8RZ9DLLVAkGopipoVqZI+y/K2F6cmRLl2vLKK41FZRpnqOiOz0VbFF7EOg4ZreLL+c4SD
8yZNmUWzu0rxoBr5GZ+8SqWguc72Ts55ssMqUnmDfP4zX4SE0R+dDbQhuHWv4wysYFNFqYF/PUNU
+3u4q9DUC0JA8mnRwnjvWhY6w0fmgduzoaCplLMCy4pI3dtzLYoxW3mCCk2dcY3yec0Dq86WQo44
S9P8medDSg2v9hFiQDOg2+BVMD0gy4ru46Bsufg/kHo7RySNDWq1g9W1DpTkaB+wI1AdtZ5xd2XQ
2G1/vxjBkRFUdycGPUOVHdIeX5XVwvrgeRFGyoeEpzgs4a41zb5KB0AGmP+XtXWMl5LaQk5m+vWa
PdXU9GF+5TI9Pb1wJ2n2cxiv5iqSu2HO+2CG1BPb2WSWFwDJqfbQFdnUnfTTEuikwOH70mOLqLS6
/bZhpD06MdlAgCa1qePOcwdIsr7DTlOLXtXOEhlyNrrQlF42bjgzDxbt+RJo9FOmEVjJkXVQX+XW
xcRalPjqdl1RGdn0vMUNFVAFolqUsLGfJrYuRPnuOFZd0s09XsizCQRGju3jLRz2t7q4ZHyv0VLj
rYmCTkiya5VNCEAqk1c3b/6wVSIkeZpGOzwyoVd7FHfDp7dBvVjmlS/zek75ZGkeMv4KNVyENSPj
rnC3i8TWkg+RCVrKIhdeomKVdmMvL/sm03TZfuQTdibyF6BjsqfJoATykooxUA6vRGFes7SCSHF/
ptMfaixriZXcIntrAY2Xq3VJ07fnRaoVCKUFkk4f31tloL9Ibr+NHTPpMVK5na7kxL7TKTY1r4jF
fIBmYbPRuoRH6nmSBupcog7R/9+hrPl3Y6Qdw/E1nRF4nAHoMtssmp8jD6lsTx6c8kEEc42hPuCz
vE4eJpoifso7BKetF8wXTMkP/ozWUdP/04vuXyX97ugnD7VGv9/Q+ahhrQsWf8SsHJ36oVH1Bops
U+2puTvoi6LmIukgPVBhESqn6nPyt6HDXOkmjS8F6fj0rC1y/eevmN06+ypis5API+2+PapzVkUH
IfgL9JY6Sw+GT7lGQ9VcsyWzcjn9jjKjkIhp8i3DsssGPQYoEAr9O1xoWPmo3zgMB/UEwT5ES+bA
l6LuZ9wT1ls/k1PrhZ+BAZa5NqbCohTE5aWxSUPJBBnNSmkdF+8fRioFqqMK3fEfEnosFTxcChIt
YQ0jIqECkyBt5X2BHTttClSTPfoEUAENd/3FKrSAcS6/mMjuaQmHB0dtXjT4YxaEO5g3cts0UB5I
1AkbVNRt1N49GbSNAGnbtQeYFRVjfWJ47nNKvJ8bDZY9CKaJD7RIptppoldXp/rLKjwIM+9ytxgj
U4xVa16AV4PzagFL4abJ/2hOKIv9hMqaumm7pWAYRDkVxQA9g7/0KIVdslaRAvbZuKpXgNcoOFg6
Be0EV5hBVe5vsNRcnohkVzyJYVTqDPP0RWLvWoAK7OQLvIZsR2zZRHAxkTXqa8Ydoforf66DujJF
RQHAP8NRsgRGj54j49MTXNcTJY+3YCA2j+EN1HQQslBku1KE/iU0TDntcUuRPtSopQzCjz68sNRG
2jyogUDLW4mblvDsRXcJxecOj2fSeEvbtbt0c8uH+af3tLECwir5BmKkkN1wtv32lYiRGxDzFzMX
4RVOEdhMjAYL1BVDX8padCWJbQRuk3rOw+ShqTBVUh17J0q9uL6mz5kvsYMFqm/+6Ef8AlCvtr+9
rcSu1/iG6YvMy6hPci8YAtwvOmu4jI7egxz21vPpDFVF5M9KiKqfNeswKTPx0qEzgjeHGW/Fl2qB
AEhPdP4EnfUgNErw9mNyjIWnnQ/3ZVPhVv/jstcAhHC9VcSQko9Tv0uNu3MQOJ+IyYCoy3FubZ7f
rFqwvgCy7Mg+RB1LhavdEmh5MNYOnZeWedrAMB3BtIzuRVaFs3S/b6FfzUHWVhxylrhXbKVnOmaW
kRJ24cP/8hcxDc6lUrCN8x794si/teTBX6M6ydJhNR0trIJJLv9E67vDaDBN+++HS6ibHUqaJTC9
WLrs2PwS9xX5QF+T76Nd/afz8w4bQ5VfmovNR1H1mYNa8Kyqd4K+PgJXy9DHBRhmqozIjs7B63t5
qHGztARmWp+RJUTX0lGQiFelLk37RjTR+mLBvHIm84XF3dPHObutw6Ap0rYuie2K0o2A+fWwY8JX
AP0XEI3dk35ie0+MOohJYpPVmUT/wqudgr4idh1ogfAhlQGODLAZEUrE1yjZ+xVoNsxAmKIhMkr3
9whgnVA+Jzacs/kiZPD/a6kIvg6hja6n6DXlCVbrE7H92aHKzJAcRfpLR1Sqz44xux4zPslgtztH
/c4bASpTLqjsof96BKH6FbNjG8Pvw9nFHzph4D9gILeVFXpvRZuJRZXs00ylDxH5SPwbE75ZVhLS
aPPwlgWt5Rx52etunCq4PXY95sg8P15XWtTsUMeFp3VgeyFJ7C2e9NDLigzynfj3KByNyx5dPKyN
Mvfa80cPG4E6xXoN1eIAq62cHw8pPTbz4+OVyr2lwOD1c1w5ClY7lYffsw64Ire6M6NNJG9Wj65O
c/c+CB1OtknzHCuplhcCFW8yiEC7K1U9knxSDTwKZAGrGtdI/w2ndE1p8kqYpeIopLS/Eiq+RpiV
lSgydYQuiYbyjFlCQjf57YtM4cI+76JnQjncATTBzxTsSbTx61LIvYaLpDoPaNxJmwk5Vw2Q2UL+
pcBDPz/OY0NcgZCyEJZJrOhD0F4PMQDOKvkPI2eXWDq7G49bhGfHApE8amdhe1uz869bWTUKLcoi
B4cB9/nZ7UMwLOwWR256Ux9IZU1yxYTPhgMeZBJmRBOCXHrALo006dzMXNod+a3kNiDhZ/9j+f3F
QiruBYtOMHr70p1xTVmeTcYswLcEEGci00b+bYYAtQvJTqAwX15caQ0qWS8XS55+1HApaQaqbarS
R68GJUMxKAJ/Gz+AH4FWUQIK0Nu6ab6P/UorUUkjPQFbModXohPcOsrdRK6VY88rQo5PsAJWnmfg
mqRh9iOIb1nTRLdMZZgVSigKNrf8z5JM1bzbRGVZPM2fuRTn7aJeWOnkEUpn4Bvsiqdd9w3Luqhb
roFN056T6fO4xCAOGDO9yeP1Mw4FztJkOH8ez4OD0qlt0/HddjyGtSoGyujuTOp82jiW4y6b9brA
Vy9gdgi/l0V44dfw8e7HN0Nly7cypABPNN/wenklgQpyZcBLNr0/0G1z5U1uJ9hGu/J5HYXPHxEF
Z8GJAMPAGxYpP8Qckj6YFmi0n8NM6OeR1q3f/PgPELdQDlbuNbU36UQxfW+MUr8tXsVDSPrmeYP7
Wtpeya8jZeWMZ14ZtenfZqwF3N6W0QvhMGxhwNi3NVgnQDvrwxTkLQpewefJbRNto++4YAXy49yI
CtXVucXr7VxQmG8ywDOSd/9QEXqEwCVUzpWSyBjp2SZwOEShp0ZjfyZ7+AOfHFVDiywjXf9mgDAJ
l5tGADmruVsXBdA1DQXQHtS5ONVhsJMfkvts0glbvX57tEnioxIcMzKvsetGNpsfinfbZvUtTYV2
MCeDnEhTTUQYaCxpEuyzMJstthsDLYQf7LWD+vqUSEIA6EHFdMoS7MMpA15h0Zkv+ysynfyDSga2
RjWS+dyh9NL2FNWu0gU3T16Y5Se+3oWQ2Tk8/rHAJVmliGrbp1NVg3mxU6ataKC7Gy53D7tRlwUN
5ddqm62sjDqoSX2l1gAus+8uHos47zJQjJM7ZCJHxaIbPWj3LtqvWj6bOkYZKMZxrUN08H1VQfXv
D1bRd//t52PAz9ds6MHdRAAyc9IPJfb3JbLQi2CNSXswRmnnW/hMSXjpxpb0nmqZR87dIKfkSHSZ
kz95hfqpfGBCBFXr+P3nnRX9bSAD6htTTWDrPIw+w24F33zVqzTckriFuqVaTGFmb3zDqGzPHpUc
hJzjrTNncJTJRy5Ks0BjbHRw9TvKIpHgePWCokTqR1/QoI1PqS9vI+4TUA8n6AGqlEJsJT58wRrA
NWxXFJj4xx+oBktgHuHwev0yjHuWsXS55S4AiGtkDNvbvQHWs4Urrhtnf9uA7WusmbUaUsDlTxzj
ibbl6qcCnsQvfyf6h1Yfq3nuvqG0gikgnfAhp7Ta/rBLXBtrS9uyOCQKKBFJnZylLgiU3Y7CEoXq
1odmeBh2tF/WsMcGOaVL/RfRH2k1LI5H9cDUj9URek6Foa6F6NfMMFJ4Yi1CpgO4Le4+e7qysU62
EftFKILLpX9i8fhBIAPJjGLjqWFIWGUZZY9bXp36FqLBEbPLbC+IY0hm3HTgL6OIAy7sBSdNMjAk
bjzd7qvwavF/klq5bxlGsBM0LNKwzx1Wn5tXQpez2h54i8ixUiqabxVsFnZsM/E91NkXSFGRGrVW
G1xzle+BX4sPqEMSFhYtyWWGwHz54O+AUY1aqJJEoPVF9QlabGkUZwlPncmbeQ+6/0QO+JvqTuYR
lIewfm0fc8i9X6bYwu3l0UMYtdhNylfDjRqmTijdDZDd2zGbizwszIzVHklhzEJQtD0sAD5s7H2b
zVbyMjN9bvsi4O8Ev9uI62Z+U1T87AuliWeRFuoEktLcDK4nn9ORL0nAyEjVgB4RDGqKLHXRqOs7
/GSU+BW16VGp2emHYxamoXLdDFFCPjjaR0B+2u/kyXwtmRzS/il+1BfX+17qOMJaFDeUkb0uXsP9
raGbyi7lup0BuA3T+PdbT6jsFeWfOnjA7yTpSvGAhemHoiF4nJFzf523cNf5RivlgvwLdT3640p9
XHehVGn6cYKGJMT/kiynkTs29kCeOdBkgz2k5KqtidWDohwk2aPA0LL7j5tHfhqJB9938JMzGcoD
tRJbzF79OI84ZDkysoroiP0DHfC2IEb3wDpv1jiNC5ot/YprANqyjbvg/u9sxbt30CU/tifafGye
kuwnaxE60Bfak4gSsVWUPr/FuBkIwXodynRexTCkN6GPd25SGvMtAAvtLcaYliWngnckvw5bKsBP
VmMPhViCtTiWF6cgCY2o2KcJtX1/aI2WOA6lpH9r7U9tEJ+RnC6bM2r7P+H6DJoDiFNm3PiUEvuU
Qy0ruEk+5v689uNo+zM0paiPRcQ7sRQO+/clgVx2L0WlTiJUNCV4g7S7O/DTxFwypPeh4nMPTn0L
TQOVV2qcQpYq2WZdb37ggHtL4ahBHe/bwsi5UGhKhu3x2XQlTg6Pc67GCxEaGDNa5ohcCYneTJS9
GEnhn9Y/ZOtuvXpMpOXpcWsM9aB7LplsMTgDZI7b2mYAupFWVnWYRBq8Rb0+IyaSOcM7/QT9wG9A
GANml8UpeG5/CsK3lMgaXltG62bjPZNUnfhMPsdWVMDYRtKshFnabh+3oGsOlooiyvk88GvnyXd/
5/Tm/uNoac0FxMHYlSuqGuvxyeozpwpo6m/EpUbOBHitSQqNSGppeymRfdm2uf0z9nr0jab0BAeX
2UMgLpdbvaXKrRZq4/8spCBVhhSK4b/OwpviLQN+m0wZ//F3jY+2WGiIxv7ln4xyxuQ1iKln/POF
snKHOK/DD5PQX/2zZC8aGXvEv2nUtALtDUtWHPTyYvZRnQHndN24krDi436JGCbUP5fWvhDIEMGV
q/dZLTFpcc2z+xGbMC6wRUoWiPN49ALMAN2QTbr3fN6VJkVwdxzFREy/iOuiXDIFZJfDd3m7qiQv
wUhZCLwWuN2ycDNESvg7FBowdZU6WSFuTVhCjDnHXuAblrRcrDUW693jF29tJE3+0lJ2zIDwk0T9
KJ3SPwc1fBRSrx0ngVm8ZRX4yIobFD64J/MPyKPFkpd4C4eVpZNEdTJNzqyPxce74kfexwP9vFia
ve+Ea0CHm4YnvHJC5khT+4R1OvxHgnfbF3VfZ6ngiPp5ov9N7UAwrXRZF2xoyx6UDm04mPn1lwBT
rl+r1IHflryd0SpEofeB+KEt0HTTG0q9SeJe2EFDkmwUe8jdbgBvZZ9kh4ylLBxEe+hw//bwodW6
HoZ7Ut+3JXmSGM41pLp834SHa31lxVdqdaW4eDMFMLLqvIPxmsH10KcdqU3wIVtyV/9SvutLEEgz
B3tqkC6ivpRWR29G5YANeQUhaKhkLXrTdkv1KYv2vTZscFHnLsT+6DQmE4VimLWBMRRCaxTub4iX
RnIK7/Q03w/gLl02Pn2Mzy58bOeqsyh9wwH1rwgVnmDPELy7I6yYV5MeGvfRlW6JR6v573tR3fvY
BX5KxQ3U/CfoChl6EqxR7h5Z/7rqN2h8Fcj4kg15InCG2ITIGpP2FStHBZvgsL6VEh9sphCTiOF3
GvwfcqJ5KjUSUXDO0+0svJDf+EPnX49VDzmLL4MobqQanR4WQHZSrgtbXs3bPpfbEAqdEyCyRoS8
0Yr9zbHpLw36rZ9FWg7vHiTf5aR+dRFH8gbmyBpSNobQor6lQQWmwy94LvvSeHkbF41+j4sXfw6G
JZ2NgL7sNdcGZwnWXHH8H0auvsl5WM42nd45ogyoBTGuOw3f6PE9AWNrpP6wFT9qO60jXQACB6oi
FTK8PjI2aHQ7O4scMx9R1sZR1zX9NRdW4Hn94hwfioVBo964D8Fy/3vly3E2XUXBnc8FJp+n2AV+
IWim36McLgc3NK19UEYSRLcJL8wMHgCLlR7nn1qp3TMjQCjHnSdNIl3dAirvEyacrG4SaVfZ+lqL
s1/Wxa8RVTL0kk2T0LJvu0FANviaaWxmvztr0U3vQSm54C4qxAQKdp+Xrf+BHlNjrHbUZl+iNxhw
D7cpNrqbY4Sva6Qz4JCZCRq0FL+/oxASPr2hmpzXzSbHLCnlfZzcN716hpGeXQM+w5bWAT+Hj9lh
WghE+J2yV7RBg1QQNq7zRw0vKGT2KwtvKXI3tLIfDNGBUTqGJoadYslg9UQDr10EhBTe5OQLYafI
IxjIYbi0h5qNYPfC9Z3XnEmJOaI8oYa/zHIMX+8ZvPpj4v/3eXP8JwM4y9ITKFL59IgK9U5w55QK
YuSjFMZBjyV2H/S/ke4wKwnMLCrIotM9eOXWYGAJ+65xMBnSOFD/xJrj/Etuxl0=
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

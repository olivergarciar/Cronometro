-- Copyright 1986-2018 Xilinx, Inc. All Rights Reserved.
-- --------------------------------------------------------------------------------
-- Tool Version: Vivado v.2018.2 (win64) Build 2258646 Thu Jun 14 20:03:12 MDT 2018
-- Date        : Mon Dec 17 12:41:54 2018
-- Host        : MSI-PC running 64-bit major release  (build 9200)
-- Command     : write_vhdl -force -mode funcsim -rename_top decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix -prefix
--               decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_ c_counter_binary_0_sim_netlist.vhdl
-- Design      : c_counter_binary_0
-- Purpose     : This VHDL netlist is a functional simulation representation of the design and should not be modified or
--               synthesized. This netlist cannot be used for SDF annotated simulation.
-- Device      : xc7a100tcsg324-1
-- --------------------------------------------------------------------------------
`protect begin_protected
`protect version = 1
`protect encrypt_agent = "XILINX"
`protect encrypt_agent_info = "Xilinx Encryption Tool 2015"
`protect key_keyowner="Cadence Design Systems.", key_keyname="cds_rsa_key", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=64)
`protect key_block
AcH6O9bO3zj3e+WIKKzQ3tGoQ8+7tvatcw0wndubWcNWVpJuWFs64u1EbdQBmVMS5VgyGqiQMiBi
hwSV5lC5Pg==

`protect key_keyowner="Synopsys", key_keyname="SNPS-VCS-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
WzT0JcWfiuNhwzy8lNU4g7UuX+JvUt6aiyixPUleOR0u+NdhKBbxILEuEuRnK8YYP35/bahdRnyA
XKnMFCYgA+QsecIqj5X4Rw7Xb6LsBLykyOFwIwfEholDHQ76SyVo3cyHHhYgR2bgHuMXJg2rBbRT
QQnUjJfI63xAfydMVTU=

`protect key_keyowner="Aldec", key_keyname="ALDEC15_001", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
NfFbJSzo0Q9Yd/VjEyGFK3pd2NFVmeE1oqShliu4d5hQadOU/sdDVbTXdkcYJZl7NtD3gI57ikaO
tDP435BmCUEcVllWLm5HyEUFR8v/7EzcgdUNcFcVigeLOmTZv8vyL7VQR+c/0pV1B3QrLFZWKp2W
48sFu+cBUelVJ9IPrhNnts4mY+jyeT+PndEnI1kzzYTOby+qXE3yZtY5NlB6FibtUHmxIh8pQ7ij
DM99E8rB9QHsHpiO0O+iQ3ihQwq6U9Bh9jbllhybyuDUrlpaZm7f+6Rvwj7E3d+c9Dgwuo6GXOcm
LWXlyNOcGo5g7oWEpDcyxRSaE90c5SSoyakK5A==

`protect key_keyowner="ATRENTA", key_keyname="ATR-SG-2015-RSA-3", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
gG6AM7tE6d153mOB646PQd+jcKxQS5MN2462/cvyChYUMeMct7G3Ma9LG+jZBi9aUrmrjk5wMgiB
ocBwczfb3uPIny/E7kbiFrKMiHSWHq3tKWkDjYgudymUQ82fyddl8uBeXnBqqKno21TQnN7ivdWv
jTen2WwVKQj1SE7fWRkzWXpn+8q55AZ7zYPl88YqttuOnH5qIurA+oUZYwD7kcePlwrAmjuqrQQE
N1UsTp9vMyk5UHn+lGhWoHE8dtM5O+WcotqJEW24XH3x7F5wdEGRoBhCtWQg2+hbiGMEQiqCs1Hl
jwuttVehh4hikU2ld2oybYuHmyaHzd8P6X0tcw==

`protect key_keyowner="Xilinx", key_keyname="xilinxt_2017_05", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
Ud2ECTLyD85tsVvgtuFWTTLoWHfVt+VLmQrzHxkmjiLiqeTcwPqu0bhdgvluEoTF5DZZ4XuWs17+
JfeQruldEe1lT9JPO1a6QWkwATIDMuPDh4sXdE0OisihQLkSdrA7/IUtAklu7h4P8XtbQu0UGIkn
AQ/IAANs7p//FABRISp9YbJWI7WPRMJX2O8FOX+w++NUHXaO8JkQpDRmE7r2+UBcouFx0at/cnbM
X9SMTHsA1jeYJm2nq/4aeKw8zxL87GOQotKSeaWwm4fmBr86NZ9zL2dgihEMgXqJL25tkxLch10c
eRyppNzkHZw1bBP8mAFOvu0Dt4uoMwGW7nHHSw==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VELOCE-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=128)
`protect key_block
rAq68pKr78hDP/iWJayHOxyuEJu1BL5Yjw1SHgbOw8UhrUj3PE/TtS/YAHr6dmvN5M5P9KR3fzCV
FBC74xmGura4L89F9odMAJ4B50dD0XSop042LIpHJFRFbrTs0uH5lTk7m26e/mZQq4OnHW3BSKm2
92hDz0MZH1LC5NDzzZQ=

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-VERIF-SIM-RSA-2", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
SQMPDiP8jExtpJ5lMWcuEFp7zwek/On6bGjhgSTOTQobQuPgLwNPX0a5A2kvPN2VsbzzweKfU4md
z6sBWcsLHrp2oFSYMFBAllFwU44BUaISnypger/G9/oDstPTffQx0MaYt5sj/5DbZ+jG99V5H/kf
8zOJSQorZZABtPQZok+kmzWfZXSSSJsy8cY0RuvfglrB3koCU5eUl8hnS6Fhtl7iG4cK2Pxo6eAJ
KwQlfI8E2rVzWmAbeqvi4wBRwmK5c6rmSjCnBP46JhWQrxeOT1IdZQEzpJ1WcDskhCsEwGB72vks
DTM3EhnVlSzTX2izm/kJk/rkbOCvxMMhFnihfA==

`protect key_keyowner="Mentor Graphics Corporation", key_keyname="MGC-PREC-RSA", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
UBbZAHuikZha03DZmme8KshEa9jGmr4apzhiz4QeLxPktLZGE1DzOGB3eFmmnuplszTKhrWqcGQR
wYcdTihtDf8Q9Krxr3ikmWzDhN9+RrIhJ+ZYym1wgERTZgD7sOREeP9JvUZ1rpoxzM2PDsjNAiXI
xSxxuNyy4vA3ItRF2Mw+sJ3RIu2ST/EnuzTUeWphccr6HmA68CIiSAgX9n508/bb+c1H0bfZZXcr
T6AmS74NOLLRphgJMIE6/Up8x6ogtRefkljnnKOCu9Ya+bgjMDHF8fnoJP4ssC6MQt5iKKBy5Z0P
QOIUVfAjtcIMwBHnnKPKq0vmNXi5ZRxv4OQ7+Q==

`protect key_keyowner="Synplicity", key_keyname="SYNP15_1", key_method="rsa"
`protect encoding = (enctype="BASE64", line_length=76, bytes=256)
`protect key_block
xAcXL8voSKzvz45C6WhbkX0ZjPtdpbo6bmFha6R4INOwPtJW0PDeZercTAyYweolZDs9AiBgTtt1
LaoXHgDDv+6/Uy7hRGdZAdo3WL8IJxOY/qKNawBCR1o9Yktjp8lYDykC8sLmQg2gFJAqRExyTC0j
VCftf6eh63AxkwxIwrlin18CqDo1TfJX0D5G/LzTlh0MZ/3c0565jMEYGQqz6BhfetMkFrRQIegw
eEv0JWYV0rDb2BcZz/WpjhzEiGHGFc6f4NTdMXFiycUXNRD3gSNWNENLjLjdgGqla3ytqCdwwynO
V7Q3bday9GiVBn2TXJE6oMUhEh/UDB+0ulFhKw==

`protect data_method = "AES128-CBC"
`protect encoding = (enctype = "BASE64", line_length = 76, bytes = 14288)
`protect data_block
+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
`protect end_protected
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 is
  port (
    CLK : in STD_LOGIC;
    CE : in STD_LOGIC;
    SCLR : in STD_LOGIC;
    SSET : in STD_LOGIC;
    SINIT : in STD_LOGIC;
    UP : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 3 downto 0 );
    THRESH0 : out STD_LOGIC;
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_COUNT_BY : string;
  attribute C_COUNT_BY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_COUNT_MODE : integer;
  attribute C_COUNT_MODE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 2;
  attribute C_COUNT_TO : string;
  attribute C_COUNT_TO of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_LOAD : integer;
  attribute C_HAS_LOAD of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_HAS_THRESH0 : integer;
  attribute C_HAS_THRESH0 of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_LATENCY : integer;
  attribute C_LATENCY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_LOAD_LOW : integer;
  attribute C_LOAD_LOW of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_RESTRICT_COUNT : integer;
  attribute C_RESTRICT_COUNT of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "0";
  attribute C_THRESH0_VALUE : string;
  attribute C_THRESH0_VALUE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "1";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is 4;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "artix7";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 : entity is "yes";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12 is
  signal \<const1>\ : STD_LOGIC;
  signal NLW_i_synth_THRESH0_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL of i_synth : label is "0";
  attribute C_CE_OVERRIDES_SYNC of i_synth : label is 0;
  attribute C_FB_LATENCY of i_synth : label is 0;
  attribute C_HAS_CE of i_synth : label is 0;
  attribute C_HAS_SCLR of i_synth : label is 0;
  attribute C_HAS_SINIT of i_synth : label is 0;
  attribute C_HAS_SSET of i_synth : label is 0;
  attribute C_IMPLEMENTATION of i_synth : label is 0;
  attribute C_SCLR_OVERRIDES_SSET of i_synth : label is 1;
  attribute C_SINIT_VAL of i_synth : label is "0";
  attribute C_VERBOSITY of i_synth : label is 0;
  attribute C_WIDTH of i_synth : label is 4;
  attribute C_XDEVICEFAMILY of i_synth : label is "artix7";
  attribute c_count_by of i_synth : label is "1";
  attribute c_count_mode of i_synth : label is 2;
  attribute c_count_to of i_synth : label is "1";
  attribute c_has_load of i_synth : label is 1;
  attribute c_has_thresh0 of i_synth : label is 0;
  attribute c_latency of i_synth : label is 1;
  attribute c_load_low of i_synth : label is 0;
  attribute c_restrict_count of i_synth : label is 0;
  attribute c_thresh0_value of i_synth : label is "1";
  attribute downgradeipidentifiedwarnings of i_synth : label is "yes";
begin
  THRESH0 <= \<const1>\;
VCC: unisim.vcomponents.VCC
     port map (
      P => \<const1>\
    );
i_synth: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12_viv
     port map (
      CE => '0',
      CLK => CLK,
      L(3 downto 0) => L(3 downto 0),
      LOAD => LOAD,
      Q(3 downto 0) => Q(3 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0',
      THRESH0 => NLW_i_synth_THRESH0_UNCONNECTED,
      UP => UP
    );
end STRUCTURE;
library IEEE;
use IEEE.STD_LOGIC_1164.ALL;
library UNISIM;
use UNISIM.VCOMPONENTS.ALL;
entity decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  port (
    CLK : in STD_LOGIC;
    UP : in STD_LOGIC;
    LOAD : in STD_LOGIC;
    L : in STD_LOGIC_VECTOR ( 3 downto 0 );
    Q : out STD_LOGIC_VECTOR ( 3 downto 0 )
  );
  attribute NotValidForBitStream : boolean;
  attribute NotValidForBitStream of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is true;
  attribute CHECK_LICENSE_TYPE : string;
  attribute CHECK_LICENSE_TYPE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "c_counter_binary_0,c_counter_binary_v12_0_12,{}";
  attribute downgradeipidentifiedwarnings : string;
  attribute downgradeipidentifiedwarnings of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "yes";
  attribute x_core_info : string;
  attribute x_core_info of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix : entity is "c_counter_binary_v12_0_12,Vivado 2018.2";
end decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix;

architecture STRUCTURE of decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix is
  signal NLW_U0_THRESH0_UNCONNECTED : STD_LOGIC;
  attribute C_AINIT_VAL : string;
  attribute C_AINIT_VAL of U0 : label is "0";
  attribute C_CE_OVERRIDES_SYNC : integer;
  attribute C_CE_OVERRIDES_SYNC of U0 : label is 0;
  attribute C_FB_LATENCY : integer;
  attribute C_FB_LATENCY of U0 : label is 0;
  attribute C_HAS_CE : integer;
  attribute C_HAS_CE of U0 : label is 0;
  attribute C_HAS_SCLR : integer;
  attribute C_HAS_SCLR of U0 : label is 0;
  attribute C_HAS_SINIT : integer;
  attribute C_HAS_SINIT of U0 : label is 0;
  attribute C_HAS_SSET : integer;
  attribute C_HAS_SSET of U0 : label is 0;
  attribute C_IMPLEMENTATION : integer;
  attribute C_IMPLEMENTATION of U0 : label is 0;
  attribute C_SCLR_OVERRIDES_SSET : integer;
  attribute C_SCLR_OVERRIDES_SSET of U0 : label is 1;
  attribute C_SINIT_VAL : string;
  attribute C_SINIT_VAL of U0 : label is "0";
  attribute C_VERBOSITY : integer;
  attribute C_VERBOSITY of U0 : label is 0;
  attribute C_WIDTH : integer;
  attribute C_WIDTH of U0 : label is 4;
  attribute C_XDEVICEFAMILY : string;
  attribute C_XDEVICEFAMILY of U0 : label is "artix7";
  attribute c_count_by : string;
  attribute c_count_by of U0 : label is "1";
  attribute c_count_mode : integer;
  attribute c_count_mode of U0 : label is 2;
  attribute c_count_to : string;
  attribute c_count_to of U0 : label is "1";
  attribute c_has_load : integer;
  attribute c_has_load of U0 : label is 1;
  attribute c_has_thresh0 : integer;
  attribute c_has_thresh0 of U0 : label is 0;
  attribute c_latency : integer;
  attribute c_latency of U0 : label is 1;
  attribute c_load_low : integer;
  attribute c_load_low of U0 : label is 0;
  attribute c_restrict_count : integer;
  attribute c_restrict_count of U0 : label is 0;
  attribute c_thresh0_value : string;
  attribute c_thresh0_value of U0 : label is "1";
  attribute downgradeipidentifiedwarnings of U0 : label is "yes";
  attribute x_interface_info : string;
  attribute x_interface_info of CLK : signal is "xilinx.com:signal:clock:1.0 clk_intf CLK";
  attribute x_interface_parameter : string;
  attribute x_interface_parameter of CLK : signal is "XIL_INTERFACENAME clk_intf, ASSOCIATED_BUSIF q_intf:thresh0_intf:l_intf:load_intf:up_intf:sinit_intf:sset_intf, ASSOCIATED_RESET SCLR, ASSOCIATED_CLKEN CE, FREQ_HZ 10000000, PHASE 0.000";
  attribute x_interface_info of LOAD : signal is "xilinx.com:signal:data:1.0 load_intf DATA";
  attribute x_interface_parameter of LOAD : signal is "XIL_INTERFACENAME load_intf, LAYERED_METADATA undef";
  attribute x_interface_info of UP : signal is "xilinx.com:signal:data:1.0 up_intf DATA";
  attribute x_interface_parameter of UP : signal is "XIL_INTERFACENAME up_intf, LAYERED_METADATA undef";
  attribute x_interface_info of L : signal is "xilinx.com:signal:data:1.0 l_intf DATA";
  attribute x_interface_parameter of L : signal is "XIL_INTERFACENAME l_intf, LAYERED_METADATA undef";
  attribute x_interface_info of Q : signal is "xilinx.com:signal:data:1.0 q_intf DATA";
  attribute x_interface_parameter of Q : signal is "XIL_INTERFACENAME q_intf, LAYERED_METADATA undef";
begin
U0: entity work.decalper_eb_ot_sdeen_pot_pi_dehcac_xnilix_c_counter_binary_v12_0_12
     port map (
      CE => '1',
      CLK => CLK,
      L(3 downto 0) => L(3 downto 0),
      LOAD => LOAD,
      Q(3 downto 0) => Q(3 downto 0),
      SCLR => '0',
      SINIT => '0',
      SSET => '0',
      THRESH0 => NLW_U0_THRESH0_UNCONNECTED,
      UP => UP
    );
end STRUCTURE;

----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2019 13:10:54
-- Design Name: 
-- Module Name: top - Behavioral
-- Project Name: 
-- Target Devices: 
-- Tool Versions: 
-- Description: 
-- 
-- Dependencies: 
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
-- 
----------------------------------------------------------------------------------


library IEEE;
use IEEE.STD_LOGIC_1164.ALL;

-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity top is
    port(
            clk : in std_logic;
            reset : in std_logic;
            iniVal : in std_logic;
            countPause : in std_logic;
            load : in std_logic;
            upDown : in std_logic;
            led : out std_logic;
            display_number : out std_logic_vector(7 downto 0);
            display_select : out std_logic_vector(7 downto 0)
            );
end top;

architecture Behavioral of top is

signal clk10, clk500 : std_logic;
signal iniVal_deb, countPause_deb, load_deb : std_logic;
signal L_dec, L_segUni, L_segDec, L_min : std_logic_vector(3 downto 0);
signal dec, segUni, segDec, min : std_logic_vector(3 downto 0);
signal segment_dec, segment_segUni, segment_segDec, segment_min : std_logic_vector(6 downto 0);
signal segment_LDec, segment_LsegUni, segment_LsegDec, segment_Lmin : std_logic_vector(6 downto 0);

component contador_top
    port(
        clk,reset,modo,enable,load : in std_logic;
        ls,lm : in std_logic_vector(3 downto 0);
        dec,segUni,segDec,min : out std_logic_vector(3 downto 0)
        );
end component;

component load_counter
    port(
            dataIn : in std_logic;
            rst : in std_logic;
            L_dec : out std_logic_vector(3 downto 0);
            L_segUni : out std_logic_vector(3 downto 0);
            L_segDec : out std_logic_vector(3 downto 0);
            L_min : out std_logic_vector(3 downto 0)
            );
end component;

component deb_sync_top
    port(
            button_in : in std_logic;
            reset : in std_logic;
            clk : in std_logic;
            button_out : out std_logic
            );
end component;

component alarma
    port(
            dec : in std_logic_vector(3 downto 0);
            segUni : in std_logic_vector(3 downto 0);
            segDec : in std_logic_vector(3 downto 0);
            min : in std_logic_vector(3 downto 0);
            L_segDec : in std_logic_vector(3 downto 0);
            L_min : in std_logic_vector(3 downto 0);
            mode : in std_logic;
            reset : in std_logic;
            led : out std_logic
            );
end component;

component clk_divider
    generic(frec1 : integer := 5000000; frec2 : integer := 100000);
    port(
            clk : in std_logic;
            reset : in std_logic;
            clk_10 : out std_logic;
            clk_500 : out std_logic
            );
end component;

component decoder_dec
    port(
            code : in std_logic_vector(3 downto 0);
            led : out std_logic_vector(6 downto 0)
            );
end component;

component display_refresh
    port( 
            clk : in std_logic;
            segment_dec : in std_logic_vector(6 downto 0);
            segment_seg_uni : in std_logic_vector(6 downto 0);
            segment_seg_dec : in std_logic_vector(6 downto 0);
            segment_min : in std_logic_vector(6 downto 0);
            L_segment_dec : in std_logic_vector(6 downto 0);
            L_segment_seg_uni : in std_logic_vector(6 downto 0);
            L_segment_seg_dec : in std_logic_vector(6 downto 0);
            L_segment_min : in std_logic_vector(6 downto 0);
            display_number : out std_logic_vector (7 downto 0);
            display_selection : out std_logic_vector(7 downto 0)
            );
end component;

begin

clock_divider : clk_divider generic map(frec1=>5000000,frec2=>100000) port map(
    clk => clk,
    reset => reset,
    clk_10 => clk10,
    clk_500 => clk500
    );
    
deb_sync_iniVal : deb_sync_top port map(
    button_in => iniVal,
    reset => reset,
    clk => clk500,
    button_out => iniVal_deb
    );
    
deb_sync_countPause : deb_sync_top port map(
    button_in => countPause,
    reset => reset,
    clk => clk500,
    button_out => countPause_deb
    );
    
deb_sync_load : deb_sync_top port map(
    button_in => load,
    reset => reset,
    clk => clk500,
    button_out => load_deb
    );
    
load_count : load_counter port map(
    dataIn => iniVal,
    rst => reset,
    L_dec => L_dec,
    L_segUni => L_segUni,
    L_segDec => L_segDec,
    L_min => L_min
    );
    
main_counter : contador_top port map(
    clk => clk10,
    reset => reset,
    modo => upDown,
    enable => countPause_deb,
    load => load_deb,
    ls => L_segDec,
    lm => L_min,
    dec => dec,
    segUni => segUni,
    segDec => segDec,
    min => min
    );
    
alarm : alarma port map(
    dec => dec,
    segUni => segUni,
    segDec => segDec,
    min => min,
    L_segDec => L_segDec,
    L_min => L_min,
    mode => upDown,
    reset => reset,
    led  => led
    );
    
bcd_dec : decoder_dec port map(
    code => dec,
    led => segment_dec
    );
bcd_segUni : decoder_dec port map(
    code => segUni,
    led => segment_segUni
    );   
bcd_segDec : decoder_dec port map(
    code => segDec,
    led => segment_segDec
    );
 bcd_min : decoder_dec port map(
    code => min,
    led => segment_min
    );              
bcd_Ldec : decoder_dec port map(
     code => L_dec,
     led => segment_Ldec
     );          
bcd_LsegUni : decoder_dec port map(
      code => L_segUni,
      led => segment_LsegUni
      );
bcd_LsegDec : decoder_dec port map(
     code => L_segDec,
     led => segment_LsegDec
     );
bcd_Lmin : decoder_dec port map(
     code => L_min,
     led => segment_Lmin
     );
     
display : display_refresh port map(
    clk => clk500,
    segment_dec => segment_dec,
    segment_seg_uni => segment_segUni,
    segment_seg_dec => segment_segDec,
    segment_min => segment_min,
    L_segment_dec => segment_Ldec,
    L_segment_seg_uni => segment_LsegUni,
    L_segment_seg_dec => segment_LsegDec,
    L_segment_min => segment_Lmin,
    display_number => display_number,
    display_selection => display_select
    );

end Behavioral;

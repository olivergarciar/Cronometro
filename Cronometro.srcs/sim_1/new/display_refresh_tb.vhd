----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2018 14:35:19
-- Design Name: 
-- Module Name: display_refresh_tb - Behavioral
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

entity display_refresh_tb is
end display_refresh_tb;

architecture Behavioral of display_refresh_tb is

-- Component declaration
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

--Inputs
signal clk : std_logic := '0';
signal segment_dec : std_logic_vector(6 downto 0) := (others => '0');
signal segment_seg_uni : std_logic_vector(6 downto 0) := (others => '0');
signal segment_seg_dec : std_logic_vector(6 downto 0) := (others => '0');
signal segment_min : std_logic_vector(6 downto 0) := (others => '0');
signal  L_segment_dec : std_logic_vector(6 downto 0) := (others => '0');
signal  L_segment_seg_uni : std_logic_vector(6 downto 0) := (others => '0');
signal  L_segment_seg_dec : std_logic_vector(6 downto 0) := (others => '0');
signal  L_segment_min : std_logic_vector(6 downto 0) := (others => '0');

--outputs
signal display_number : std_logic_vector (7 downto 0);
signal display_selection : std_logic_vector (7 downto 0);

--Clock periods definitions
constant clk_period : time := 2 ms;

begin

    --Instaciacion de la Unit under Test (UUT)
    uut: display_refresh port map(
            clk => clk,
            segment_dec => segment_dec,
            segment_seg_uni => segment_seg_uni,
            segment_seg_dec => segment_seg_dec,
            segment_min => segment_min,
            L_segment_dec => L_segment_dec,
            L_segment_seg_uni => L_segment_seg_uni,
            L_segment_seg_dec => L_segment_seg_dec,
            L_segment_min => L_segment_min,
            display_number => display_number,
            display_selection => display_selection
        );
        
    --Clock process
    clk_process : process
    begin
                clk <= '0';
                wait for clk_period/2;
                clk <= '1';
                wait for clk_period/2;
    end process;
    
    --Stimulus process
    stim_proc : process
    begin
        --hold reset state 
        wait for 100 ns;
        
        --insert stimulus here
                   segment_dec <= "0000000";
                   segment_seg_uni <= "1111111";
        wait;
    end process;
end;   
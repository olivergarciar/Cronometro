----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.12.2018 21:00:22
-- Design Name: 
-- Module Name: clk_divider_tb - Behavioral
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

entity clk_divider_tb is
end clk_divider_tb;

architecture Behavioral of clk_divider_tb is

-- Component declaration
component clk_divider
 port(
           clk : in std_logic;
           reset : in std_logic;
           clk_10 : out std_logic;
           clk_500 : out std_logic
           );
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';

--outputs
signal clk_10 : std_logic;
signal clk_500 : std_logic;

--Clock periods definitions
constant clk_period : time := 10 ns;

begin

    --Instaciacion de la Unit under Test (UUT)
    uut: clk_divider port map(
            clk => clk,
            reset => reset,
           clk_10 => clk_10,
           clk_500 => clk_500
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
                    reset<='1';
                    wait for 50 ns; 
                    reset<='0';
                    wait for 450 ns;             
        wait;
    end process;
end;   

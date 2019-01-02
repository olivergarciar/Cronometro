----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2019 16:18:56
-- Design Name: 
-- Module Name: top_tb - Behavioral
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

entity top_tb is
end top_tb;

architecture Behavioral of top_tb is

component top 
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
 end component;
 
--Inputs
 signal clk : std_logic := '0';
 signal reset : std_logic := '0';
 signal iniVal : std_logic :='0';
 signal countPause : std_logic := '0';
 signal load : std_logic := '0';
 signal upDown : std_logic := '1';
 
 --outputs
 signal led : std_logic;
 signal display_number,display_select : std_logic_vector(7 downto 0);
 
 --Clock periods definitions
 constant clk_period : time := 10 ns;
 
 begin
 
     --Instaciacion de la Unit under Test (UUT)
     uut: top port map(
             clk => clk,
             reset => reset,
             iniVal => iniVal,
             countPause => countPause,
             load => load,
             upDown => upDown,
             led => led,
             display_number => display_number,
             display_select => display_select
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
                     reset <= '1';
                     wait for 10 ms;
                     reset <= '0';
                     wait for 10 ms;
                     
                     countPause <= '1';
                     wait for 19 ms;
                     countPause <= '0';
                     wait for 1000 ms;
                     
                     iniVal <= '1';
                     wait for 30 ms;
                     iniVal <= '0';
                     wait for 10 ms;
                     
                     iniVal <= '1';
                     wait for 26 ms;
                     iniVal <= '0';
                     wait for 10 ms;
                     
                     load <= '1';
                     wait for 21 ms;
                     load <= '0';
                     wait for 20 ms;
                     
                     upDown <= '0';
                     
         wait;
     end process;
 end;   
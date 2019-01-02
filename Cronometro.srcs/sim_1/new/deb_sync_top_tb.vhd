----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.12.2018 16:32:12
-- Design Name: 
-- Module Name: deb_sync_top_tb - Behavioral
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

entity deb_sync_top_tb is
end deb_sync_top_tb;

architecture Behavioral of deb_sync_top_tb is


component deb_sync_top 
     port(
            button_in : in std_logic;
            reset : in std_logic;
            clk : in std_logic;
            button_out : out std_logic
            );
 end component;
--Inputs
 signal clk : std_logic := '0';
 signal reset : std_logic := '0';
 signal button_in : std_logic :='0';
 
 --outputs
signal button_out : std_logic := '0';
 
 --Clock periods definitions
 constant clk_period : time := 2 ms;
 
 begin
 
     --Instaciacion de la Unit under Test (UUT)
     uut: deb_sync_top port map(
             clk => clk,
             reset => reset,
             button_in => button_in,
             button_out => button_out
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
         wait for 100 ms;
         
         --insert stimulus here
                     reset <= '1';
                     wait for 30 ms;
                     
                     reset <= '0';
                     button_in <= '1';
                     wait for 50 ms;
                     
                     button_in <= '0';
                     wait for 100 ms;
                     
                     button_in <= '1';
                     wait for 10 ms;
                                          
                     button_in <= '0';
                     wait for 100 ms;
                     
         wait;
     end process;
 end;   

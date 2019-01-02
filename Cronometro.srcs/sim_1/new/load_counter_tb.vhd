----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2019 14:32:11
-- Design Name: 
-- Module Name: load_counter_tb - Behavioral
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

entity load_counter_tb is
end load_counter_tb;

architecture Behavioral of load_counter_tb is

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
--Inputs
 signal dataIn : std_logic := '0';
 signal rst : std_logic := '0';
 
 --outputs
 signal L_dec,L_segUni,L_segDec,L_min : std_logic_vector(3 downto 0);
 
 begin
 
     --Instaciacion de la Unit under Test (UUT)
     uut: load_counter port map(
             dataIn => dataIn,
             rst => rst,
             L_dec => L_dec,
             L_segUni => L_segUni,
             L_segDec => L_segDec,
             L_min => L_min
         );
     
     --Stimulus process
     stim_proc : process
     begin
         --hold reset state 
         wait for 100 ms;
         
         --insert stimulus here
                     rst <= '1';
                    wait for 20 ms;
                    rst <= '0';
                    wait for 10 ms;
                    
                    dataIn <= '1';
                    wait for 10 ms;
                    dataIn <= '0';
                    wait for 30 ms;
                    
                    dataIn <= '1';
                    wait for 2 ms;
                    dataIn <= '0';
                    wait for 15 ms;
                    
                    dataIn <= '1';
                    wait for 1.5 ms;
                    dataIn <= '0';                   
                    wait for 15 ms;
                    
                    dataIn <= '1';
                    wait for 2 ms;
                     dataIn <= '0';   
                     wait for 15 ms;
                     
                     dataIn <= '1';
                     wait for 2 ms;
                     dataIn <= '0';  
                      wait for 15 ms;
                      
                       dataIn <= '1';
                       wait for 3 ms;
                       dataIn <= '0';   
                        wait for 15 ms;
                        
                         dataIn <= '1';
                         wait for 2 ms;
                          dataIn <= '0';   
                           wait for 15 ms;
                           
                            rst <= '1';
                            wait for 20 ms;
                            rst <= '0';
                            wait for 20 ms;
                         
         wait;
     end process;
 end;   

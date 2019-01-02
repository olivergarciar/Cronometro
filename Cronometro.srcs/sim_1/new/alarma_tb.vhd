----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2018 15:20:33
-- Design Name: 
-- Module Name: alarma_tb - Behavioral
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

entity alarma_tb is
end alarma_tb;

architecture Behavioral of alarma_tb is

-- Component declaration
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

--Inputs
signal dec : std_logic_vector(3 downto 0) := "0000";
signal segUni : std_logic_vector(3 downto 0) := "0000";
signal segDec : std_logic_vector(3 downto 0) := "0000";
signal min : std_logic_vector(3 downto 0) := "0001";
signal L_segDec : std_logic_vector(3 downto 0) := "0000";
signal L_min : std_logic_vector(3 downto 0) := "0000";
signal mode : std_logic := '1';
signal reset : std_logic := '0';

--outputs
signal led : std_logic;

begin

    --Instaciacion de la Unit under Test (UUT)
    uut: alarma port map(
           dec => dec,
           segUni => segUni,
           segDec => segDec,
           min => min,
           L_segDec => segDec,
           L_min => L_min,
           mode => mode,
           reset => reset,
           led => led
        );
    
    --Stimulus process
    stim_proc : process
    begin
        --hold reset state 
        wait for 100 ms;
        
        --insert stimulus here
                    reset<='1';
                    L_min<="0001";
                    wait for 10 ms;
                    reset<='0';
                    wait for 5 ms;
                    mode<='1';
                    wait for 5 ms;
                    L_segDec<="0010";
                    wait for 5 ms;
                    L_min<="0000";
                    wait for 5 ms;
                    reset<='1';
                    wait for 5 ms;
                    reset<='0';
                    wait for 15 ms; 
                    min<="0000";
                    wait for 5 ms;
                    segDec<="0001";
                    wait for 5 ms;
                    segUni<="0001";
                    wait for 5 ms;
                    dec<="0010";
                    wait for 10 ms;
                    reset<='1';
                    wait for 10 ms;
                    segDec<="0010";
                    wait for 10 ms;
                    reset<='0';
                    wait for 20 ms;
                    segDec<="0000";
                    wait for 10 ms;
                    
                    reset<='1';
                    wait for 10 ms;
                    L_min<="0001";
                    wait for 10 ms;
                    reset<='0';
                    wait for 10 ms;
                    
                    
                    mode<='0';
                    wait for 20 ms;
                    segUni<="0000";
                    wait for 20 ms;
                    dec<="0001";
                    wait for 20 ms;
                    dec<="0000";
                    wait for 30 ms;
                    
                    reset<='1';
                    wait for 20 ms;
                    reset<='0';
                    wait for 50 ms;
                 
                    
                    
             
                    
                                 
        wait;
    end process;
end;   

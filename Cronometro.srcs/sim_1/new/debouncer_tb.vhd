----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2018 15:49:24
-- Design Name: 
-- Module Name: debouncer_tb - Behavioral
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

entity debouncer_tb is
end debouncer_tb;

architecture Behavioral of debouncer_tb is

-- Component declaration

component debouncer
port(
        clk : in std_logic;
        reset : in std_logic;
        btn_in : in std_logic;
        btn_out : out std_logic
        );
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal btn_in : std_logic :='0';

--outputs
signal btn_out : std_logic := '0';

--Clock periods definitions
constant clk_period : time := 2 ms;

begin

    --Instaciacion de la Unit under Test (UUT)
    uut: debouncer port map(
            clk => clk,
            reset => reset,
            btn_in => btn_in,
            btn_out => btn_out
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
                    wait for 20 ms;
                    
                    reset <= '0';
                    wait for 13 ms;
                    
                    btn_in <= '1';
                    wait for 17 ms;
                    
                    btn_in <= '0';
                    wait for 53 ms;
                    
                    btn_in <= '1';
                    wait for 89 ms;
                    
                    btn_in <= '0';
                    wait for 100 ms;
                                            
        wait;
    end process;
end;   

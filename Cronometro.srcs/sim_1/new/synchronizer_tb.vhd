----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2018 16:38:59
-- Design Name: 
-- Module Name: synchronizer_tb - Behavioral
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

entity synchronizer_tb is
end synchronizer_tb;

architecture Behavioral of synchronizer_tb is

-- Component declaration
component synchronizer
port(
        clk : in std_logic;
        reset : in std_logic;
        data_in : in std_logic;
        data_out : out std_logic
        );
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal data_in : std_logic :='0';

--outputs
signal data_out : std_logic := '0';

--Clock periods definitions
constant clk_period : time := 2 ms;

begin

    --Instaciacion de la Unit under Test (UUT)
    uut: synchronizer port map(
            clk => clk,
            reset => reset,
            data_in => data_in,
            data_out => data_out
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
                    wait for 11.5 ms;
                    
                    data_in <= '1';
                    wait for 2 ms;
                    
                    data_in <= '0';
                    wait for 10 ms;
                    
                    data_in <= '1';
                    wait for 2 ms;
                    
                    data_in <= '0';
                    wait for 7 ms;
                    
                    data_in <= '1';
                    wait for 2 ms;
                    
                    data_in <= '0';
                    wait for 21 ms;
                                            
        wait;
    end process;
end;   

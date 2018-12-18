----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2018 13:53:29
-- Design Name: 
-- Module Name: counter_tb - Behavioral
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

entity counter_tb is
--  Port ( );
end counter_tb;

architecture behavior of counter_tb is

component counter
port(
        clk,reset,modo,enable,load : in std_logic;
        l : in std_logic_vector(3 downto 0);
        q : out std_logic_vector(3 downto 0);
        s : out std_logic
        );
end component;

--Inputs
signal clk : std_logic := '0';
signal reset : std_logic := '0';
signal modo : std_logic :='1';
signal enable : std_logic := '0';
signal load : std_logic := '0';
signal l : std_logic_vector(3 downto 0) := "0000";

--outputs
signal q : std_logic_vector(3 downto 0);
signal s : std_logic;

--Clock periods definitions
constant clk_period : time := 100 ms;

begin

    --Instaciacion de la Unit under Test (UUT)
    uut: counter port map(
            clk => clk,
            reset => reset,
            modo => modo,
            enable => enable,
            load => load,
            l => l,
            q => q,
            s => s
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
        wait for 1000 ms;
        
        --insert stimulus here
                    reset <= '1';
                    enable <= '1';
                    wait for 200 ms;
                    
                    reset <= '0';
                    wait for 1200 ms;
                    
                    enable <= '0';
                    wait for 200 ms;
                    
                    l <= "1000";
                    enable <= '1';
                    wait for 200 ms;
                    
                    load <= '1';
                    wait for 100 ms;
                    
                    load <='0';
                    wait for 100 ms;
                    
                    modo <='0';
                    wait for 600 ms;
                    
                    
                    
        wait;
    end process;
end;   


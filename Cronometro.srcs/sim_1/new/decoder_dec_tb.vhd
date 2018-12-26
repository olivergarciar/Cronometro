----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2018 13:22:46
-- Design Name: 
-- Module Name: decoder_dec_tb - Behavioral
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

entity decoder_dec_tb is
end decoder_dec_tb;

architecture Behavioral of decoder_dec_tb is

-- Component declaration
component decoder_dec
 port(  
           code : in std_logic_vector(3 downto 0);
           led : out std_logic_vector(6 downto 0));
end component;

--Inputs
signal code : std_logic_vector(3 downto 0);

--outputs
signal led : std_logic_vector(6 downto 0);

type vtest is record
    code : std_logic_vector(3 downto 0);
    led : std_logic_vector(6 downto 0);
end record;

type vtest_vector is array (natural range <>) of vtest;
constant test: vtest_vector := (
                        (code => "0000", led => "0000001"),
                        (code => "0001", led => "1001111"),
                        (code => "0010", led => "0010010"),
                        (code => "0011", led => "0000110"),
                        (code => "0100", led => "1001100"),
                        (code => "0101", led => "0100100"),
                        (code => "0110", led => "0100000"),
                        (code => "0111", led => "0001111"),
                        (code => "1000", led => "0000001"),
                        (code => "1001", led => "0000100"),
                        (code => "1010", led => "1111110"), -- error a partir de 9
                        (code => "1011", led => "1111110"),
                        (code => "1100", led => "1111110"),
                        (code => "1101", led => "1111110"),
                        (code => "1110", led => "1111110"),
                        (code => "1111", led => "1111110")
                        );
begin

    --Instaciacion de la Unit under Test (UUT)
    uut: decoder_dec port map(
            code => code,
            led => led
        );
    
    --Stimulus process
    stim_proc : process
    begin
        --hold reset state 
        wait for 100 ns;
        
        --insert stimulus here 
        for i in 0 to test'high loop
                    code <= test(i).code;
                    wait for 20 ns;
                    assert led = test(i).led
                    report "Salida incorrecta."
                    severity note;
        end loop;
                    assert false
                    report "Simulación finalizada. Test superado."
                    severity note;  
        wait;
    end process;
end;   

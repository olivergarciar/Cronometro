----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2018 13:08:45
-- Design Name: 
-- Module Name: decoder_dec - Behavioral
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

entity decoder_dec is
    port(
            code : in std_logic_vector(3 downto 0);
            led : out std_logic_vector(6 downto 0)
            );
end decoder_dec;

architecture Behavioral of decoder_dec is

begin
    with code select led <= "0000001" when "0000",
                                        "1001111" when "0001",
                                        "0010010" when "0010",
                                        "0000110" when "0011",
                                        "1001100" when "0100",
                                        "0100100" when "0101",
                                        "0100000" when "0110",
                                        "0001111" when "0111",
                                        "0000000" when "1000",
                                        "0000100" when "1001",
                                        "1111110" when others;
end Behavioral;

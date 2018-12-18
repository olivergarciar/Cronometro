----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 18.12.2018 20:13:14
-- Design Name: 
-- Module Name: clk_divider - Behavioral
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

entity clk_divider is
    generic(frec1 : integer := 5000000; frec2 : integer := 100000);
    port(
            clk : in std_logic;
            reset : in std_logic;
            clk_10 : out std_logic;
            clk_500 : out std_logic
            );
end clk_divider;

architecture Behavioral of clk_divider is
signal clk10 : std_logic;
signal clk500 : std_logic;
begin
    process(clk,reset)
    variable cont1,cont2 : integer;
    begin
            if(reset='1') then
                cont1:=0;
                cont2:=0;
                clk10<='0';
                clk500<='0';
            elsif clk'event and clk='1' then
                    if(cont1=frec1) then
                        cont1:=0;
                        clk10<=not(clk10);
                    elsif(cont2=frec2) then
                        cont2:=0;
                        clk500<=not(clk500);
                    else
                        cont1:=cont1+1;
                        cont2:=cont2+1;
                    end if;
            end if;
    end process;
clk_10<=clk10;
clk_500<=clk500;
end Behavioral;

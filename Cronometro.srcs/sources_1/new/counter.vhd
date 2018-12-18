----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2018 13:22:10
-- Design Name: 
-- Module Name: counter - Behavioral
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
use IEEE.NUMERIC_STD.ALL;

-- Uncomment the following library declaration if instantiating
-- any Xilinx leaf cells in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity counter is
    generic(max:integer:=10);
    port(
        clk,reset,modo,enable,load : in std_logic;
        l : in std_logic_vector(3 downto 0);
        q : out std_logic_vector(3 downto 0);
        s : out std_logic
        );
end counter;

architecture Behavioral of counter is
signal cuenta: unsigned (3 downto 0);
begin
    process(clk,reset,enable,load)
    variable salida: std_logic;
    begin
        if(reset='1') then
            cuenta<=(others=>'0');
            s<='0';
        elsif (load='1') then
            cuenta<=unsigned(l);
            s<='0';
        elsif (clk'event and clk='1')then
            if enable = '1' then
                if modo = '1' then
                        if cuenta < max then
                            cuenta<=cuenta + 1;
                            s<='0';
                            if cuenta=max-1 then
                                cuenta<="0000";
                                s<= '1';
                            end if;
                        else
                            cuenta<="0000";
                            s<='0';
                        end if;
                else
                        if cuenta >= "0000"  then
                            cuenta<=cuenta - 1;
                            s<='0';
                            if cuenta="0000" then
                                cuenta<="1001";
                                s<='1';
                            end if;
                        else
                            cuenta<="1001";
                            s<='0';
                        end if;
                    end if;
            end if;
        end if;
    end process;
    q <= std_logic_vector(cuenta);
end Behavioral;    

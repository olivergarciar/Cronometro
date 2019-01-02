----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 31.12.2018 14:45:34
-- Design Name: 
-- Module Name: alarma - Behavioral
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

entity alarma is
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
end alarma;

architecture Behavioral of alarma is

--signal led_out : std_logic := '0';

begin
    process(reset, mode, segDec, min, L_segDec, L_min, segUni, dec)
    begin
        
        if(mode = '1') then
            if(min=L_min) then
                led<='0';
                if(segDec=L_segDec) then
                    led <= '1';
                end if;
            else
                led <= '0';
            end if;
        elsif(dec="0000" and segUni="0000" and segDec="0000" and min="0000") then
                led <= '1';
        else
                led <= '0';
        end if;
        
        if(reset = '1') then
            led <= '0';
        end if;
    end process;
    
--led <= led_out; 
    
end Behavioral;

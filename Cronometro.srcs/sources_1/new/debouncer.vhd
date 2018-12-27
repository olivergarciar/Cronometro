----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2018 15:04:47
-- Design Name: 
-- Module Name: debouncer - Behavioral
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

entity debouncer is
    port(
            clk : in std_logic;
            reset : in std_logic;
            btn_in : in std_logic;
            btn_out : out std_logic
            );
end debouncer;

architecture Behavioral of debouncer is
signal q1, q2, q3 : std_logic;

begin

    process(clk)
    begin
        if(clk'event and clk='1') then
            if(reset = '1') then
                q1 <= '0';
                q2 <= '0';
                q3 <= '0';
            else
                q1 <= btn_in;
                q2 <= q1;
                q3 <= q2;
            end if;
        end if;
    end process;
    
    btn_out <= q1 and q2 and (not q3);

end Behavioral;

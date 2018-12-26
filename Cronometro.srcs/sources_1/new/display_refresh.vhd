----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 26.12.2018 13:51:10
-- Design Name: 
-- Module Name: display_refresh - Behavioral
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

entity display_refresh is
    port( 
            clk : in std_logic;
            segment_dec : in std_logic_vector(6 downto 0);
            segment_seg_uni : in std_logic_vector(6 downto 0);
            segment_seg_dec : in std_logic_vector(6 downto 0);
            segment_min : in std_logic_vector(6 downto 0);
            L_segment_dec : in std_logic_vector(6 downto 0);
            L_segment_seg_uni : in std_logic_vector(6 downto 0);
            L_segment_seg_dec : in std_logic_vector(6 downto 0);
            L_segment_min : in std_logic_vector(6 downto 0);
            display_number : out std_logic_vector (7 downto 0);
            display_selection : out std_logic_vector(7 downto 0)
            );
end display_refresh;

architecture Behavioral of display_refresh is

begin
    process (clk, segment_dec, segment_seg_uni, segment_seg_dec, segment_min, L_segment_dec, L_segment_seg_uni, L_segment_seg_dec, L_segment_min)
    variable cnt : integer range 0 to 7;
    begin
            if (clk'event and clk='1') then
                if (cnt=7) then
                    cnt := 0;
                else
                    cnt := cnt+1;
                end if;
            end if;
            
            case cnt is
                when 0 => display_selection <= "11111110";
                                display_number <= segment_dec & '1'; --Sin punto
                                
                when 1 => display_selection <= "11111101";
                                display_number <= segment_seg_uni & '0'; -- Con punto
                                
                when 2 => display_selection <= "11111011";
                                display_number <= segment_seg_dec & '1';
                                
                when 3 => display_selection <= "11110111";
                                display_number <= segment_min & '0';
                                
                when 4 => display_selection <= "11101111";
                                display_number <= L_segment_dec & '1';
                                
                when 5 => display_selection <= "11011111";
                                display_number <= L_segment_seg_uni & '0';
                                
                when 6 => display_selection <= "10111111";
                                display_number <= L_segment_seg_dec & '1';
                                
                when 7 => display_selection <= "01111111";
                                display_number <= L_segment_min & '0';
           end case;
       end process;

end Behavioral;

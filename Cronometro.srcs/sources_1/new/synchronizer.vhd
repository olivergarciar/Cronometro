----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 27.12.2018 16:25:55
-- Design Name: 
-- Module Name: synchronizer - Behavioral
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

entity synchronizer is
    generic ( num_flip_flops : natural := 2);
    port(
            clk : in std_logic;
            reset : in std_logic;
            data_in : in std_logic;
            data_out : out std_logic
            );
end synchronizer;

architecture Behavioral of synchronizer is

signal sync_chain : std_logic_vector(num_flip_flops-1 downto 0) := (others => '0');

attribute shreg_extract : string;
attribute shreg_extract of sync_chain : signal is "no";

attribute async_reg : string;
attribute async_reg of sync_chain : signal is "true";

begin

    process(clk, reset)
    begin
        if(reset = '1') then
            sync_chain <= (others => '0');
        elsif (clk'event and clk='1') then
            sync_chain <= sync_chain(sync_chain'high-1 downto 0) & data_in;
        end if;
    end process;
    
    data_out <= sync_chain(sync_chain'high);

end Behavioral;

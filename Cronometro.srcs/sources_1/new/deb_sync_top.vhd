----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 30.12.2018 16:22:48
-- Design Name: 
-- Module Name: deb_sync_top - Behavioral
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

entity deb_sync_top is
    port(
            button_in : in std_logic;
            reset : in std_logic;
            clk : in std_logic;
            button_out : out std_logic
            );
end deb_sync_top;

architecture Behavioral of deb_sync_top is

signal interData : std_logic;

component debouncer 
      port(
           clk : in std_logic;
           reset : in std_logic;
           btn_in : in std_logic;
           btn_out : out std_logic
           );
end component;

component synchronizer
      generic ( num_flip_flops : natural := 2);
      port(
           clk : in std_logic;
           reset : in std_logic;
           data_in : in std_logic;
           data_out : out std_logic
           );
end component;

begin

deb : debouncer port map(
    clk => clk,
    reset => reset,
    btn_in => button_in,
    btn_out => interData
    );
    
 sync : synchronizer generic map (num_flip_flops=>2) port map(
        clk => clk,
        reset => reset,
        data_in => interData,
        data_out => button_out
        );


end Behavioral;

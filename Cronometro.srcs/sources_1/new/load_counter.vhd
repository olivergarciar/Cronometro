----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 02.01.2019 14:09:35
-- Design Name: 
-- Module Name: load_counter - Behavioral
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

entity load_counter is
    port(
            dataIn : in std_logic;
            rst : in std_logic;
            L_dec : out std_logic_vector(3 downto 0);
            L_segUni : out std_logic_vector(3 downto 0);
            L_segDec : out std_logic_vector(3 downto 0);
            L_min : out std_logic_vector(3 downto 0)
            );
end load_counter;

architecture Behavioral of load_counter is

signal salida_segDec : std_logic;
signal salida_min : std_logic;

component counter 
    generic (max:integer := 10);
     port(
           clk,reset,modo,enable,load : in std_logic;
           l : in std_logic_vector(3 downto 0);
           q : out std_logic_vector(3 downto 0);
           s : out std_logic
           );
end component;
    
begin

contadorL_dec : counter generic map (max=>6) port map(
    clk => dataIn,
    reset => rst,
    modo => '1',
    enable => '1',
    load => '0',
    l => "0000",
    q => L_segDec,
    s => salida_segDec
    );
    
contadorL_min : counter generic map (max=>10) port map(
    clk => salida_segDec,
    reset => rst,
    modo => '1',
    enable => '1',
    load => '0',
    l => "0000",
    q => L_min,
    s => salida_min
    );
    
    L_dec <= "0000";
    L_segUni <= "0000";


end Behavioral;

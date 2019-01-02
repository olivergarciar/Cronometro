----------------------------------------------------------------------------------
-- Company: 
-- Engineer: 
-- 
-- Create Date: 17.12.2018 12:44:20
-- Design Name: 
-- Module Name: contador_top - Behavioral
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

entity contador_top is
    port(
        clk,reset,modo,enable,load : in std_logic;
        ls,lm : in std_logic_vector(3 downto 0);
        dec,segUni,segDec,min : out std_logic_vector(3 downto 0)
        );
end contador_top;

architecture Behavioral of contador_top is

signal salidaDec:std_logic;
signal salidaSegUni:std_logic;
signal salidaSegDec:std_logic;
signal salidaMin:std_logic;

--Enclavamiento del enable
signal enableSignal : std_logic := '0';

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

process(enable)
begin
    if(enable'event and enable='1') then
        enableSignal <= not enableSignal;
    end if;
end process;
    

contador_Dec : counter generic map (max=>10) port map(
    clk => clk,
    reset => reset,
    modo => modo,
    enable => enableSignal,
    load => '0',
    l => "0000",
    q => dec,
    s => salidaDec
    );
    
contador_SegUni : counter generic map (max=>10) port map(
    clk => salidaDec,
    reset => reset,
    modo => modo,
    enable => enableSignal,
    load => '0',
    l => "0000",
    q => segUni,
    s => salidaSegUni
    );
    
contador_SegDec : counter generic map (max=>6) port map(
    clk => salidaSegUni,
    reset => reset,
    modo => modo,
    enable => enableSignal,
    load => load,
    l => ls,
    q => segDec,
    s => salidaSegDec
    );
    
contador_Min : counter generic map (max=>10) port map(
    clk => salidaSegDec,
    reset => reset,
    modo => modo,
    enable => enableSignal,
    load => load,
    l => lm,
    q => min,
    s => salidaMin
    );

end Behavioral;

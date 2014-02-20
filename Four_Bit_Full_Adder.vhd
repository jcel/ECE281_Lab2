----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Combs
-- 
-- Create Date:    13:22:45 02/18/2014 
-- Design Name: 
-- Module Name:    Four_Bit_Full_Adder - Behavioral 
-- Project Name: 
-- Target Devices: 
-- Tool versions: 
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
-- any Xilinx primitives in this code.
--library UNISIM;
--use UNISIM.VComponents.all;

entity Four_Bit_Full_Adder is
    Port ( Ain : in  STD_LOGIC_VECTOR (3 downto 0);
           Bin : in  STD_LOGIC_VECTOR (3 downto 0);
			  Cin : in STD_LOGIC;
           O : out  STD_LOGIC_VECTOR (3 downto 0);
			  Overflow : out STD_LOGIC);
end Four_Bit_Full_Adder;

architecture Behavioral of Four_Bit_Full_Adder is
COMPONENT Bit_Adder
PORT(I1 : in STD_LOGIC;
     I2 : in STD_LOGIC;
	  CI : in STD_LOGIC;
	  O : out STD_LOGIC;
	  CO : out STD_LOGIC);
END COMPONENT;
SIGNAL CO0, CO1, CO2 : STD_LOGIC;
begin
Adder0: Bit_Adder PORT MAP(
I1 => Ain(0),
I2 => Bin(0),
CI => Cin,
O => O(0),
CO => CO0);
Adder1: Bit_Adder PORT MAP(
I1 => Ain(1),
I2 => Bin(1),
CI => CO0,
O => O(1),
CO => CO1);
Adder2: Bit_Adder PORT MAP(
I1 => Ain(2),
I2 => Bin(2),
CI => CO1,
O => O(2),
CO => CO2);
Adder3: Bit_Adder PORT MAP(
I1 => Ain(3),
I2 => Bin(3),
CI => CO2,
O => O(3),
CO => Overflow);
end Behavioral;


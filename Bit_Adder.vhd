----------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Jamey Combs
-- 
-- Create Date:    13:37:21 02/11/2014 
-- Design Name: 
-- Module Name:    Bit_Adder - Behavioral 
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

entity Bit_Adder is
    Port ( I1 : in  STD_LOGIC;
           I2 : in  STD_LOGIC;
			  CI : in  STD_LOGIC;
           O : out  STD_LOGIC;
           CO : out  STD_LOGIC);
end Bit_Adder;

architecture Behavioral of Bit_Adder is
SIGNAL D,E,F : STD_LOGIC;
begin
D <= I1 xor I2;
O <= E xor CI;
E <= D and CI;
F <= I1 and I2;
CO <= E or F;

end Behavioral;

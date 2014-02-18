--------------------------------------------------------------------------------
-- Company: USAFA
-- Engineer: C3C Jamey Combs
--
-- Create Date:   12:24:21 02/18/2014
-- Design Name:   
-- Module Name:   C:/Users/C16James.Combs/Desktop/ECE/Projects/Lab2/Bit_Adder_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Bit_Adder
-- 
-- Dependencies:
-- 
-- Revision:
-- Revision 0.01 - File Created
-- Additional Comments:
--
-- Notes: 
-- This testbench has been automatically generated using types std_logic and
-- std_logic_vector for the ports of the unit under test.  Xilinx recommends
-- that these types always be used for the top-level I/O of a design in order
-- to guarantee that the testbench will bind correctly to the post-implementation 
-- simulation model.
--------------------------------------------------------------------------------
LIBRARY ieee;
USE ieee.std_logic_1164.ALL;
 
-- Uncomment the following library declaration if using
-- arithmetic functions with Signed or Unsigned values
--USE ieee.numeric_std.ALL;
 
ENTITY Bit_Adder_Testbench IS
END Bit_Adder_Testbench;
 
ARCHITECTURE behavior OF Bit_Adder_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Bit_Adder
    PORT(
         I1 : IN  std_logic;
         I2 : IN  std_logic;
         CI : IN  std_logic;
         O : OUT  std_logic;
         CO : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal I1 : std_logic := '0';
   signal I2 : std_logic := '0';
   signal CI : std_logic := '0';

 	--Outputs
   signal O : std_logic;
   signal CO : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
   --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Bit_Adder PORT MAP (
          I1 => I1,
          I2 => I2,
          CI => CI,
          O => O,
          CO => CO
        );

   -- Clock process definitions
   --<clock>_process :process
   --begin
		--<clock> <= '0';
		--wait for <clock>_period/2;
		--<clock> <= '1';
		--wait for <clock>_period/2;
   --end process;
 

   -- Stimulus process
   stim_proc: process
   begin		
      -- hold reset state for 100 ns.
      I1 <= '0';
		I2 <= '0';
		CI <= '0';
		wait for 100 ns;	
		
		I1 <= '0';
		I2 <= '0';
		CI <= '1';
		wait for 100 ns;	
		
		I1 <= '0';
		I2 <= '1';
		CI <= '0';
		wait for 100 ns;
		
		I1 <= '0';
		I2 <= '1';
		CI <= '1';
		wait for 100 ns;
		
		I1 <= '1';
		I2 <= '0';
		CI <= '0';
		wait for 100 ns;
		
		I1 <= '1';
		I2 <= '0';
		CI <= '1';
		wait for 100 ns;
		
		I1 <= '1';
		I2 <= '1';
		CI <= '0';
		wait for 100 ns;
		
		I1 <= '1';
		I2 <= '1';
		CI <= '1';
		wait for 100 ns;
		
      wait;	

     --wait for <clock>_period*10;

      -- insert stimulus here 

   end process;

END;

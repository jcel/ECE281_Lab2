--------------------------------------------------------------------------------
-- Company: 
-- Engineer:
--
-- Create Date:   15:30:45 02/18/2014
-- Design Name:   
-- Module Name:   C:/Users/C16James.Combs/Desktop/ECE/Projects/Lab2/Four_Bit_Testbench.vhd
-- Project Name:  Lab2
-- Target Device:  
-- Tool versions:  
-- Description:   
-- 
-- VHDL Test Bench Created by ISE for module: Four_Bit_Full_Adder
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
 
ENTITY Four_Bit_Testbench IS
END Four_Bit_Testbench;
 
ARCHITECTURE behavior OF Four_Bit_Testbench IS 
 
    -- Component Declaration for the Unit Under Test (UUT)
 
    COMPONENT Four_Bit_Full_Adder
    PORT(
         Ain : IN  std_logic_vector(3 downto 0);
         Bin : IN  std_logic_vector(3 downto 0);
         Cin : IN  std_logic;
         O : OUT  std_logic_vector(3 downto 0);
         Overflow : OUT  std_logic
        );
    END COMPONENT;
    

   --Inputs
   signal Ain : std_logic_vector(3 downto 0) := (others => '0');
   signal Bin : std_logic_vector(3 downto 0) := (others => '0');
   signal Cin : std_logic := '0';

 	--Outputs
   signal O : std_logic_vector(3 downto 0);
   signal Overflow : std_logic;
   -- No clocks detected in port list. Replace <clock> below with 
   -- appropriate port name 
 
  --constant <clock>_period : time := 10 ns;
 
BEGIN
 
	-- Instantiate the Unit Under Test (UUT)
   uut: Four_Bit_Full_Adder PORT MAP (
          Ain => Ain,
          Bin => Bin,
          Cin => Cin,
          O => O,
          Overflow => Overflow
        );

   -- Clock process definitions
  -- <clock>_process :process
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
		wait for 100 ns;
		Ain(0) <= '0';
		Ain(1) <= '0';
		Ain(2) <= '0';
		Ain(3) <= '0';
		Bin(0) <= '0';
		Bin(1) <= '0';
		Bin(2) <= '0';
		Bin(3) <= '0';
		Cin <= '0';
		wait for 100 ns;
		Ain(0) <= '1';
		Ain(1) <= '1';
		Ain(2) <= '1';
		Ain(3) <= '1';
		Bin(0) <= '1';
		Bin(1) <= '1';
		Bin(2) <= '1';
		Bin(3) <= '1';
		Cin <= '1';
		wait for 100 ns;
		Ain(0) <= '1';
		Ain(1) <= '0';
		Ain(2) <= '1';
		Ain(3) <= '0';
		Bin(0) <= '0';
		Bin(1) <= '1';
		Bin(2) <= '0';
		Bin(3) <= '1';
		Cin <= '0';
		wait for 100 ns;
		Ain(0) <= '1';
		Ain(1) <= '0';
		Ain(2) <= '1';
		Ain(3) <= '0';
		Bin(0) <= '0';
		Bin(1) <= '1';
		Bin(2) <= '0';
		Bin(3) <= '1';
		Cin <= '1';
		wait for 100 ns;
      --wait for <clock>_period*10;

      -- insert stimulus here 

      wait;
   end process;

END;

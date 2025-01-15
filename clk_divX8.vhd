library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clk_divX8 IS

	PORT
	(
		clock_IN				: IN	STD_LOGIC;
		clock_X8			    : OUT	STD_LOGIC);
	
END clk_divX8;

ARCHITECTURE a OF clk_divX8 IS

	SIGNAL	count_8 : STD_LOGIC_VECTOR(3 DOWNTO 0); 
	SIGNAL  clock_8_int : STD_LOGIC;
BEGIN
	PROCESS 
	BEGIN
-- Divide by 8
		WAIT UNTIL clock_IN'EVENT and clock_IN = '1';
			IF count_8 < 7 THEN
				count_8 <= count_8 + 1;
			ELSE
				count_8 <= (others => '0');
			END IF;
			IF count_8 < 4 THEN
				clock_8_int <= '0';
			ELSE
				clock_8_int <= '1';
			END IF;	

-- Ripple clocks are used in this code to save prescalar hardware
-- Sync all clock prescalar outputs back to master clock signal
			clock_X8 <= clock_8_int;
	END PROCESS;	


END a;


library IEEE;
use  IEEE.STD_LOGIC_1164.all;
use  IEEE.STD_LOGIC_ARITH.all;
use  IEEE.STD_LOGIC_UNSIGNED.all;

ENTITY clk_div IS

	PORT
	(
		clock_50Mhz				: IN	STD_LOGIC;
		clock_82x2				: OUT	STD_LOGIC;
		clock_164				: OUT	STD_LOGIC;
		clock_328				: OUT	STD_LOGIC;
		clock_656				: OUT	STD_LOGIC;
		clock_1312				: OUT	STD_LOGIC;
		clock_2624				: OUT	STD_LOGIC;
		clock_5248				: OUT	STD_LOGIC;
		clock_10496				: OUT	STD_LOGIC);
	
END clk_div;

ARCHITECTURE a OF clk_div IS

	SIGNAL	count_82x2 : STD_LOGIC_VECTOR(7 DOWNTO 0); 
	SIGNAL  clock_82x2_int, clock_164_int, clock_328_int, clock_656_int: STD_LOGIC; 
	SIGNAL	clock_1312_int, clock_2624_int, clock_5248_int, clock_10496_int : STD_LOGIC;
BEGIN
	PROCESS 
	BEGIN
-- Divide by 82
		WAIT UNTIL clock_50Mhz'EVENT and clock_50Mhz = '1';
			IF count_82x2 < 163 THEN
				count_82x2 <= count_82x2 + 1;
			ELSE
				count_82x2 <= (others => '0');
			END IF;
			IF count_82x2 < 82 THEN
				clock_82x2_int <= '0';
			ELSE
				clock_82x2_int <= '1';
			END IF;	

-- Ripple clocks are used in this code to save prescalar hardware
-- Sync all clock prescalar outputs back to master clock signal
			clock_82x2 <= clock_82x2_int;
			clock_164 <= clock_164_int;
			clock_328 <= clock_328_int;
			clock_656 <= clock_656_int;
			clock_1312 <= clock_1312_int;
			clock_2624 <= clock_2624_int;
			clock_5248 <= clock_5248_int;
			clock_10496 <= clock_10496_int;
	END PROCESS;	

-- Divide by 2
	PROCESS 
	BEGIN
		WAIT UNTIL clock_82x2_int'EVENT and clock_82x2_int = '1';
				clock_164_int <= NOT clock_164_int;
	END PROCESS;	


-- Divide by 2
	PROCESS 
	BEGIN
		WAIT UNTIL clock_164_int'EVENT and clock_164_int = '1';
				clock_328_int <= NOT clock_328_int;
	END PROCESS;	


-- Divide by 2
	PROCESS 
	BEGIN
		WAIT UNTIL clock_328_int'EVENT and clock_328_int = '1';
				clock_656_int <= NOT clock_656_int;
	END PROCESS;	


-- Divide by 2
	PROCESS 
	BEGIN
		WAIT UNTIL clock_656_int'EVENT and clock_656_int = '1';
				clock_1312_int <= NOT clock_1312_int;
	END PROCESS;	


-- Divide by 2
	PROCESS 
	BEGIN
		WAIT UNTIL clock_1312_int'EVENT and clock_1312_int = '1';
				clock_2624_int <= NOT clock_2624_int;
	END PROCESS;	


-- Divide by 2
	PROCESS 
	BEGIN
		WAIT UNTIL clock_2624_int'EVENT and clock_2624_int = '1';
				clock_5248_int <= NOT clock_5248_int;
	END PROCESS;	


-- Divide by 2
	PROCESS 
	BEGIN
		WAIT UNTIL clock_5248_int'EVENT and clock_5248_int = '1';
				clock_10496_int <= NOT clock_10496_int;
	END PROCESS;	


END a;


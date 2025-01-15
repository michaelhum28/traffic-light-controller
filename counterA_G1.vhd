LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;
USE IEEE.STD_LOGIC_ARITH.ALL;
USE IEEE.STD_LOGIC_UNSIGNED.ALL;

ENTITY counterA_G1 IS
    PORT (
        rst, clk, up_dwn, EVNT: IN STD_LOGIC;
        rv : IN STD_LOGIC_VECTOR(3 DOWNTO 0);
        o : OUT STD_LOGIC_VECTOR(3 DOWNTO 0));
END counterA_G1;

ARCHITECTURE behav OF counterA_G1 IS
    SIGNAL count : STD_LOGIC_VECTOR(3 DOWNTO 0);
BEGIN
    PROCESS (rst, clk)
    BEGIN
        IF (rst = '1') THEN
            count <= rv;
        ELSIF (clk'event AND clk = '1' and EVNT = '1') THEN
            IF (up_dwn = '1') THEN
                count <= count - 1;
            ELSE
                count <= count + 1;
            END IF;
        END IF;
    END PROCESS;
    o <= count;
END behav;
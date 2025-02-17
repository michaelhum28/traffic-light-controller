LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY Mux4to1_G1 IS
    PORT (
        oSEL0, oSEL1, oSEL2 : IN STD_LOGIC;
        IN0, IN1, IN2, IN3 : IN STD_LOGIC_VECTOR(47 DOWNTO 0);
        OUT0 : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
    );

END Mux4to1_G1;



ARCHITECTURE struct OF Mux4to1_G1 IS
    SIGNAL SEL0, SEL1, SEL2 : STD_LOGIC_VECTOR(47 DOWNTO 0);
BEGIN

    SEL0 <= (others => oSEL0);
    SEL1 <= (others => oSEL1);
    SEL2 <= (others => oSEL2);



    OUT0 <= (IN0 AND NOT(SEL2) AND NOT(SEL1) AND NOT(SEL0)) OR
        (IN0 AND NOT(SEL2) AND NOT(SEL1) AND SEL0) OR
        (IN1 AND NOT(SEL2) AND SEL1 AND SEL0) OR
        (IN2 AND NOT(SEL2) AND SEL1 AND NOT(SEL0)) OR
        (IN3 AND SEL2 AND SEL1 AND NOT(SEL0));

END ARCHITECTURE;
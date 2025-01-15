LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY subMUXTEST IS
    PORT (
        S0, S1, S2 : IN STD_LOGIC;
        OUT0 : OUT STD_LOGIC_VECTOR(47 DOWNTO 0)
    );

END subMUXTEST;



ARCHITECTURE struct OF subMUXTEST IS
BEGIN
    
    MUX: entity work.Mux4to1_G1(struct)
    port map(S0, S1, S2, x"4d675f53720d", x"4d795f53720d", x"4d725f53670d", x"4d725f53790d", OUT0);

END ARCHITECTURE;
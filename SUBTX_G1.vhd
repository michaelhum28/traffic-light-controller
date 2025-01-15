library ieee;
use  ieee.std_logic_1164.all;
    
entity SUBTX_G1 is
    Port(

        CLK, RESET, S0, S1, TDRE, CTR_Load, CTR_Dec:in std_logic;
        X        :out std_logic
    );

end SUBTX_G1;

architecture struct of SUBTX_G1 is

signal CTR_Out: STD_LOGIC;
signal CTR_Val: STD_LOGIC_VECTOR(3 downto 0);
    
begin
    
    CTR: entity work.counterA_G1(behav)
        port map(CTR_Load, CLK, '1', CTR_Dec, "1000", CTR_Val);
    
    COMP: entity work.comp_G1(struct)
            port map(CTR_Val, CTR_Out);


    X <= (not(S1) and not(S0) and '0') or
         (not(S1) and S0 and TDRE) or
         (S1 and not(S0) and '0') or
         (S1 and S0 and CTR_Out);
    
    
end architecture;
library ieee;
use  ieee.std_logic_1164.all;
    
entity SUBUTX_G1 is
    Port(

        CLK, RESET, S0, S1, TDRE, CTR_Load, CTR_Dec:in std_logic;
        X        :out std_logic
    );

end SUBUTX_G1;

architecture struct of SUBUTX_G1 is

signal CTR_Out, q0, q1, StateChanged: STD_LOGIC;
signal CTR_Val: STD_LOGIC_VECTOR(3 downto 0);
    
begin
    
    CTR: entity work.counterA_G1(behav)
        port map(CTR_Load, CLK, '1', CTR_Dec, "0110", CTR_Val);
    
    COMP: entity work.comp_G1(struct)
            port map(CTR_Val, CTR_Out);

    DFFS0: entity work.dff_1b_G1(struct)
        port map(CLK, S0, '0', RESET, q0);

    DFFS1: entity work.dff_1b_G1(struct)
        port map(CLK, S1, '0', RESET, q1);

                    

    StateChanged <= (S0 xor q0) or (S1 xor q1);
    
    X <= (not(S1) and not(S0) and TDRE) or
         (not(S1) and S0 and CTR_Out) or
         (S1 and not(S0) and TDRE) or
         (S1 and S0 and StateChanged);
    
    
end architecture;
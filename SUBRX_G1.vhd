LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY SUBRX_G1 IS
    PORT (
        CLK, RESET, S0, S1, S2, S3, CTR_Load, CTR_Dec, BCTR_Load, BCTR_Dec, RxDOut, RDRF : IN STD_LOGIC;
        X : OUT STD_LOGIC
    );

END SUBRX_G1;

ARCHITECTURE struct OF SUBRX_G1 IS

    SIGNAL CTRx4_Out, CTRx8_Out, CTRx12_Out, CTRx16_Out, BCTR_Out, GCount, BCTR_F : STD_LOGIC;
    SIGNAL CTR_Val, BCTR_Val : STD_LOGIC_VECTOR(3 DOWNTO 0);

BEGIN

    CTR : ENTITY work.counterA_G1(behav)
        PORT MAP(CTR_Load, CLK, '1', CTR_Dec, "1110", CTR_Val);

    BCTR : ENTITY work.counterA_G1(behav)
        PORT MAP(BCTR_Load, CLK, '1', BCTR_Dec, "1001", BCTR_Val);

    COMP : ENTITY work.comp4_G1(struct)
        PORT MAP(CTR_Val, CTRx4_Out, CTRx8_Out, CTRx12_Out, CTRx16_Out);

    COMPB : ENTITY work.compB_G1(struct)
        PORT MAP(BCTR_Val, BCTR_Out, BCTR_F);

    GCount <= (BCTR_F AND '1' ) or (not(BCTR_F) AND CTRx16_Out);

    X <= ('0' AND NOT(S3) AND NOT(S2) AND NOT(S1) AND NOT(S0)) OR
         (CTRx4_Out AND NOT(S3) AND NOT(S2) AND NOT(S1) AND S0) OR
         (RxDOut AND NOT(S3) AND NOT(S2) AND S1 AND NOT(S0)) OR
         (CTRx16_Out AND NOT(S3) AND NOT(S2) AND S1 AND S0) OR
         ('0' AND NOT(S3) AND S2 AND NOT(S1) AND NOT(S0)) OR
         (BCTR_Out AND NOT(S3) AND S2 AND NOT(S1) AND S0) OR
         (GCount AND NOT(S3) AND S2 AND S1 AND NOT(S0)) OR
         ('0' AND NOT(S3) AND S2 AND S1 AND S0) OR
         ('0' AND S3 AND NOT(S2) AND NOT(S1) AND NOT(S0)) OR
         (RDRF AND S3 AND NOT(S2) AND NOT(S1) AND S0);
END ARCHITECTURE;
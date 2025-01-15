LIBRARY ieee;
USE ieee.std_logic_1164.ALL;

ENTITY RX_G1 IS
    PORT (
        BCLKx8, RESET, RxD : IN STD_LOGIC;
        RDRFOut, URSOut : OUT STD_LOGIC;
        RSROut, RDROut : OUT STD_LOGIC_VECTOR(7 DOWNTO 0);
        RSOut : OUT STD_LOGIC_VECTOR(3 DOWNTO 0);
        SubRXOut, SubURXOut : OUT STD_LOGIC
    );

END RX_G1;

ARCHITECTURE struct OF RX_G1 IS

    SIGNAL rs0, rs1, rs2, rs3, rx, RDRF, RDRF_Set, RDRF_Reset, RxDOut : STD_LOGIC;
    SIGNAL rsA, rsB, rsC, rsD, rsE, rsF, rsG, rsH, rsI, rsJ : STD_LOGIC;

    SIGNAL us0, ux : STD_LOGIC;
    SIGNAL usA, usB : STD_LOGIC;

    SIGNAL CTR_Load, CTR_Dec, BCTR_Load, BCTR_DEC : STD_LOGIC;
    SIGNAL RSR_Out, RDR_Out : STD_LOGIC_VECTOR(7 DOWNTO 0);

BEGIN

    RSROut <= RSR_Out;
    RDROut <= RDR_Out;

    RDRFOut <= RDRF;

    RSOut <= rs3 & rs2 & rs1 & rs0;

    URSOut <= us0;

    SubRXOut <= rx;
    SubURXOut <= ux;

    rsA <= (NOT(rs3) AND NOT(rs2) AND NOT(rs1) AND NOT(rs0));
    rsB <= (NOT(rs3) AND NOT(rs2) AND NOT(rs1) AND rs0);
    rsC <= (NOT(rs3) AND NOT(rs2) AND rs1 AND NOT(rs0));
    rsD <= (NOT(rs3) AND NOT(rs2) AND rs1 AND rs0);
    rsE <= (NOT(rs3) AND rs2 AND NOT(rs1) AND NOT(rs0));
    rsF <= (NOT(rs3) AND rs2 AND NOT(rs1) AND rs0);
    rsG <= (NOT(rs3) AND rs2 AND rs1 AND NOT(rs0));
    rsH <= (NOT(rs3) AND rs2 AND rs1 AND rs0);
    rsI <= (rs3 AND NOT(rs2) AND NOT(rs1) AND NOT(rs0));
    rsJ <= (rs3 AND NOT(rs2) AND NOT(rs1) AND rs0);
    usA <= NOT(us0);
    usB <= us0;
    CTR_Dec <= rsB OR rsC OR rsD OR rsG or rsF;
    CTR_Load <= rsA OR rsH;

    BCTR_Dec <= rsF;
    BCTR_Load <= rsE;

    RDRF_Set <= rsI;
    RDRF_Reset <= usB;

    ux <= RDRF;
    SUBRX : ENTITY work.SUBRX_G1(struct)
        PORT MAP(BCLKx8, RESET, rs0, rs1, rs2, rs3, CTR_Load, CTR_Dec, BCTR_Load, BCTR_Dec, RxDOut, RDRF, rx);


    RDFF0 : ENTITY work.dff_1b_G1(struct)
        PORT MAP(BCLKx8, ((NOT(rs1) AND NOT(rs0)) OR (NOT(rs0) AND rx) OR (rs3 AND rx) OR (rs2 AND rs1 AND rs0) OR (NOT(rs3) AND NOT(rs2) AND rs0 AND NOT(rx))), '0', RESET, rs0);

    RDFF1 : ENTITY work.dff_1b_G1(struct)
        PORT MAP(BCLKx8, ((rs1 AND NOT(rs0) AND rx) OR (rs2 AND rs1 AND NOT(rs0)) OR (NOT(rs2) AND rs1 AND rs0 AND NOT(rx)) OR (rs2 AND NOT(rs1) AND rs0 AND NOT(rx)) OR (NOT(rs3) AND NOT(rs2) AND NOT(rs1) AND rs0 AND rx)), '0', RESET, rs1);

    RDFF2 : ENTITY work.dff_1b_G1(struct)
        PORT MAP(BCLKx8, ((rs2 AND NOT(rs0)) OR (rs2 AND NOT(rx)) OR (rs2 AND rs1) OR (rs1 AND NOT(rs0) AND NOT(rx))), '0', RESET, rs2);

    RDFF3 : ENTITY work.dff_1b_G1(struct)
        PORT MAP(BCLKx8, ((rs3 AND NOT(rs0)) OR (rs3 AND rx) OR (rs2 AND NOT(rs1) AND rs0 AND rx)), '0', RESET, rs3);


    UDFF0 : ENTITY work.dff_1b_G1(struct)
        PORT MAP(BCLKx8, NOT(us0) AND ux, '0', RESET, us0);
    RxFF : ENTITY work.dff_1b_G1(struct)
        PORT MAP(BCLKx8, RxD, '0', RESET, RxDOut);
    RDRF1 : ENTITY work.dff_1b_G1(struct)
        PORT MAP(BCLKx8, RDRF, RDRF_Set, RDRF_Reset, RDRF);


    RSR : ENTITY work.reg_G1(struct)
        PORT MAP(BCLKx8, RESET, '0', '0', rsH, '0', RXDOut, "00000000", RSR_Out);

    RDR : ENTITY work.reg_G1(struct)
        PORT MAP(BCLKx8, RESET, rsI, '0', '0', '0', '0', RSR_Out, RDR_Out);

END ARCHITECTURE;
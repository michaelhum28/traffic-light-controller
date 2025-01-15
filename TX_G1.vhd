library ieee;
use  ieee.std_logic_1164.all;
    
entity TX_G1 is
    Port(
        BCLK, RESET, S0, S1, S2 :in std_logic;
        TxD, TDREOut       :out std_logic;
        TSROut, TDROut: out STD_LOGIC_VECTOR(7 downto 0);
        MuxOut, MSGOut: out STD_LOGIC_VECTOR(47 downto 0);
        TSOut, USOut: out STD_LOGIC_VECTOR(1 downto 0);
        SubTXOut, SubUXOut, CTRDEC: out std_logic
    );

end TX_G1;

architecture struct of TX_G1 is
    
    signal ts0, ts1, tx, TCTR_Load, TCTR_Dec, tsA, tsB, tsC, tsD, TDRE, TDRE_Set, TDRE_Reset: STD_LOGIC;
    signal us0, us1, ux, UCTR_Load, UCTR_Dec, usA, usB, usC, usD: STD_LOGIC;
    signal TSR_Out, TDR_Out: STD_LOGIC_VECTOR(7 downto 0);
    signal Mux_Out, MSG_Out : STD_LOGIC_VECTOR(47 downto 0);

begin

    TSROut <= TSR_Out;
    TDROut <= TDR_Out;
    MuxOut <= Mux_Out;
    MSGOut <= MSG_Out;

    TDREOut <= TDRE;

    TSOut(1) <= ts1;
    TSOut(0) <= ts0;

    USOut(1) <= us1;
    USOut(0) <= us0;
    
    SubTXOut <= tx;
    SubUXOut <= ux;

    CTRDEC <= TCTR_Dec;

    tsA <= (not(ts1) and not(ts0));
    tsB <= (not(ts1) and ts0);
    tsC <= (ts1 and not(ts0));
    tsD <= (ts1 and ts0);

    usA <= (not(us1) and not(us0));
    usB <= (not(us1) and us0);
    usC <= (us1 and not(us0));
    usD <= (us1 and us0);

    UCTR_Dec <= usB;
    UCTR_Load <= usA;

    TCTR_Dec <= tsD;
    TCTR_Load <= tsC;



    TDRE_Set <= tsA or tsC;
    TDRE_Reset <= usB;
    

    SUBTX: entity work.SUBTX_G1(struct)
    port map(BCLK, RESET, ts0, ts1, TDRE, TCTR_Load, TCTR_Dec, tx);

    SUBUTX: entity work.SUBUTX_G1(struct)
    port map(BCLK, RESET, us0, us1, TDRE, UCTR_Load, UCTR_Dec, ux);

        
    TDFF0: entity work.dff_1b_G1(struct)
        port map(BCLK, (tx or ts1 or not(ts0)), '0', RESET, ts0);

    TDFF1: entity work.dff_1b_G1(struct)
        port map(BCLK, ((ts0 and not(tx)) or (ts1 and not(ts0))), '0', RESET, ts1);

        
    UDFF0: entity work.dff_1b_G1(struct)
        port map(BCLK, ((not(us1) and ux) or (not(us0) and ux) or (us1 and us0 and not(ux))), '0', RESET, us0);

    UDFF1: entity work.dff_1b_G1(struct)
        port map(BCLK, ((not(us1) and us0) or (us1 and not(ux))), '0', RESET, us1);

    TxFF: entity work.dff_1b_G1(struct)
        port map(BCLK, TSR_Out(0), (tsA or tsB), tsC, TxD);


    TDRE1: entity work.dff_1b_G1(struct)
            port map(BCLK, TDRE, TDRE_Set, TDRE_Reset, TDRE);


    TSR: entity work.reg_G1(struct)
        port map(BCLK, RESET, tsC, '0', tsD, '0', '0', TDR_Out, TSR_Out);

    TDR: entity work.reg_G1(struct)
        port map(BCLK, RESET, usB, '0', '0', '0','0', MSG_Out(7 downto 0), TDR_Out);

    MUX: entity work.Mux4to1_G1(struct)
        port map(S0, S1, S2, x"4d675f53720d", x"4d795f53720d", x"4d725f53670d", x"4d725f53790d", Mux_Out);
    
    MSG: entity work.reg48_G1(struct)
        port map(BCLK, RESET, usA, usB, Mux_Out, MSG_Out);
    
    

    

end architecture;
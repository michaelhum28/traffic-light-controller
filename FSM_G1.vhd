library ieee;
use  ieee.std_logic_1164.all;
    
entity FSM_G1 is
    Port(
        CLK, RESET, SSCS  :in std_logic;
        MSC, MT, SSC, SST :in STD_LOGIC_VECTOR(3 downto 0);
        OutS2, OutS1, OutS0, OutX       :out std_logic;
        MSTLO, SSTLO       :out STD_LOGIC_VECTOR(2 downto 0);
        BCD1_OUT, BCD2_OUT       :out STD_LOGIC_VECTOR(3 downto 0)
    );

end FSM_G1;

architecture struct of FSM_G1 is
    
    signal s0, s1, s2, x : STD_LOGIC;
    signal countOut : STD_LOGIC_VECTOR(3 downto 0);
begin


    SUBX: entity work.SUBX_G1(struct)
    port map(CLK, RESET, s0, s1, s2, SSCS, MSC, MT, SSC, SST, x, countOut);

        
    T2: entity work.tff_1b_G1(struct)
        port map(CLK, (s1 and not(s0) and x), '0', RESET, s2);
        
    T1: entity work.tff_1b_G1(struct)
        port map(CLK, (not(s1) and s0 and x) or (s2 and not(s0) and x), '0', RESET, s1);

    T0: entity work.tff_1b_G1(struct)
        port map(CLK, (not(s1) and not(s0) and x) or (s1 and s0 and x), '0', RESET, s0);

            
    MSTL: entity work.MuxTL_G1(struct)
        port map(s0, s1, s2, "001", "001", "010", "100", "100", MSTLO);

    SSTL: entity work.MuxTL_G1(struct)
        port map(s0, s1, s2, "100", "100", "100", "001", "010", SSTLO);

    
    BCDCONV: entity work.bcdConv_G1(behav)
        port map(countOut, BCD1_OUT, BCD2_OUT);

    OutS2 <= s2;
    OutS1 <= s1;
    OutS0 <= s0;
    OutX <= x;
    
end architecture;
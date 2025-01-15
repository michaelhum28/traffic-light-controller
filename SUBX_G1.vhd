library ieee;
use  ieee.std_logic_1164.all;
    
entity SUBX_G1 is
    Port(

        CLK, RESET, SEL0, SEL1, SEL2, SSCS   :in std_logic;
        MSCrv, MTrv, SSCrv, SSTrv    :in STD_LOGIC_VECTOR(3 downto 0);
        X        :out std_logic;
        CountOut :out STD_LOGIC_VECTOR(3 downto 0)
    );

end SUBX_G1;

architecture struct of SUBX_G1 is

signal MSCReset, MTReset, SSCReset, SSTReset: STD_LOGIC;
signal MSCOut, MTOut, SSCOut, SSTOut, MuxOut: STD_LOGIC_VECTOR(3 downto 0);
    
begin
    
    DMUX: entity work.CountR_G1(struct)
        port map(SEL0, SEL1, SEL2, MSCReset, MTReset, SSCReset, SSTReset);

        
    MSC: entity work.counter_G1(behav)
            port map(MSCReset or RESET, CLK, '1', MSCrv, MSCOut);
    
    MT: entity work.counter_G1(behav)
            port map(MTReset or RESET, CLK, '1', MTrv, MTOut);

    SSC: entity work.counter_G1(behav)
            port map(SSCReset or RESET, CLK, '1', SSCrv, SSCOut);

    SST: entity work.counter_G1(behav)
            port map(SSTReset or RESET, CLK, '1', SSTrv, SSTOut);

    MUX: entity work.MuxCT_G1(struct)
            port map(SEL0, SEL1, SEL2, not(SSCS), MSCOut, MTOut, SSCOut, SSTOut, MuxOut);
    
    CountOut <= MuxOut;
    
    COMP: entity work.comp_G1(struct)
            port map(MuxOut, X);
    
    
end architecture;
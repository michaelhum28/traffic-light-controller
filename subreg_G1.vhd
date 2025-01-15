library ieee;
use  ieee.std_logic_1164.all;
    
entity subreg_G1 is
    Port(
        CLK, RESET, Load, LShift, RShift, D, L, R :in std_logic;
        Q       :out std_logic
    );

end subreg_G1;

architecture struct of subreg_G1 is
    
    signal setBit, outBit :STD_LOGIC;
    
begin

    
    setBit <= (Load and not(LShift) and not(RShift) and D) 
            or (not(Load) and LShift and not(RShift) and L) 
            or (not(Load) and not(LShift) and RShift and R)
            or (not(Load) and not(LShift) and not(RShift) and outBit);
    
    DFF: entity work.dff_1b_G1(struct)
    port map(CLK, setBit, '0', RESET, outBit);

    Q <= outBit;

end architecture;
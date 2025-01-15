library ieee;
use  ieee.std_logic_1164.all;
    
entity reg48_G1 is
    Port(
        CLK, RESET, Load, RShift  :in std_logic;
        D :in STD_LOGIC_VECTOR(47 downto 0);
        Q :out STD_LOGIC_VECTOR(47 downto 0)
    );

end reg48_G1;

architecture struct of reg48_G1 is

    signal ls: STD_LOGIC;
    signal l5, l4, l3, l2, l1, l0, nLoad, nRShift: STD_LOGIC_VECTOR(7 downto 0);
    signal r5, r4, r3, r2, r1, r0: STD_LOGIC_VECTOR(7 downto 0);
    
begin

    nLoad <= (others => Load);

    nRShift <= (others => RShift);

    ls <= Load or RShift;

    l5 <= (nLoad and not(nRShift) and D(47 downto 40)) or (not(nLoad) and nRShift and "00000000") or (not(nLoad) and not(nRShift) and r5);

    l4 <= (nLoad and not(nRShift) and D(39 downto 32)) or (not(nLoad) and nRShift and r5) or (not(nLoad) and not(nRShift) and r4);

    l3 <= (nLoad and not(nRShift) and D(31 downto 24)) or (not(nLoad) and nRShift and r4) or (not(nLoad) and not(nRShift) and r3);

    l2 <= (nLoad and not(nRShift) and D(23 downto 16)) or (not(nLoad) and nRShift and r3) or (not(nLoad) and not(nRShift) and r2);

    l1 <= (nLoad and not(nRShift) and D(15 downto 8)) or (not(nLoad) and nRShift and r2) or (not(nLoad) and not(nRShift) and r1);

    l0 <= (nLoad and not(nRShift) and D(7 downto 0)) or (not(nLoad) and nRShift and r1) or (not(nLoad) and not(nRShift) and r0);

    Reg5: entity work.reg_G1(struct)
        port map(CLK, RESET, ls, '0', '0', '0', '0', l5, r5);
    
    Q(47 downto 40) <= r5;

    Reg4: entity work.reg_G1(struct)
        port map(CLK, RESET, ls, '0', '0', '0', '0', l4, r4);
    
    Q(39 downto 32) <= r4;

    Reg3: entity work.reg_G1(struct)
        port map(CLK, RESET, ls, '0', '0', '0', '0', l3, r3);
    
    Q(31 downto 24) <= r3;

    Reg2: entity work.reg_G1(struct)
        port map(CLK, RESET, ls, '0', '0', '0', '0', l2, r2);
    
    Q(23 downto 16) <= r2;

    Reg1: entity work.reg_G1(struct)
        port map(CLK, RESET, ls, '0', '0', '0', '0', l1, r1);
    
    Q(15 downto 8) <= r1;

    Reg0: entity work.reg_G1(struct)
        port map(CLK, RESET, ls, '0', '0', '0', '0', l0, r0);
    
    Q(7 downto 0) <= r0;
    

end architecture;
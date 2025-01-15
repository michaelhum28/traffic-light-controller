library ieee;
use  ieee.std_logic_1164.all;
    
entity reg_G1 is
    Port(
        CLK, RESET, Load, LShift, RShift, L, R  :in std_logic;
        D :in STD_LOGIC_VECTOR(7 downto 0);
        Q :out STD_LOGIC_VECTOR(7 downto 0)
    );

end reg_G1;

architecture struct of reg_G1 is

    signal q7, q6, q5, q4, q3, q2, q1, q0 : STD_LOGIC;
    
begin

    SR7: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(7), q6, R, q7);
    Q(7) <= q7;

    SR6: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(6), q5, q7, q6);
    Q(6) <= q6;

    SR5: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(5), q4, q6, q5);
    Q(5) <= q5;

    SR4: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(4), q3, q5, q4);
    Q(4) <= q4;

    SR3: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(3), q2, q4, q3);
    Q(3) <= q3;

    SR2: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(2), q1, q3, q2);
    Q(2) <= q2;

    SR1: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(1), q0, q2, q1);
    Q(1) <= q1;

    SR0: entity work.subreg_G1(struct)
    port map(CLK, RESET, Load, LShift, RShift, D(0), L, q1, q0);
    Q(0) <= q0;
    

    

end architecture;
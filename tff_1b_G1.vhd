library ieee;
use  ieee.std_logic_1164.all;
    
entity tff_1b_G1 is
    Port(
        CLK, T, SET, CLR   :in std_logic;
        Q, QN               :out std_logic
    );

end tff_1b_G1;

architecture struct of tff_1b_G1 is
    signal dq, dqn, din: STD_LOGIC;
begin

    din <= (dq and not(T)) or (dqn and T);

    DFF: entity work.dff_1b_G1(struct)
        port map(CLK, din, SET, CLR, dq, dqn);

    
    Q <= dq;
    QN <= dqn;
     
end architecture;
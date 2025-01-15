library ieee;
use  ieee.std_logic_1164.all;
    
entity dff_1b_G1 is
    Port(
        CLK, D, SET, CLR   :in std_logic;
        Q, QN               :out std_logic
    );

end dff_1b_G1;

architecture struct of dff_1b_G1 is
    signal out1, out2, out3, out4, out5, out6: STD_LOGIC;
begin

    NAND1: entity work.nand3_G1(struct)
        port map(not(SET), out4, out2, out1);

    NAND2: entity work.nand3_G1(struct)
        port map(out1, CLK, not(CLR), out2);



    NAND3: entity work.nand3_G1(struct)
        port map(out2, CLK, out4, out3);

    NAND4: entity work.nand3_G1(struct)
        port map(out3, D, not(CLR), out4);



    NAND5: entity work.nand3_G1(struct)
        port map(not(SET), out2, out6, out5);

    NAND6: entity work.nand3_G1(struct)
        port map(out5, out3, not(CLR), out6);



    
    Q <= out5;
    QN <= out6;
     
end architecture;
library ieee;
use  ieee.std_logic_1164.all;
    
entity nand3_G1 is
    Port(
        A, B, C   :in std_logic;
        D       :out std_logic
    );

end nand3_G1;

architecture struct of nand3_G1 is
    
begin
    
    D <= not(A and B and C);
    
end architecture;
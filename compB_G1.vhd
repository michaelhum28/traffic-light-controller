library ieee;
use  ieee.std_logic_1164.all;
    
entity compB_G1 is
    Port(
        IN0   :in STD_LOGIC_VECTOR(3 downto 0);
        out0, out7X       :out STD_LOGIC
    );

end compB_G1;

architecture struct of compB_G1 is
    
begin
    
    out0 <= not(IN0(0) or IN0(1) or IN0(2) or IN0(3));

    out7X <= (IN0(3) and not(IN0(2)) and not(IN0(1)) and not(IN0(0)));

    
end architecture;
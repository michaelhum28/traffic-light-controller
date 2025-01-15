library ieee;
use  ieee.std_logic_1164.all;
    
entity comp_G1 is
    Port(
        IN0   :in STD_LOGIC_VECTOR(3 downto 0);
        X       :out STD_LOGIC
    );

end comp_G1;

architecture struct of comp_G1 is
    
begin
    
    X <= not(IN0(0) or IN0(1) or IN0(2) or IN0(3));
    
end architecture;
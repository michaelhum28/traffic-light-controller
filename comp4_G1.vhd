library ieee;
use  ieee.std_logic_1164.all;
    
entity comp4_G1 is
    Port(
        IN0   :in STD_LOGIC_VECTOR(3 downto 0);
        out4X, out8X, out12X, out16X       :out STD_LOGIC
    );

end comp4_G1;

architecture struct of comp4_G1 is
    
begin
    
    out16X <= not(IN0(0) or IN0(1) or IN0(2) or IN0(3));

    out12X <= (not(IN0(3)) and IN0(2) and not(IN0(1)) and not(IN0(0)));

    out8X <= (IN0(3) and not(IN0(2)) and not(IN0(1)) and not(IN0(0)));

    out4X <= (IN0(3) and IN0(2) and not(IN0(1)) and not(IN0(0)));

    
end architecture;
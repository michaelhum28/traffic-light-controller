library ieee;
use  ieee.std_logic_1164.all;
    
entity MUXx8_G1 is
    Port(
        SEL0, SEL1, SEL2   :in STD_LOGIC;
        IN0, IN1, IN2, IN3, IN4, IN5, IN6, IN7   :in STD_LOGIC;
        OUT0       :out STD_LOGIC
    );

end MUXx8_G1;

architecture struct of MUXx8_G1 is
    
begin
    
    OUT0 <= (IN0 and not(SEL2) and not(SEL1) and not(SEL0)) or 
            (IN1 and not(SEL2) and not(SEL1) and SEL0) or 
            (IN2 and not(SEL2) and SEL1 and not(SEL0)) or
            (IN3 and not(SEL2) and SEL1 and SEL0) or
            (IN4 and SEL2 and not(SEL1) and not(SEL0)) or
            (IN5 and SEL2 and not(SEL1) and SEL0) or
            (IN6 and SEL2 and SEL1 and not(SEL0)) or
            (IN7 and SEL2 and SEL1 and SEL0);
    
end architecture;
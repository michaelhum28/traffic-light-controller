library ieee;
use  ieee.std_logic_1164.all;
    
entity MuxTL_G1 is
    Port(
        SEL0, SEL1, SEL2   :in STD_LOGIC;
        IN0, IN1, IN2, IN3, IN4   :in STD_LOGIC_VECTOR(2 downto 0);
        OUT0       :out STD_LOGIC_VECTOR(2 downto 0)
    );

end MuxTL_G1;

architecture struct of MuxTL_G1 is
    
begin
    
    OUT0(0) <= (IN0(0) and not(SEL2) and not(SEL1) and not(SEL0)) or 
            (IN1(0) and not(SEL2) and not(SEL1) and SEL0) or 
            (IN2(0) and not(SEL2) and SEL1 and SEL0) or
            (IN3(0) and not(SEL2) and SEL1 and not(SEL0)) or
            (IN4(0) and SEL2 and SEL1 and not(SEL0));
    
    OUT0(1) <= (IN0(1) and not(SEL2) and not(SEL1) and not(SEL0)) or 
            (IN1(1) and not(SEL2) and not(SEL1) and SEL0) or 
            (IN2(1) and not(SEL2) and SEL1 and SEL0) or
            (IN3(1) and not(SEL2) and SEL1 and not(SEL0)) or
            (IN4(1) and SEL2 and SEL1 and not(SEL0));
    
    OUT0(2) <= (IN0(2) and not(SEL2) and not(SEL1) and not(SEL0)) or 
            (IN1(2) and not(SEL2) and not(SEL1) and SEL0) or 
            (IN2(2) and not(SEL2) and SEL1 and SEL0) or
            (IN3(2) and not(SEL2) and SEL1 and not(SEL0)) or
            (IN4(2) and SEL2 and SEL1 and not(SEL0));
    
end architecture;
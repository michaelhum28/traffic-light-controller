library ieee;
use  ieee.std_logic_1164.all;
    
entity CountR_G1 is
    Port(
        SEL0, SEL1, SEL2 :in STD_LOGIC;
        OUT0, OUT2, OUT3, OUT4       :out STD_LOGIC
    );

end CountR_G1;

architecture struct of CountR_G1 is 
    
begin
    
    
    OUT0 <= ('0' and not(SEL2) and not(SEL1) and not(SEL0)) or 
    
            ('1' and not(SEL2) and not(SEL1) and SEL0) or 

            ('1' and not(SEL2) and SEL1 and SEL0) or

            ('1' and not(SEL2) and SEL1 and not(SEL0)) or

            ('1' and SEL2 and SEL1 and not(SEL0)) or 

            ('1' and SEL2 and SEL1 and SEL0) or 

            ('1' and SEL2 and not(SEL1) and SEL0) or 

            ('1' and SEL2 and not(SEL1) and not(SEL0));
    

    OUT2 <= ('1' and not(SEL2) and not(SEL1) and not(SEL0)) or 

            ('1' and not(SEL2) and not(SEL1) and SEL0) or 

            ('0' and not(SEL2) and SEL1 and SEL0) or

            ('1' and not(SEL2) and SEL1 and not(SEL0)) or

            ('1' and SEL2 and SEL1 and not(SEL0)) or 

            ('1' and SEL2 and SEL1 and SEL0) or 

            ('1' and SEL2 and not(SEL1) and SEL0) or 

            ('1' and SEL2 and not(SEL1) and not(SEL0));
    

    OUT3 <= ('1' and not(SEL2) and not(SEL1) and not(SEL0)) or 

            ('1' and not(SEL2) and not(SEL1) and SEL0) or 

            ('1' and not(SEL2) and SEL1 and SEL0) or

            ('0' and not(SEL2) and SEL1 and not(SEL0)) or

            ('1' and SEL2 and SEL1 and not(SEL0)) or 

            ('1' and SEL2 and SEL1 and SEL0) or 

            ('1' and SEL2 and not(SEL1) and SEL0) or 

            ('1' and SEL2 and not(SEL1) and not(SEL0));
    

    OUT4 <= ('1' and not(SEL2) and not(SEL1) and not(SEL0)) or 

            ('1' and not(SEL2) and not(SEL1) and SEL0) or 

            ('1' and not(SEL2) and SEL1 and SEL0) or

            ('1' and not(SEL2) and SEL1 and not(SEL0)) or

            ('0' and SEL2 and SEL1 and not(SEL0)) or 

            ('1' and SEL2 and SEL1 and SEL0) or 

            ('1' and SEL2 and not(SEL1) and SEL0) or 

            ('1' and SEL2 and not(SEL1) and not(SEL0));
    
end architecture;
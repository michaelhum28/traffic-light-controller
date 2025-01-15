library ieee;
use  ieee.std_logic_1164.all;
    
entity bcdConv_G1 is
    Port(
        Bin : IN STD_LOGIC_VECTOR (3 DOWNTO 0);
        BCD1, BCD2 : OUT STD_LOGIC_VECTOR (3 DOWNTO 0)
    );

end bcdConv_G1;

architecture behav of bcdConv_G1 is
    
BEGIN

    PROCESS (Bin)
    BEGIN

        CASE Bin IS
            
            WHEN "0000" =>
                BCD1 <= "0000"; ---00
                BCD2 <= "0000"; 

            WHEN "0001" =>
                BCD1 <= "0000"; ---01
                BCD2 <= "0001"; 

            WHEN "0010" =>
                BCD1 <= "0000"; ---02
                BCD2 <= "0010"; 

            WHEN "0011" =>
                BCD1 <= "0000"; ---03
                BCD2 <= "0011"; 

            WHEN "0100" =>
                BCD1 <= "0000"; ---04
                BCD2 <= "0100"; 

            WHEN "0101" =>
                BCD1 <= "0000"; ---05
                BCD2 <= "0101"; 

            WHEN "0110" =>
                BCD1 <= "0000"; ---06
                BCD2 <= "0110"; 

            WHEN "0111" =>
                BCD1 <= "0000"; ---07
                BCD2 <= "0111"; 

            WHEN "1000" =>
                BCD1 <= "0000"; ---08
                BCD2 <= "1000"; 

            WHEN "1001" =>
                BCD1 <= "0000"; ---09
                BCD2 <= "1001"; 

            WHEN "1010" =>
                BCD1 <= "0001"; ---10
                BCD2 <= "0000"; 

            WHEN "1011" =>
                BCD1 <= "0001"; ---11
                BCD2 <= "0001"; 

            WHEN "1100" =>
                BCD1 <= "0001"; ---12
                BCD2 <= "0010"; 

            WHEN "1101" =>
                BCD1 <= "0001"; ---13
                BCD2 <= "0011"; 

            WHEN "1110" =>
                BCD1 <= "0001"; ---14
                BCD2 <= "0100"; 

            WHEN "1111" =>
                BCD1 <= "1100"; ---15 or Waiting For Cart WC (Wait Car)
                BCD2 <= "1100"; 

            WHEN OTHERS =>
                BCD1 <= "1001"; ---NULL
                BCD2 <= "1001"; 
        END CASE;

    END PROCESS;

END behav;
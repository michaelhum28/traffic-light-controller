LIBRARY IEEE;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY ascii_7seg_G1 IS
    PORT (
        BinaryIN : IN STD_LOGIC_VECTOR (7 DOWNTO 0);
        Seven_SegOut : OUT STD_LOGIC_VECTOR (6 DOWNTO 0));
END ascii_7seg_G1;

ARCHITECTURE behav OF ascii_7seg_G1 IS
    SIGNAL Seven_Seg : STD_LOGIC_VECTOR(7 downto 0);
BEGIN

    PROCESS (BinaryIN)
    BEGIN

        CASE BinaryIN IS
            WHEN x"30" =>
                Seven_SegOut <= "0000001"; ---0
            WHEN x"31" =>
                Seven_SegOut <= "1001111"; ---1
            WHEN x"32" =>
                Seven_SegOut <= "0010010"; ---2
            WHEN x"33" =>
                Seven_SegOut <= "0000110"; ---3
            WHEN x"34" =>
                Seven_SegOut <= "1001100"; ---4
            WHEN x"35" =>
                Seven_SegOut <= "0100100"; ---5
            WHEN x"36" =>
                Seven_SegOut <= "0100000"; ---6
            WHEN x"37" =>
                Seven_SegOut <= "0001111"; ---7
            WHEN x"38" =>
                Seven_SegOut <= "0000000"; ---8
            WHEN x"39" =>
                Seven_SegOut <= "0000100"; ---9

            WHEN x"41" =>
                Seven_Seg <= (x"77" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---A
            WHEN x"42" =>
                Seven_Seg <= (x"1F" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---B
            WHEN x"43" =>
                Seven_Seg <= (x"4E" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---C
            WHEN x"44" =>
                Seven_Seg <= (x"3D" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---D
            WHEN x"45" =>
                Seven_Seg <= (x"4F" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---E
            WHEN x"46" =>
                Seven_Seg <= (x"47" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---F
            WHEN x"47" =>
                Seven_Seg <= (x"5E" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---G
            WHEN x"48" =>
                Seven_Seg <= (x"37" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---H
            WHEN x"49" =>
                Seven_Seg <= (x"06" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---I
            WHEN x"4A" =>
                Seven_Seg <= (x"3C" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---J
            WHEN x"4B" =>
                Seven_Seg <= (x"FF" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---K
            WHEN x"4C" =>
                Seven_Seg <= (x"0E" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---L
            WHEN x"4D" =>
                Seven_Seg <= (x"FF" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---M
            WHEN x"4E" =>
                Seven_Seg <= (x"15" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---N
            WHEN x"4F" =>
                Seven_Seg <= (x"7E" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---O
            WHEN x"50" =>
                Seven_Seg <= (x"67" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---P
            WHEN x"51" =>
                Seven_Seg <= (x"73" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---Q
            WHEN x"52" =>
                Seven_Seg <= (x"05" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---R
            WHEN x"53" =>
                Seven_Seg <= (x"5B" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---S
            WHEN x"54" =>
                Seven_Seg <= (x"0F" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---T
            WHEN x"55" =>
                Seven_Seg <= (x"3E" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---U
            WHEN x"56" =>
                Seven_Seg <= (x"FF" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---V
            WHEN x"57" =>
                Seven_Seg <= (x"FF" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---W
            WHEN x"58" =>
                Seven_Seg <= (x"FF" xor x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---X
            WHEN x"59" =>
                Seven_Seg <= (x"3B" XOR x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---Y
            WHEN x"5A" =>
                Seven_Seg <= (x"FF" xor x"FF");
                Seven_SegOut <= Seven_Seg(6 DOWNTO 0); ---Z
            WHEN OTHERS =>
                Seven_SegOut <= "1111111"; ---null
        END CASE;

    END PROCESS;

END behav;
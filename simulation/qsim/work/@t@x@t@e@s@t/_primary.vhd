library verilog;
use verilog.vl_types.all;
entity TXTEST is
    port(
        TX              : out    vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        TDRE            : out    vl_logic;
        SUBTX           : out    vl_logic;
        SUBUX           : out    vl_logic;
        CTRDEC          : out    vl_logic;
        MSG             : out    vl_logic_vector(47 downto 0);
        MUX             : out    vl_logic_vector(47 downto 0);
        TDR             : out    vl_logic_vector(7 downto 0);
        TS              : out    vl_logic_vector(1 downto 0);
        TSR             : out    vl_logic_vector(7 downto 0);
        US              : out    vl_logic_vector(1 downto 0)
    );
end TXTEST;

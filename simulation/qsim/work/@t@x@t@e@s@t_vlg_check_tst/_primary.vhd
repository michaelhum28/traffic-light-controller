library verilog;
use verilog.vl_types.all;
entity TXTEST_vlg_check_tst is
    port(
        CTRDEC          : in     vl_logic;
        MSG             : in     vl_logic_vector(47 downto 0);
        MUX             : in     vl_logic_vector(47 downto 0);
        SUBTX           : in     vl_logic;
        SUBUX           : in     vl_logic;
        TDR             : in     vl_logic_vector(7 downto 0);
        TDRE            : in     vl_logic;
        TS              : in     vl_logic_vector(1 downto 0);
        TSR             : in     vl_logic_vector(7 downto 0);
        TX              : in     vl_logic;
        US              : in     vl_logic_vector(1 downto 0);
        sampler_rx      : in     vl_logic
    );
end TXTEST_vlg_check_tst;

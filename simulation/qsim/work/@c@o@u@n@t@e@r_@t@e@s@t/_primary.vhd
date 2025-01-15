library verilog;
use verilog.vl_types.all;
entity COUNTER_TEST is
    port(
        \Out\           : out    vl_logic_vector(3 downto 0);
        Reset           : in     vl_logic;
        CLK             : in     vl_logic;
        upN             : in     vl_logic;
        RV              : in     vl_logic_vector(3 downto 0)
    );
end COUNTER_TEST;

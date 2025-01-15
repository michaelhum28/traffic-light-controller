library verilog;
use verilog.vl_types.all;
entity COUNTER_TEST_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        Reset           : in     vl_logic;
        RV              : in     vl_logic_vector(3 downto 0);
        upN             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end COUNTER_TEST_vlg_sample_tst;

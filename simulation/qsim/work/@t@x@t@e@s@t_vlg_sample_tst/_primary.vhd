library verilog;
use verilog.vl_types.all;
entity TXTEST_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end TXTEST_vlg_sample_tst;

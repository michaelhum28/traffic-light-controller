library verilog;
use verilog.vl_types.all;
entity MUXTEST_vlg_sample_tst is
    port(
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MUXTEST_vlg_sample_tst;

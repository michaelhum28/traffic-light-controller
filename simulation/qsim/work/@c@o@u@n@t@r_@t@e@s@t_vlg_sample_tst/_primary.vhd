library verilog;
use verilog.vl_types.all;
entity COUNTR_TEST_vlg_sample_tst is
    port(
        SEL0            : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL2            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end COUNTR_TEST_vlg_sample_tst;

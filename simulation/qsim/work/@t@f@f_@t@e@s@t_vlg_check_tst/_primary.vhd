library verilog;
use verilog.vl_types.all;
entity TFF_TEST_vlg_check_tst is
    port(
        Q               : in     vl_logic;
        QN              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end TFF_TEST_vlg_check_tst;

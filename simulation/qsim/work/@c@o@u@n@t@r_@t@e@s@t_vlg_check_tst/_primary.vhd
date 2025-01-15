library verilog;
use verilog.vl_types.all;
entity COUNTR_TEST_vlg_check_tst is
    port(
        MSC             : in     vl_logic;
        MT              : in     vl_logic;
        SSC             : in     vl_logic;
        SST             : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end COUNTR_TEST_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity MUXCT_TEST_vlg_check_tst is
    port(
        X               : in     vl_logic_vector(3 downto 0);
        sampler_rx      : in     vl_logic
    );
end MUXCT_TEST_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity MUXTL_TEST_vlg_check_tst is
    port(
        \out\           : in     vl_logic_vector(2 downto 0);
        sampler_rx      : in     vl_logic
    );
end MUXTL_TEST_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity MUXTEST_vlg_check_tst is
    port(
        OUT0            : in     vl_logic_vector(47 downto 0);
        sampler_rx      : in     vl_logic
    );
end MUXTEST_vlg_check_tst;

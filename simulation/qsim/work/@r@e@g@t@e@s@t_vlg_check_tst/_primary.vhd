library verilog;
use verilog.vl_types.all;
entity REGTEST_vlg_check_tst is
    port(
        Q               : in     vl_logic_vector(47 downto 0);
        sampler_rx      : in     vl_logic
    );
end REGTEST_vlg_check_tst;

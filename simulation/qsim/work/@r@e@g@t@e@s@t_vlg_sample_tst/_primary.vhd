library verilog;
use verilog.vl_types.all;
entity REGTEST_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        D               : in     vl_logic_vector(47 downto 0);
        Load            : in     vl_logic;
        RESET           : in     vl_logic;
        RShift          : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end REGTEST_vlg_sample_tst;

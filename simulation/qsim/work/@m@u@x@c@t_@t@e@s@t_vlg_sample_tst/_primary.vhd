library verilog;
use verilog.vl_types.all;
entity MUXCT_TEST_vlg_sample_tst is
    port(
        IN0             : in     vl_logic_vector(3 downto 0);
        IN1             : in     vl_logic;
        IN2             : in     vl_logic_vector(3 downto 0);
        IN3             : in     vl_logic_vector(3 downto 0);
        IN4             : in     vl_logic_vector(3 downto 0);
        SEL0            : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL2            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MUXCT_TEST_vlg_sample_tst;

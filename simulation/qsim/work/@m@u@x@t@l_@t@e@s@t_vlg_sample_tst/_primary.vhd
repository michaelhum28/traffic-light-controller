library verilog;
use verilog.vl_types.all;
entity MUXTL_TEST_vlg_sample_tst is
    port(
        IN0             : in     vl_logic_vector(2 downto 0);
        IN1             : in     vl_logic_vector(2 downto 0);
        IN2             : in     vl_logic_vector(2 downto 0);
        IN3             : in     vl_logic_vector(2 downto 0);
        IN4             : in     vl_logic_vector(2 downto 0);
        SEL0            : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL2            : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end MUXTL_TEST_vlg_sample_tst;

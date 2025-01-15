library verilog;
use verilog.vl_types.all;
entity MUXCT_TEST is
    port(
        X               : out    vl_logic_vector(3 downto 0);
        SEL0            : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL2            : in     vl_logic;
        IN1             : in     vl_logic;
        IN0             : in     vl_logic_vector(3 downto 0);
        IN2             : in     vl_logic_vector(3 downto 0);
        IN3             : in     vl_logic_vector(3 downto 0);
        IN4             : in     vl_logic_vector(3 downto 0)
    );
end MUXCT_TEST;

library verilog;
use verilog.vl_types.all;
entity MUXTL_TEST is
    port(
        \out\           : out    vl_logic_vector(2 downto 0);
        SEL0            : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL2            : in     vl_logic;
        IN0             : in     vl_logic_vector(2 downto 0);
        IN1             : in     vl_logic_vector(2 downto 0);
        IN2             : in     vl_logic_vector(2 downto 0);
        IN3             : in     vl_logic_vector(2 downto 0);
        IN4             : in     vl_logic_vector(2 downto 0)
    );
end MUXTL_TEST;

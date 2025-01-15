library verilog;
use verilog.vl_types.all;
entity MUXTEST is
    port(
        OUT0            : out    vl_logic_vector(47 downto 0);
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic
    );
end MUXTEST;

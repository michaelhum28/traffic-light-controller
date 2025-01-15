library verilog;
use verilog.vl_types.all;
entity COMP_TEST is
    port(
        X               : out    vl_logic;
        A               : in     vl_logic_vector(3 downto 0)
    );
end COMP_TEST;

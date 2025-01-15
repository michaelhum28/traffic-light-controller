library verilog;
use verilog.vl_types.all;
entity REGTEST is
    port(
        Q               : out    vl_logic_vector(47 downto 0);
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        Load            : in     vl_logic;
        RShift          : in     vl_logic;
        D               : in     vl_logic_vector(47 downto 0)
    );
end REGTEST;

library verilog;
use verilog.vl_types.all;
entity SUBXTEST is
    port(
        X               : out    vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        SEL0            : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL2            : in     vl_logic;
        SSCS            : in     vl_logic;
        MSC             : in     vl_logic_vector(3 downto 0);
        MT              : in     vl_logic_vector(3 downto 0);
        SSC             : in     vl_logic_vector(3 downto 0);
        SST             : in     vl_logic_vector(3 downto 0)
    );
end SUBXTEST;

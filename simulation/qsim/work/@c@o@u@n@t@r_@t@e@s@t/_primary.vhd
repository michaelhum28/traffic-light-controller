library verilog;
use verilog.vl_types.all;
entity COUNTR_TEST is
    port(
        MSC             : out    vl_logic;
        SEL0            : in     vl_logic;
        SEL1            : in     vl_logic;
        SEL2            : in     vl_logic;
        MT              : out    vl_logic;
        SSC             : out    vl_logic;
        SST             : out    vl_logic
    );
end COUNTR_TEST;

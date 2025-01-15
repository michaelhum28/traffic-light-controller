library verilog;
use verilog.vl_types.all;
entity TFF_TEST is
    port(
        Q               : out    vl_logic;
        CLK             : in     vl_logic;
        T               : in     vl_logic;
        SET             : in     vl_logic;
        CLR             : in     vl_logic;
        QN              : out    vl_logic
    );
end TFF_TEST;

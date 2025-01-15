library verilog;
use verilog.vl_types.all;
entity FSMTEST is
    port(
        S2              : out    vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        SSCS            : in     vl_logic;
        MSC             : in     vl_logic_vector(3 downto 0);
        MT              : in     vl_logic_vector(3 downto 0);
        SSC             : in     vl_logic_vector(3 downto 0);
        SST             : in     vl_logic_vector(3 downto 0);
        S1              : out    vl_logic;
        S0              : out    vl_logic;
        X               : out    vl_logic;
        BCD1            : out    vl_logic_vector(3 downto 0);
        BCD2            : out    vl_logic_vector(3 downto 0);
        MSTL            : out    vl_logic_vector(2 downto 0);
        SSTL            : out    vl_logic_vector(2 downto 0)
    );
end FSMTEST;

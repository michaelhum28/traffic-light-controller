library verilog;
use verilog.vl_types.all;
entity Project is
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
        TX              : out    vl_logic;
        BCD1            : out    vl_logic_vector(6 downto 0);
        BCD1_OUT        : out    vl_logic_vector(3 downto 0);
        BCD2            : out    vl_logic_vector(6 downto 0);
        BCD2_OUT        : out    vl_logic_vector(3 downto 0);
        MSTL            : out    vl_logic_vector(2 downto 0);
        SSTL            : out    vl_logic_vector(2 downto 0);
        SEL0            : in     vl_logic;
        SEL12           : in     vl_logic
    );
end Project;

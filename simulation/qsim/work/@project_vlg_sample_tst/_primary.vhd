library verilog;
use verilog.vl_types.all;
entity Project_vlg_sample_tst is
    port(
        CLK             : in     vl_logic;
        MSC             : in     vl_logic_vector(3 downto 0);
        MT              : in     vl_logic_vector(3 downto 0);
        RESET           : in     vl_logic;
        SEL0            : in     vl_logic;
        SEL12           : in     vl_logic;
        SSC             : in     vl_logic_vector(3 downto 0);
        SSCS            : in     vl_logic;
        SST             : in     vl_logic_vector(3 downto 0);
        sampler_tx      : out    vl_logic
    );
end Project_vlg_sample_tst;

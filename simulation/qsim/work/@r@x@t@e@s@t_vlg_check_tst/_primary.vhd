library verilog;
use verilog.vl_types.all;
entity RXTEST_vlg_check_tst is
    port(
        ASCII           : in     vl_logic_vector(6 downto 0);
        RDR             : in     vl_logic_vector(7 downto 0);
        RDRF            : in     vl_logic;
        RS              : in     vl_logic_vector(3 downto 0);
        RSR             : in     vl_logic_vector(7 downto 0);
        RX              : in     vl_logic;
        US              : in     vl_logic;
        UX              : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end RXTEST_vlg_check_tst;

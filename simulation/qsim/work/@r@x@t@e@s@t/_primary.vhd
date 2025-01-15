library verilog;
use verilog.vl_types.all;
entity RXTEST is
    port(
        RDRF            : out    vl_logic;
        CLK             : in     vl_logic;
        RESET           : in     vl_logic;
        RXD             : in     vl_logic;
        US              : out    vl_logic;
        RX              : out    vl_logic;
        UX              : out    vl_logic;
        ASCII           : out    vl_logic_vector(6 downto 0);
        RDR             : out    vl_logic_vector(7 downto 0);
        RS              : out    vl_logic_vector(3 downto 0);
        RSR             : out    vl_logic_vector(7 downto 0)
    );
end RXTEST;

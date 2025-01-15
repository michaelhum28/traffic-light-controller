library verilog;
use verilog.vl_types.all;
entity FSMTEST_vlg_check_tst is
    port(
        BCD1            : in     vl_logic_vector(3 downto 0);
        BCD2            : in     vl_logic_vector(3 downto 0);
        MSTL            : in     vl_logic_vector(2 downto 0);
        S0              : in     vl_logic;
        S1              : in     vl_logic;
        S2              : in     vl_logic;
        SSTL            : in     vl_logic_vector(2 downto 0);
        X               : in     vl_logic;
        sampler_rx      : in     vl_logic
    );
end FSMTEST_vlg_check_tst;

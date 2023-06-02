library verilog;
use verilog.vl_types.all;
entity SHEFT_vlg_check_tst is
    port(
        cn              : in     vl_logic;
        q               : in     vl_logic_vector(7 downto 0);
        sampler_rx      : in     vl_logic
    );
end SHEFT_vlg_check_tst;

library verilog;
use verilog.vl_types.all;
entity SHEFT_vlg_sample_tst is
    port(
        c0              : in     vl_logic;
        clk             : in     vl_logic;
        d               : in     vl_logic_vector(7 downto 0);
        m               : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0);
        sampler_tx      : out    vl_logic
    );
end SHEFT_vlg_sample_tst;

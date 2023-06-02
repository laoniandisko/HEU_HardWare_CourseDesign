library verilog;
use verilog.vl_types.all;
entity computer1119_vlg_sample_tst is
    port(
        CLK1            : in     vl_logic;
        d0              : in     vl_logic_vector(7 downto 0);
        RST1            : in     vl_logic;
        STEP            : in     vl_logic;
        SWA             : in     vl_logic;
        SWB             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end computer1119_vlg_sample_tst;

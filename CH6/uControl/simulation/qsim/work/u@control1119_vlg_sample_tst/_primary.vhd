library verilog;
use verilog.vl_types.all;
entity uControl1119_vlg_sample_tst is
    port(
        CLK1            : in     vl_logic;
        FC              : in     vl_logic;
        FZ              : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 2);
        RST1            : in     vl_logic;
        RST2            : in     vl_logic;
        S0              : in     vl_logic;
        SWA             : in     vl_logic;
        SWB             : in     vl_logic;
        sampler_tx      : out    vl_logic
    );
end uControl1119_vlg_sample_tst;

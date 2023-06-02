library verilog;
use verilog.vl_types.all;
entity uControl1119_vlg_check_tst is
    port(
        ALU_B           : in     vl_logic;
        LDAR            : in     vl_logic;
        LDDR1           : in     vl_logic;
        LDDR2           : in     vl_logic;
        LDIR            : in     vl_logic;
        LDPC            : in     vl_logic;
        LDR1            : in     vl_logic;
        LED_B           : in     vl_logic;
        LOAD            : in     vl_logic;
        M               : in     vl_logic_vector(24 downto 1);
        P               : in     vl_logic_vector(4 downto 1);
        PC_B            : in     vl_logic;
        R0_B            : in     vl_logic;
        R1_B            : in     vl_logic;
        R2_B            : in     vl_logic;
        RAM_B           : in     vl_logic;
        SW_B            : in     vl_logic;
        uaddr           : in     vl_logic_vector(6 downto 1);
        sampler_rx      : in     vl_logic
    );
end uControl1119_vlg_check_tst;

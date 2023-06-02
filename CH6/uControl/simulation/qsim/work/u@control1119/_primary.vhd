library verilog;
use verilog.vl_types.all;
entity uControl1119 is
    port(
        RAM_B           : out    vl_logic;
        M               : out    vl_logic_vector(24 downto 1);
        S0              : in     vl_logic;
        CLK1            : in     vl_logic;
        RST1            : in     vl_logic;
        uaddr           : out    vl_logic_vector(6 downto 1);
        RST2            : in     vl_logic;
        FC              : in     vl_logic;
        FZ              : in     vl_logic;
        SWA             : in     vl_logic;
        SWB             : in     vl_logic;
        I               : in     vl_logic_vector(7 downto 2);
        P               : out    vl_logic_vector(4 downto 1);
        SW_B            : out    vl_logic;
        LDR1            : out    vl_logic;
        LDDR1           : out    vl_logic;
        LDDR2           : out    vl_logic;
        LDIR            : out    vl_logic;
        LOAD            : out    vl_logic;
        LDAR            : out    vl_logic;
        LDPC            : out    vl_logic;
        LED_B           : out    vl_logic;
        R0_B            : out    vl_logic;
        R1_B            : out    vl_logic;
        R2_B            : out    vl_logic;
        ALU_B           : out    vl_logic;
        PC_B            : out    vl_logic
    );
end uControl1119;

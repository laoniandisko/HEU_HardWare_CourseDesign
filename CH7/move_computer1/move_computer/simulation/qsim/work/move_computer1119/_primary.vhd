library verilog;
use verilog.vl_types.all;
entity move_computer1119 is
    port(
        PC_B            : out    vl_logic;
        M               : out    vl_logic_vector(24 downto 1);
        T1              : out    vl_logic;
        CLK1            : in     vl_logic;
        STEP            : in     vl_logic;
        uaddr           : out    vl_logic_vector(6 downto 1);
        RST1            : in     vl_logic;
        T2              : out    vl_logic;
        T3              : out    vl_logic;
        \bus\           : out    vl_logic_vector(7 downto 0);
        d0              : in     vl_logic_vector(7 downto 0);
        LDAR            : out    vl_logic;
        T4              : out    vl_logic;
        LDPC            : out    vl_logic;
        LOAD            : out    vl_logic;
        I               : out    vl_logic_vector(7 downto 0);
        SEL             : out    vl_logic_vector(2 downto 0);
        RAM_B           : out    vl_logic;
        SW_B            : out    vl_logic;
        SWA             : in     vl_logic;
        SWB             : in     vl_logic;
        LED_B           : out    vl_logic;
        \in\            : out    vl_logic_vector(7 downto 0);
        led             : out    vl_logic_vector(7 downto 0)
    );
end move_computer1119;

library verilog;
use verilog.vl_types.all;
entity computer1119_vlg_check_tst is
    port(
        \bus\           : in     vl_logic_vector(7 downto 0);
        I               : in     vl_logic_vector(7 downto 0);
        \in\            : in     vl_logic_vector(7 downto 0);
        LDAR            : in     vl_logic;
        LDPC            : in     vl_logic;
        led             : in     vl_logic_vector(7 downto 0);
        LED_B           : in     vl_logic;
        LOAD            : in     vl_logic;
        M               : in     vl_logic_vector(24 downto 1);
        PC_B            : in     vl_logic;
        RAM_B           : in     vl_logic;
        SEL             : in     vl_logic_vector(2 downto 0);
        SW_B            : in     vl_logic;
        T1              : in     vl_logic;
        T2              : in     vl_logic;
        T3              : in     vl_logic;
        T4              : in     vl_logic;
        uaddr           : in     vl_logic_vector(6 downto 1);
        sampler_rx      : in     vl_logic
    );
end computer1119_vlg_check_tst;

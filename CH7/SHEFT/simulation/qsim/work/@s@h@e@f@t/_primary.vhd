library verilog;
use verilog.vl_types.all;
entity SHEFT is
    port(
        clk             : in     vl_logic;
        m               : in     vl_logic;
        c0              : in     vl_logic;
        s               : in     vl_logic_vector(1 downto 0);
        d               : in     vl_logic_vector(7 downto 0);
        q               : out    vl_logic_vector(7 downto 0);
        cn              : out    vl_logic
    );
end SHEFT;

library verilog;
use verilog.vl_types.all;
entity DDS is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        phase_control   : in     vl_logic;
        address         : out    vl_logic_vector(7 downto 0)
    );
end DDS;

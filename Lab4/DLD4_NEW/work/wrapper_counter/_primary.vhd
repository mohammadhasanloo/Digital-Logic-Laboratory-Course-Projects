library verilog;
use verilog.vl_types.all;
entity wrapper_counter is
    generic(
        N               : integer := 5
    );
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        inc             : in     vl_logic;
        count           : out    vl_logic_vector(2 downto 0);
        co              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end wrapper_counter;

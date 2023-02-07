library verilog;
use verilog.vl_types.all;
entity counter is
    generic(
        N               : integer := 8
    );
    port(
        clk             : in     vl_logic;
        pin             : in     vl_logic_vector;
        \select\        : in     vl_logic;
        ld              : in     vl_logic;
        rst             : in     vl_logic;
        en              : in     vl_logic;
        pout            : out    vl_logic_vector;
        co              : out    vl_logic
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end counter;

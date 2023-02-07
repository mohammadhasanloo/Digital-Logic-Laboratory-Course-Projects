library verilog;
use verilog.vl_types.all;
entity \Register\ is
    generic(
        N               : integer := 8
    );
    port(
        clk             : in     vl_logic;
        pin             : in     vl_logic_vector;
        ld              : in     vl_logic;
        rst             : in     vl_logic;
        pout            : out    vl_logic_vector
    );
    attribute mti_svvh_generic_type : integer;
    attribute mti_svvh_generic_type of N : constant is 1;
end \Register\;

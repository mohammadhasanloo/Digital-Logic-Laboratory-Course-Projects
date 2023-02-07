library verilog;
use verilog.vl_types.all;
entity PWM is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        PWM_in          : in     vl_logic_vector(7 downto 0);
        PWM_out         : out    vl_logic
    );
end PWM;

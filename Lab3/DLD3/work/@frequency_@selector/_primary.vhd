library verilog;
use verilog.vl_types.all;
entity Frequency_Selector is
    port(
        RO_Clk          : in     vl_logic;
        rst             : in     vl_logic;
        ld              : in     vl_logic;
        SW              : in     vl_logic_vector(2 downto 0);
        clk_to_wg       : out    vl_logic;
        count           : out    vl_logic_vector(8 downto 0)
    );
end Frequency_Selector;

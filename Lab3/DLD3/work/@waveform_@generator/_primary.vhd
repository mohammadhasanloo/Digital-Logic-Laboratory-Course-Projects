library verilog;
use verilog.vl_types.all;
entity Waveform_Generator is
    port(
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        func            : in     vl_logic_vector(2 downto 0);
        count_num       : in     vl_logic_vector(7 downto 0);
        waveform        : out    vl_logic_vector(7 downto 0)
    );
end Waveform_Generator;

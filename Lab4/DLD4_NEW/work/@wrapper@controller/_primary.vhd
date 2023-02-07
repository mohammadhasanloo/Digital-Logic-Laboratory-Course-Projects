library verilog;
use verilog.vl_types.all;
entity WrapperController is
    port(
        start           : in     vl_logic;
        engDone         : in     vl_logic;
        co              : in     vl_logic;
        read            : in     vl_logic;
        empty           : in     vl_logic;
        clk             : in     vl_logic;
        rst             : in     vl_logic;
        done            : out    vl_logic;
        ready           : out    vl_logic;
        engStart        : out    vl_logic;
        rstCounter      : out    vl_logic;
        incCounter      : out    vl_logic;
        writeSel        : out    vl_logic;
        readSel         : out    vl_logic;
        rstROM          : out    vl_logic
    );
end WrapperController;

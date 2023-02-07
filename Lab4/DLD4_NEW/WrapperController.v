`define State1    4'b0000
`define State2    4'b0001
`define State3 4'b0010
`define State4   4'b0011
`define State5    4'b0100
`define State6   4'b0101
`define State7    4'b0110

module WrapperController(
    input start, engDone, clk, rst ,incCounter,
    output reg done, engStart, rstCounter, cnt_en
);
    reg [2:0] ps, ns;

    always @(posedge clk, posedge rst) begin
        if (rst) ps <= `State1;
        else ps <= ns;
    end

    always @(ps, start, engDone,incCounter) begin
        case (ps)
            `State1:    ns = start ? `State2 : `State1;
            `State2:    ns = start ? `State2 : `State3;
            `State3: ns = `State4;
            `State4:   ns = engDone ? `State5 : `State4;
            `State5:    ns = incCounter ? `State1 : `State6;
            `State6:   ns = start ? `State7 : `State6;
            `State7:    ns = start ? `State7 : `State3;
            default:;
        endcase
    end

    always @(ps) begin
        {done, engStart, rstCounter, cnt_en} = 4'b0;
        case (ps)
            `State1: done = 1'b1;
            `State2: rstCounter = 1'b1;
            `State3: engStart = 1'b1;
            `State4: ;
            `State5: cnt_en = 1'b1;
            `State6: ;
            `State7: ;
            default:;
        endcase
    end
endmodule

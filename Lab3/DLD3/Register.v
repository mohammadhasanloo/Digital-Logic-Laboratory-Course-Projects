`timescale 1ns/1ns

module Register (clk, pin, ld, rst, pout);
    
    parameter N = 8;
    input clk;
    input ld;
    input rst;
    input[N-1:0] pin;
    output reg[N-1:0] pout;

    always @(posedge clk) begin
        if(rst)
	    pout <= 0;
        else
	    pout <= ld ? pin : pout;
	    
    end

endmodule
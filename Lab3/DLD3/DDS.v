`timescale 1ns/1ns

module DDS(input clk , rst , input phase_control , output [7:0]address);

    wire [7:0]res , add_in;
    

	Adder a(.a(phase_control==1'b0 ? 8'b00000001 : 8'b00000010),.b(add_in),.cin(1'b0),.result(res),.cout());
	Register r(.clk(clk),.pin(res),.ld(1'b1),.rst(rst),.pout(add_in));
    assign address = add_in;
    
endmodule

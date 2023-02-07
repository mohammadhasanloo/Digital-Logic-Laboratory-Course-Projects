`timescale 1ns/1ns
module one_pulse(clk, clkPB, single_pulse);
	input clk;
	input clkPB;
	output reg single_pulse;

	logic [1:0] ps,ns;

	always @(ps,clkPB) begin
		ns = 2'b0;
		case (ps)
			2'b00: ns = clkPB ? 2'b01 : 2'b00;
			2'b01: ns = 2'b10;
			2'b10: ns = clkPB ? 2'b10 : 2'b00;
			default: ns = 2'b00;
		endcase
	end
	always @(posedge clk) begin
		ps <= ns;
	end

	assign single_pulse = ps == 2'b01 ? 1'b1 : 1'b0;

endmodule
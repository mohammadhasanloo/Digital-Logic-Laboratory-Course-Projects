`timescale 1ns/1ns
module counter(clk,ci, clk_EN, inc_cnt,rst_cnt,co,count_out);
	input clk, clk_EN, inc_cnt,rst_cnt;
	input ci;
	output reg co;
	output reg[3:0] count_out;

	logic [1:0] ps,ns;

	always @(posedge clk_EN,posedge rst_cnt) begin
		if (rst_cnt)
			count_out <= 4'b0110;
		else begin
			if (inc_cnt)
				count_out <= ci ? (count_out + 1'b1) : count_out;
		end
	end 

	assign co = (inc_cnt) ? &{count_out,ci} : 1'b0;

endmodule

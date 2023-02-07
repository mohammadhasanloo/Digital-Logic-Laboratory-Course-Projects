`timescale 1ns/1ns
module sequence_detector_1011(clk,rst,serIn,co,serOut,serOutValid,inc_cnt,rst_cnt);
	input clk,rst,serIn,co;
	output reg serOut,serOutValid,inc_cnt;
	output reg rst_cnt;

	logic [2:0] ps,ns;

  	always@(ps, serIn, co) begin
    		{serOut, serOutValid, rst_cnt, inc_cnt} = 4'b0000;
    		case (ps)
      			3'b000: begin rst_cnt = 1'b1; ns = serIn ? 3'b001 : 3'b000; end
      			3'b001: ns = serIn ? 3'b001 : 3'b010;
      			3'b010: ns = serIn ? 3'b011 : 3'b000;
      			3'b011: ns = serIn ? 3'b100 : 3'b010;
      			3'b100: begin ns = co ? 3'b000 : 3'b100; serOut = serIn; serOutValid = 1'b1; inc_cnt = 1'b1; end
      			default: ns = 3'b000;
    		endcase  
  	end

	always @(posedge clk,posedge rst) begin
		if (rst) 
			ps <= 3'b000;
		else
			ps <= ns;
	end
endmodule
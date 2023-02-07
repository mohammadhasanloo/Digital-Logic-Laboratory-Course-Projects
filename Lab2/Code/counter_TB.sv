`timescale 1ns/1ns
module counter_TB();
	reg clkk=1'b0;
	reg clk_ENN=1'b0;
	reg inc_cntt=1'b0;
	reg rst_cntt=1'b0;
	reg cii = 1'b1;
	wire coo;
	wire[3:0] count_outt;
	counter UUT(clkk,cii, clk_ENN, inc_cntt,rst_cntt,coo,count_outt);



	always #20 clkk <= ~clkk;
	always #20 clk_ENN <= ~clk_ENN;

	initial begin
		#200 rst_cntt = 1;
		#200 rst_cntt = 0;
		
		#800 inc_cntt = 1;
		
		#800 rst_cntt = 1;
		#800 rst_cntt = 0;
		
		#800 inc_cntt = 1;
		#800 $stop;
	end
endmodule

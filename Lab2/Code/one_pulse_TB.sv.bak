`timescale 1ns/1ns
module one_pulse_TB();
	reg clkk=1'b0;
	reg clkPBB=1'b0;
	wire single_pulsee;
	one_pulse UUT(clkk,clkPBB,single_pulsee);

	always #20 clkk <= ~clkk;

	initial begin
		#10 clkPBB = 0;
		#20 clkPBB = 1;
		#20 clkPBB = 1;
		#20 clkPBB = 1;
		#20 clkPBB = 1;
		#20 clkPBB = 0;
		#20 clkPBB = 0;
		#20 clkPBB = 0;
		#20 clkPBB = 1;
		#20 clkPBB = 1;
		#20 clkPBB = 1;
		#20 clkPBB = 1;
		#20 clkPBB = 0;
		#100 $stop;
	end
endmodule
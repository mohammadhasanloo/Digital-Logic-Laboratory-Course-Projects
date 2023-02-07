`timescale 1ns / 1ns
module PWM_TB();
reg clk=0;
reg rst=0;
reg [7:0]PWM_in ;
wire PWM_out;
PWM pwm1(clk, rst, PWM_in , PWM_out);
initial begin 
	PWM_in<=8'b01111111;
end
initial begin
        #20 rst = 1;
	#20 rst = 0;
	#500000 $stop;
end
always #5 clk=~clk;
endmodule


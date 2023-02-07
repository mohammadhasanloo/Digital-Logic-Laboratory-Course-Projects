`timescale 1ns/1ns
module PWM(
    input clk,rst,
    input [7:0] PWM_in,
    output PWM_out
);

reg [7:0] cnt;
always @(posedge clk, posedge rst)begin
	if(rst)
		cnt<=8'b00000000;
	else
		cnt <= cnt + 1'b1; 
end

assign PWM_out =(PWM_in < cnt) ? 1'b1 : 1'b0; 
endmodule

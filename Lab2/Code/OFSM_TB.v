`timescale 1ns/1ns

module OFSM_TB();
  reg clk, clk_pulse ,serIn;
  wire serOut, serOutValid;
  wire[6:0] Count_out;
  
  reg rst;
  OFSM ofsm (clk_pulse, clk, serIn, rst, serOut, serOutValid,Count_out);

  initial begin
    clk = 0;
    
    #20
   repeat (100) #20 clk = ~clk;   
  end
  
  initial begin
	clk_pulse = 0;
    
    #20 
   repeat (100) #30 clk_pulse = ~clk_pulse;
  end

  initial begin
	rst = 1'b1;
	
	#20
	rst = 0;
    serIn = 1;
    #40
	
    serIn = 1;
    #60
	
    serIn = 0;
    #40
    serIn = 1;
    #40
    serIn = 1;
    #40
    serIn = 0;
    #40
    serIn = 1;
	
  end

endmodule

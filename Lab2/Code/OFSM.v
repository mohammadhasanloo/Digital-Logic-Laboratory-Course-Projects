module OFSM(input clkPB, clk, serIn, rst, output serOut, serOutValid, output[6:0] seven_seg);
  wire co, inc_cnt, rst_cnt;
  
  
  wire clk_EN;
  
  wire [3:0] Count_out;
  
  hexto7segment hexo(Count_out,seven_seg);
  one_pulse UUT(clk,clkPB,clk_EN);
  counter cnt (clk, 1'b1, clk_EN, inc_cnt, rst_cnt, co, Count_out);
  sequence_detector_1011 sd (clk_EN,rst, serIn, co, serOut, serOutValid, inc_cnt, rst_cnt);
  
endmodule
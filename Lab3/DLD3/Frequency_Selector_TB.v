module Frequency_Selector_TB();
  reg RO_Clkk, rstt ,ldd;
  reg [4:0] SWW;
  wire clk_to_wgg;
  wire [8:0] countt;
  
  Frequency_Selector CUT(RO_Clkk,rstt, ldd, SWW, clk_to_wgg, countt);
  
  initial begin
    RO_Clkk = 1'b0;
    repeat(20000) #10 RO_Clkk = ~RO_Clkk;
  end  
  
  initial begin rstt = 1'b0; end
    
  initial begin SWW = 5'b0; end
    
  initial begin
  #20 ldd = 1;
  #20 ldd = 0;
  #20000 $stop;
  end
  
endmodule

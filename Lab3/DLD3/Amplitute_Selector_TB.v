module Amplitute_Selector_TB();
  reg [7:0] inn;
  reg[1:0] SWW;
  wire [7:0] outt;
  
  Amplitute_Selector UUT(inn, SWW, outt);
  
  initial begin
    inn = 8'b11110000;
  end  
  
  initial begin SWW = 2'b00; end
    
  initial begin
  #20 SWW = 2'b00;
  #20 SWW = 2'b01;
  #20 SWW = 2'b10;
  #20 SWW = 2'b11;
  #20 $stop;
  end
endmodule
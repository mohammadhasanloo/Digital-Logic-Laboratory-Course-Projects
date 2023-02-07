module Frequency_Selector(RO_Clk,rst, ld, SW, clk_to_wg, count);
  input RO_Clk, rst,ld;
  input [2:0] SW;
  wire [5:0] Fixed_value;
  output clk_to_wg;
  
  output reg [8:0] count;
  
  
  assign Fixed_value = 6'b0;
  always@(posedge RO_Clk, posedge rst)
  begin
    if(rst)
      count <= 9'b0;
    else if(ld)
        count <= {SW,Fixed_value};
    else
      count <= count + 1'b1;
  end
  
  //CO
  assign clk_to_wg = &{count};
endmodule
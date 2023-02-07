`timescale 1ns/1ns

module Adder (a, b,cin, result, cout);
    
    input [7:0]a;
    input [7:0]b;
    input cin;
    output cout;
    output [7:0]result;
    
    assign {cout,result} = a + b + cin; 

endmodule
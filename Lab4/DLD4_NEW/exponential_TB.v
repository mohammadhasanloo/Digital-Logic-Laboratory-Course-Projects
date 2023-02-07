`timescale 1ns/1ns

module exponential_TB();
    reg start=0, clk=0, rst=0;
    reg [15:0] x;
    wire done;
    wire [1:0] intpart;
    wire [15:0] fracpart;

    exponential exp(.x(x), .start(start), .clk(clk), .rst(rst), .done(done), .intpart(intpart), .fracpart(fracpart));
    
    always #10 clk = ~clk;

    initial begin
        #20 x = 16'h8000; start = 1;
        #20 start = 0;
        while (~done) #20;
        #20 x = 16'hCCCC; start = 1;
        #20 start = 0;
        while (~done) #20;
        #20 x = 16'h3333; start = 1;
        #20 start = 0;
        while (~done) #20;
        #100 $stop;

    end
endmodule

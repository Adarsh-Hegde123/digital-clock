module digital_clock_tb;
    reg clk, reset,ena;
    wire [7:0] hh,mm,ss;
    wire pm;

    digital_clock uut (.clk(clk),.reset(reset),.ena(ena),.hh(hh),.mm(mm),.ss(ss),.pm(pm));

    initial clk = 0;
    always #5 clk = ~clk;

    initial begin
    
        ena = 0;
        reset = 1;
        
        #20;
        reset = 0;
        ena = 1;

        #720000;

        $finish;
    end
endmodule

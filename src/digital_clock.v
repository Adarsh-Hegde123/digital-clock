module digital_clock(clk,reset,ena,pm,hh,mm,ss);
    input clk,reset,ena;
    output reg pm;
    output [7:0] hh,mm,ss;
    wire n1,n2,n3,n4,n5;
    wire a,b;
    clock_counter cc1(clk,8'h00,n1,ss,8'h59,reset,ena,8'h00);
    clock_counter cc2(clk,8'h00,n2,mm,8'h59,reset,ena&n1,8'h00);
    clock_counter bcd3(clk,8'h12,n3 ,hh,8'h12,reset,ena&n2&n1,8'h01);
    always@(posedge clk) begin
        if(reset)
            pm<=1'b0;
        if({hh,mm,ss}==24'h115959)
            pm<=~pm;
    end
    
endmodule
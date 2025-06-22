module clock_counter(clk,reset_to,cout,count,final_value,rst,en,initial_value);
    input clk,rst,en;
    input [7:0] final_value,reset_to,initial_value;
    output reg [7:0] count;
    output cout;
    wire aaa,carry;
    always@(posedge clk) begin
        if(rst ==1)begin
            count<=reset_to;
        end
    
        else if (en==1) begin
            if(count==final_value) begin
            	count<=initial_value;
        	end
        	else begin
                if(count[3:0]==4'h9) begin
                    count[3:0]<=4'h0;
                    
                    count[7:4]<=count[7:4]+4'h1;
                end
                else 
                    count[3:0]<=count[3:0]+4'h1;
            end
        end
       
    end
    assign cout=(count==final_value)? 1'b1:1'b0;
endmodule
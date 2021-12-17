module v_count(clk,v_count,enable_v);
  input clk;
  output [9:0] v_count;
  input enable_v;
  reg [9:0] v_count;
  initial v_count=0;
  
   always @(posedge clk)
  begin
    if (enable_v==1) // our first if condition would be to check if the enabled bit is on other wise we dont do anything therefore no else condition
      begin
        if (v_count <= 523) // we use 523 instead of 524 since binary starts with 0
   			begin
     			v_count <= v_count +1;
    		end
      else
        begin
        	v_count <= 0;
      	end
  	end
  end
endmodule
// Code your design here
module h_count(count,trig_v,clk);
  input clk;
  output trig_v;
  reg trig_v; // we also define both our outputs as register as well since we will be changing its values during our sequence.
  output [9:0] count;
  reg [9:0] count;
  
  initial // initializing both values to 0
    begin
    count=0;
    trig_v = 1'b1;
    end
  always @ (posedge clk) // conditioning this block to run whenever theres a positive edge in the waveform i.e when clk is 1/HIGH
  	begin
      if (count <= 798)
        begin
          if (count == 798)
            begin
              trig_v <= 1'b1;
              count <= count + 1;
            end
          else
            begin
            	count <= count + 1;
            	trig_v <=  1'b0;
            end  
        end
      else
        begin
        	count <= 0;
        	trig_v <= 1'b0;
        end
    end
endmodule
        
    
  
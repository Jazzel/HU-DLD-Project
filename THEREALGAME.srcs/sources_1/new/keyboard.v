`timescale 1ns / 1ps


module keyboard(
input wire clk, reset,
input wire ps2d, ps2c,
output wire left, right, enter,
output reg key_relese
);
//declare veriables
wire [7:0] dout;
wire rx_done_tick;
supply1 rx_en; // always HIGH
reg [7:0] key;

//instantiate models
// BASYS 3 converts USB to PS2, we grab that data with this module
ps2_rx ps2(clk, reset, ps2d, ps2c, 
            rx_en, rx_done_tick, dout);

//sequencial logic
always@(posedge clk)
begin
    if(rx_done_tick)
    begin 
        key <=dout; //key is one rx cycle behind dout
    if(key == 8'hf0)    //check if the key has been relesed
        key_relese <= 1'b1;
    else
        key_relese <= 1'b0;
    end
    
end
//output control keys of interest
assign left = ((key==8'h1C) || (key==8'h6B)) && !key_relese; // check for arrow left key and A key
assign right = ((key==8'h23) || (key==8'h74)) && !key_relese; // check for arrow right key and D key
assign enter = ((key==8'h75) || (key==8'h5A) || (key==8'h1D)) && !key_relese; // check for Enter, arrow up and W key


endmodule
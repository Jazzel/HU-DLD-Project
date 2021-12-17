`timescale 1ns / 1ps
// declaring flip flop module
module D_FF(D, clk, Q);
 // D input
 input D;
 // Clock signal
 input clk;
 // Q output
 output reg Q;
 // looping logic with positive edge
 always @(posedge clk) begin
 // swapping Input and output
 Q <= D;
 end
endmodule
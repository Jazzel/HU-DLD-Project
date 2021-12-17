`timescale 1ns / 1ps

module scoreState(
input clk,
 input RESET,
 input H,
 output [15:0] gameOver
 );
  wire So, S1;
  D_FF ff1(So, clk, S1);
  
  assign So = (S1 || H) && ~RESET; 
  assign gameOver = So == 1 ? 16'b1111111111111111 : 16'b1000000000000001;
   
   
endmodule

`timescale 1ns / 1ps

module CarState(
 // declaring inputs and outputs
 input clk,
 input RESET,
 input R,
 input L,
 output [2:0] Left,
 output [2:0] Right
);
 // declaring states as wires
 wire S1, S2, S3, S4, S5, S6;
 // clock output to be obtained from clock div module
// wire clk_o;
 // calling clock div module
//clk_div clock1(clk, clk_o);
 // calling flip flops with states to get next states
 D_FF ff1(M1, clk, M2);
 D_FF ff2(M5, clk, M3);
 D_FF ff3(M6, clk, M4);
 // state equations
 assign S1 = (S2 && ~S3 && ~RESET) || (~S3 && ~S4 && ~RESET && R);
 assign S5 =( ~S3 && S4 && ~RESET) || (~S2 && S3 && ~S4 && ~RESET) || (~S2 && ~S3 && ~RESET
&& R && L);
 assign S6 =(~S2 && S3 && ~S4 && ~RESET) || (~S2 && ~S4 && ~RESET && L) || (S2 && ~S3 && ~S4
&& ~RESET);
 // output equations 
 assign Left[2] = (S3 && S4 && ~RESET);
 assign Left[1] = (S3 && S4 && ~RESET) || (~S2 && S3 && ~RESET);
 assign Left[0] = (S3 && S4 && ~RESET) || (~S2 && S3 && ~RESET) || (~S2 && S4 && ~RESET);
 assign Right[2] = S2 && S3 && ~RESET;
 assign Right[1] = (S2 && S4 && ~RESET) || (S2 && S3 && ~RESET);
 assign Right[0] = S2 && ~RESET;
endmodule 

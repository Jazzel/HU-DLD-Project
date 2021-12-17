`timescale 1ns / 1ps

module vga_sync (
  // declaring inputs and outputs
  input [9:0] h_count,
  input [9:0] v_count,
  output  h_sync,
  output  v_sync,
  output  video_on,
  output [9:0] x_loc,
  output [9:0] y_loc
);
  
  // ----------- Horizontal parameters
  // Horizontal Display
  localparam HD = 640; 
  // Horizontal Front Porch
  localparam HF = 16;
  // Horizontal Back Porch
  localparam HB = 48;
  // Horizontal Retrace
  localparam HR = 96;
  
  // ----------- Vertical parameters
  // Vertical Display
  localparam VD = 480;
  // Vertical Front Porch
  localparam VF = 10; 
  // Vertical Back Porch
  localparam VB = 33; 
  // Vertical Retrace
  localparam VR = 2;
  
  // assigning values to hsync according to Timing diagram
  assign h_sync = ((h_count < (HD+HF)) || (h_count >= (HD+HF+HR)));
  // assigning values to vsync according to Timing diagram
  assign v_sync = ((v_count < (VD+VF)) || (v_count >= (VD+VF+VR)));
  // assigning values to video_on according to Timing diagram
  assign video_on = ((h_count < HD) && (v_count < VD));
  
  // X-Location will be the output from horizontal counter so we assign it with h_count 
  assign x_loc = h_count; 
  // Y-Location will be the output from vertical counter so we assign it with v_count 
  assign y_loc = v_count;
  
endmodule
`timescale 1ns / 1ps

// top Level Module - combinining all modules
module TopLevelModule(
// declaring inputs & outputs
  input clk, 
  input reset,
  
  output reset_check,
  
  output h_sync,
  output v_sync,
  
  output [3:0] red, 
  output [3:0] blue,
  output [3:0] green,
  
  input PS2_CLK,	
  input PS2_DATA,
  output [2:0] state,
  
  
  output crash_en, car_on, road_on
);

  wire M1, M3, M7;
  wire [9:0] M2, M4, M8, M9; 
  
//  // calling clock divider to get clock signal
  clk_div clock_Div(M1,clk);
  
  h_count h_counter(M2,M3,M1);
  v_count v_counter(M1, M4, M3);
  
  
   wire game_reset, pause, enter_key, left_key, right_key, finish_line, start_en,finish_en, key_relese;
////enter_key, video_on,
////road_on, 
////car_on,
////crash_en,
   
   
 
  keyboard inkey(clk, reset, PS2_DATA, PS2_CLK,left_key, right_key, enter_key, key_relese);
  
//  assign left_key = 1'b1;
  
   wire [11:0] rgb_out;
  
  assign reset_check = reset;
  
    pixel_gen pixel_generator(clk, game_reset, pause, left_key, right_key, enter_key, M7,start_en,crash_en,finish_en,M8, M9,road_on, finish_line, car_on,rgb_out);

game_state game_states(clk, reset, video_on, road_on, finish_line,car_on, enter_key, key_relese,start_en, crash_en, finish_en, pause, game_reset, state);
  
 vga_sync Vga_Sync(M2,M4,h_sync,v_sync,M7,M8,M9);

           
 assign red = rgb_out[3:0];
 assign blue = rgb_out[7:4];
 assign green = rgb_out[11:8];
   
endmodule
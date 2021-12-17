`timescale 1ns / 1ps

//module pixel_gen(
//  input [9:0] pixel_x,
//  input [9:0] pixel_y,
//  input clk_d,
//  input video_on,
//  output reg [3:0] red = 0,
//  output reg [3:0] blue = 0,
//  output reg [3:0] green = 0,
//  input right,
//  input left,
//  input up,
//  input [2:0] defaultState,
//  output reg check = 0
//);

////  check = 1'b0;
  
//  localparam max_width = 300;
//  localparam add_x = 10;
//  localparam add_y = 20;
//  localparam add_y_2 = 40;
//    reg [8:0] distance_x = 150;
////    reg check = 1'b0;
 
// always @ (posedge clk_d) begin
//    if (up == 1)
//    begin
//        if (distance_x == 300) 
//           begin
//                check = 1'b1;
//           end
//        if (distance_x == 150) 
//        begin
//            check = 1'b0;
//        end 
//        if (distance_x >= 150 && distance_x <= 300 && check == 0)
//        begin
//            distance_x = distance_x + 10;
//        end
//        if (distance_x >= 150 && distance_x <= 300 && check == 1)
//        begin
//            distance_x = distance_x - 10;
//        end
      
//    end
//   end

 
  
//  always @ (posedge clk_d) begin
////  red <= video_on ? (
////        pixel_y <= pixel_y  + 20 && pixel_y <= pixel_y + 40 && pixel_x <= pixel_x + max_width - 10 || pixel_y >= 0 && pixel_y <= 20 && pixel_x > 500  ? 4'hF : 4'h0 
////    ) : (4'h0);
  
  
//////    if ((pixel_x == 0) || (pixel_x==639) || (pixel_y==0) || (pixel_y == 479)) begin
//////      red <= 4'hF;
//////      blue <= 4'hF;
//////      green <= 4'hF;
//////    end
////    else 
////    begin
////    forever
////    red <= video_on ? (
////        pixel_x > 160 ? max_width - 
////    ) : (4'h0);
////        red <= video_on ? (
////        pixel_y >= 0 && pixel_y <= 20 && pixel_x < distance_x || pixel_y >= 0 && pixel_y <= 20 && pixel_x > 500  ||
////        pixel_y >= 20 && pixel_y <= 40 && pixel_x < distance_x + 10 || pixel_y >= 20 && pixel_y <= 40 && pixel_x > 490

    
//      red <= video_on ? (
//        pixel_y >= 0 && pixel_y <= 20 && pixel_x < (distance_x) || pixel_y >= 0 && pixel_y <= 20 && pixel_x > (500 - (300 - distance_x)) || 
//        pixel_y >= 20 && pixel_y <= 40 && pixel_x < (distance_x + 10) || pixel_y >= 20 && pixel_y <= 40 && pixel_x > (500 - (300 - (distance_x + 10))) || 
//        pixel_y >= 40 && pixel_y <= 60 && pixel_x < (distance_x + 20) || pixel_y >= 40 && pixel_y <= 60 && pixel_x > (500 - (300 - (distance_x + 20))) || 
//        pixel_y >= 60 && pixel_y <= 80 && pixel_x < (distance_x + 30) || pixel_y >= 60 && pixel_y <= 80 && pixel_x > (500 - (300 - (distance_x + 30))) || 
//        pixel_y >= 80 && pixel_y <= 100 && pixel_x < (distance_x + 40) || pixel_y >= 80 && pixel_y <= 100 && pixel_x > (500 - (300 - (distance_x + 40))) || 
//        pixel_y >= 100 && pixel_y <= 120 && pixel_x < (distance_x + 50) || pixel_y >= 100 && pixel_y <= 120 && pixel_x > (500 - (300 - (distance_x + 50))) ||
//        pixel_y >= 120 && pixel_y <= 140 && pixel_x < (distance_x + 60) || pixel_y >= 120 && pixel_y <= 140 && pixel_x > (500 - (300 - (distance_x + 60))) || 
//        pixel_y >= 140 && pixel_y <= 160 && pixel_x < (distance_x + 70) || pixel_y >= 140 && pixel_y <= 160 && pixel_x > (500 - (300 - (distance_x + 70))) ||
//        pixel_y >= 160 && pixel_y <= 180 && pixel_x < (distance_x + 80) || pixel_y >= 160 && pixel_y <= 180 && pixel_x > (500 - (300 - (distance_x + 80))) || 
//        pixel_y >= 180 && pixel_y <= 200 && pixel_x < (distance_x + 90) || pixel_y >= 180 && pixel_y <= 200 && pixel_x > (500 - (300 - (distance_x + 90))) || 
//        pixel_y >= 200 && pixel_y <= 220 && pixel_x < (distance_x + 100) || pixel_y >= 200 && pixel_y <= 220 && pixel_x > (500 - (300 - (distance_x + 100))) || 
//        pixel_y >= 220 && pixel_y <= 240 && pixel_x < (distance_x + 110) || pixel_y >= 220 && pixel_y <= 240 && pixel_x > (500 - (300 - (distance_x + 110))) || 
//        pixel_y >= 240 && pixel_y <= 260 && pixel_x < (distance_x + 120) || pixel_y >= 240 && pixel_y <= 260 && pixel_x > (500 - (300 - (distance_x + 120))) || 
//        pixel_y >= 260 && pixel_y <= 280 && pixel_x < (distance_x + 130) || pixel_y >= 260 && pixel_y <= 280 && pixel_x > (500 - (300 - (distance_x + 130))) || 
//        pixel_y >= 280 && pixel_y <= 300 && pixel_x < (distance_x + 140) || pixel_y >= 280 && pixel_y <= 300 && pixel_x > (500 - (300 - (distance_x + 140))) || 
//        pixel_y >= 300 && pixel_y <= 320 && pixel_x < (distance_x + 150) || pixel_y >= 300 && pixel_y <= 320 && pixel_x > (500 - (300 - (distance_x + 150))) || 
//        pixel_y >= 320 && pixel_y <= 340 && pixel_x < (distance_x + 140) || pixel_y >= 320 && pixel_y <= 340 && pixel_x > (500 - (300 - (distance_x + 140))) || 
//        pixel_y >= 340 && pixel_y <= 360 && pixel_x < (distance_x + 130) || pixel_y >= 340 && pixel_y <= 360 && pixel_x > (500 - (300 - (distance_x + 130))) || 
//        pixel_y >= 360 && pixel_y <= 380 && pixel_x < (distance_x + 120) || pixel_y >= 360 && pixel_y <= 380 && pixel_x > (500 - (300 - (distance_x + 120))) || 
//        pixel_y >= 380 && pixel_y <= 400 && pixel_x < (distance_x + 110) || pixel_y >= 380 && pixel_y <= 400 && pixel_x > (500 - (300 - (distance_x + 110))) || 
//        pixel_y >= 400 && pixel_y <= 420 && pixel_x < (distance_x + 100) || pixel_y >= 400 && pixel_y <= 420 && pixel_x > (500 - (300 - (distance_x + 100))) || 
//        pixel_y >= 420 && pixel_y <= 440 && pixel_x < (distance_x + 90) || pixel_y >= 420 && pixel_y <= 440 && pixel_x > (500 - (300 - (distance_x + 90))) || 
//        pixel_y >= 440 && pixel_y <= 460 && pixel_x < (distance_x + 80) || pixel_y >= 440 && pixel_y <= 460 && pixel_x > (500 - (300 - (distance_x + 80))) || 
//        pixel_y >= 460 && pixel_y <= 480 && pixel_x < (distance_x + 70) || pixel_y >= 460 && pixel_y <= 480 && pixel_x > (500 - (300 - (distance_x + 70)))
//      ? 4'hF : 4'h0):(4'h0);
//      green <= video_on ? ( 
//        defaultState[0] == 1 ? (pixel_y > 430 && pixel_y < 470 && pixel_x > 280 && pixel_x < 300) : (4'h0) ||
//        defaultState[1] == 1 ? (pixel_y > 430 && pixel_y < 470 && pixel_x > 340 && pixel_x < 360) : (4'h0) ||
//        defaultState[2] == 1 ? (pixel_y > 430 && pixel_y < 470 && pixel_x > 400 && pixel_x < 420) : (4'h0)
//        ? (4'h0) : (4'h0)
//      ):(4'h0);
//      blue <= video_on ? (pixel_y > 50 && pixel_y < 70 && pixel_x > 380 && pixel_x < 400) :4'h0;
////    end
//  end
//endmodule

module pixel_gen(
input wire clk, game_reset, pause, 
left_key, right_key, enter_key, video_on,
start_en,crash_en,finish_en,
input wire [20:0] pixel_x, pixel_y,
output wire road_on, finish_line, car_on,
output reg [11:0] rgb_out);

//////variables
reg refresh_tick; 
reg [1:0] state;
wire [11:0] road_rgb, car_rgb, text_rgb;

///instantiate models

//text
text mytext(clk, game_reset, pause, refresh_tick, 
        start_en,crash_en,finish_en,
         pixel_x, pixel_y, text_on, text_rgb);

////road
road race_road(clk,game_reset, refresh_tick, pause, enter_key,
        pixel_x,pixel_y,road_on, 
//        finish_line,
         road_rgb);

////car
car mycar(clk,game_reset,refresh_tick,left_key,right_key,pause,
            pixel_x,pixel_y,car_on,car_rgb);


// refr_tick: 1-clock tick asserted at start of v-sync
//            i.e., when the screen is refreshed (60 Hz)
//each pixel takes 1/25M sec, our clock is /100M sec, 
always @(posedge clk)
case(state)
0:if((pixel_y==479) && (pixel_x==0))
    begin
    refresh_tick <= 1'b1;
    state <= 2'b1;
    end
1: begin refresh_tick <= 1'b0; state <= 2'b10; end
2: state <= 2'b11;
3: state <= 2'b00;
endcase

//////////////////////////////////////////////
// rgb multiplexing circuit
//////////////////////////////////////////////
 always @*
    if (~video_on)
       rgb_out = 12'b0; // blank
    else
    if(text_on)
        rgb_out = text_rgb;
       else if (car_on)
         rgb_out = car_rgb;
       else if (road_on)
          rgb_out = road_rgb;
        else
       rgb_out = 12'h001; //  background

endmodule

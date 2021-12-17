// Copyright 1986-2020 Xilinx, Inc. All Rights Reserved.
// --------------------------------------------------------------------------------
// Tool Version: Vivado v.2020.1 (win64) Build 2902540 Wed May 27 19:54:49 MDT 2020
// Date        : Thu Dec 16 02:15:37 2021
// Host        : DESKTOP-RVF5401 running 64-bit major release  (build 9200)
// Command     : write_verilog -mode funcsim -nolib -force -file
//               C:/Users/jazze/Desktop/my/THEREALGAME_2/THEREALGAME.sim/sim_2/synth/func/xsim/TopLevelModule_func_synth.v
// Design      : TopLevelModule
// Purpose     : This verilog netlist is a functional simulation representation of the design and should not be modified
//               or synthesized. This netlist cannot be used for SDF annotated simulation.
// Device      : xc7a35tcpg236-1
// --------------------------------------------------------------------------------
`timescale 1 ps / 1 ps

(* NotValidForBitStream *)
module TopLevelModule
   (clk,
    reset,
    reset_check,
    h_sync,
    v_sync,
    red,
    blue,
    green,
    PS2_CLK,
    PS2_DATA,
    state,
    crash_en,
    car_on,
    road_on);
  input clk;
  input reset;
  output reset_check;
  output h_sync;
  output v_sync;
  output [3:0]red;
  output [3:0]blue;
  output [3:0]green;
  input PS2_CLK;
  input PS2_DATA;
  output [2:0]state;
  output crash_en;
  output car_on;
  output road_on;

  wire PS2_CLK;
  wire PS2_CLK_IBUF;
  wire PS2_DATA;
  wire PS2_DATA_IBUF;
  wire [3:0]blue;
  wire car_on;
  wire clk;
  wire clk_IBUF;
  wire clk_IBUF_BUFG;
  wire crash_en;
  wire [3:0]green;
  wire [0:0]green_OBUF;
  wire h_sync;
  wire inkey_n_0;
  wire [3:0]red;
  wire reset;
  wire reset_check;
  wire reset_check_OBUF;
  wire road_on;
  wire [2:0]state;
  wire [0:0]state_OBUF;
  wire v_sync;

  IBUF PS2_CLK_IBUF_inst
       (.I(PS2_CLK),
        .O(PS2_CLK_IBUF));
  IBUF PS2_DATA_IBUF_inst
       (.I(PS2_DATA),
        .O(PS2_DATA_IBUF));
  OBUF \blue_OBUF[0]_inst 
       (.I(green_OBUF),
        .O(blue[0]));
  OBUF \blue_OBUF[1]_inst 
       (.I(green_OBUF),
        .O(blue[1]));
  OBUF \blue_OBUF[2]_inst 
       (.I(green_OBUF),
        .O(blue[2]));
  OBUF \blue_OBUF[3]_inst 
       (.I(green_OBUF),
        .O(blue[3]));
  OBUF car_on_OBUF_inst
       (.I(1'b0),
        .O(car_on));
  BUFG clk_IBUF_BUFG_inst
       (.I(clk_IBUF),
        .O(clk_IBUF_BUFG));
  IBUF clk_IBUF_inst
       (.I(clk),
        .O(clk_IBUF));
  OBUF crash_en_OBUF_inst
       (.I(1'b0),
        .O(crash_en));
  game_state game_states
       (.CLK(clk_IBUF_BUFG),
        .\FSM_sequential_state_reg[0]_0 (inkey_n_0),
        .state_OBUF(state_OBUF));
  OBUF \green_OBUF[0]_inst 
       (.I(green_OBUF),
        .O(green[0]));
  OBUF \green_OBUF[1]_inst 
       (.I(green_OBUF),
        .O(green[1]));
  OBUF \green_OBUF[2]_inst 
       (.I(green_OBUF),
        .O(green[2]));
  OBUF \green_OBUF[3]_inst 
       (.I(green_OBUF),
        .O(green[3]));
  OBUF h_sync_OBUF_inst
       (.I(1'b1),
        .O(h_sync));
  keyboard inkey
       (.AR(reset_check_OBUF),
        .CLK(clk_IBUF_BUFG),
        .D(PS2_CLK_IBUF),
        .\b_reg_reg[10] (PS2_DATA_IBUF),
        .key_relese_reg_0(inkey_n_0),
        .state_OBUF(state_OBUF));
  pixel_gen pixel_generator
       (.CLK(clk_IBUF_BUFG),
        .Q(green_OBUF));
  OBUF \red_OBUF[0]_inst 
       (.I(1'b1),
        .O(red[0]));
  OBUF \red_OBUF[1]_inst 
       (.I(green_OBUF),
        .O(red[1]));
  OBUF \red_OBUF[2]_inst 
       (.I(green_OBUF),
        .O(red[2]));
  OBUF \red_OBUF[3]_inst 
       (.I(green_OBUF),
        .O(red[3]));
  IBUF reset_IBUF_inst
       (.I(reset),
        .O(reset_check_OBUF));
  OBUF reset_check_OBUF_inst
       (.I(reset_check_OBUF),
        .O(reset_check));
  OBUF road_on_OBUF_inst
       (.I(1'b0),
        .O(road_on));
  OBUF \state_OBUF[0]_inst 
       (.I(state_OBUF),
        .O(state[0]));
  OBUF \state_OBUF[1]_inst 
       (.I(1'b0),
        .O(state[1]));
  OBUF \state_OBUF[2]_inst 
       (.I(1'b0),
        .O(state[2]));
  OBUF v_sync_OBUF_inst
       (.I(1'b1),
        .O(v_sync));
endmodule

module font_rom
   (DOADO,
    addr_reg_reg_0,
    CLK);
  output [0:0]DOADO;
  output addr_reg_reg_0;
  input CLK;

  wire CLK;
  wire [0:0]DOADO;
  wire addr_reg_reg_0;
  wire addr_reg_reg_n_10;
  wire addr_reg_reg_n_11;
  wire addr_reg_reg_n_12;
  wire addr_reg_reg_n_13;
  wire addr_reg_reg_n_14;
  wire addr_reg_reg_n_15;
  wire addr_reg_reg_n_9;
  wire [15:8]NLW_addr_reg_reg_DOADO_UNCONNECTED;
  wire [15:0]NLW_addr_reg_reg_DOBDO_UNCONNECTED;
  wire [1:0]NLW_addr_reg_reg_DOPADOP_UNCONNECTED;
  wire [1:0]NLW_addr_reg_reg_DOPBDOP_UNCONNECTED;

  (* \MEM.PORTA.DATA_BIT_LAYOUT  = "p0_d8" *) 
  (* METHODOLOGY_DRC_VIOS = "{SYNTH-6 {cell *THIS*}}" *) 
  (* RTL_RAM_BITS = "16384" *) 
  (* RTL_RAM_NAME = "pixel_generator/mytext/font_unit/addr_reg" *) 
  (* RTL_RAM_TYPE = "RAM_SP" *) 
  (* bram_addr_begin = "0" *) 
  (* bram_addr_end = "2047" *) 
  (* bram_slice_begin = "0" *) 
  (* bram_slice_end = "7" *) 
  (* ram_addr_begin = "0" *) 
  (* ram_addr_end = "2047" *) 
  (* ram_offset = "0" *) 
  (* ram_slice_begin = "0" *) 
  (* ram_slice_end = "7" *) 
  RAMB18E1 #(
    .DOA_REG(0),
    .DOB_REG(0),
    .INITP_00(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_01(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_02(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_03(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_04(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_05(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_06(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INITP_07(256'h0000000000000000000000000000000000000000000000000000000000000000),
    .INIT_00(256'h000000007E818199BD8181A5817E000000000000000000000000000000000000),
    .INIT_01(256'h0000000010387CFEFEFEFE6C00000000000000007EFFFFE7C3FFFFDBFF7E0000),
    .INIT_02(256'h000000003C1818E7E7E73C3C18000000000000000010387CFE7C381000000000),
    .INIT_03(256'h000000000000183C3C18000000000000000000003C18187EFFFF7E3C18000000),
    .INIT_04(256'h00000000003C664242663C0000000000FFFFFFFFFFFFE7C3C3E7FFFFFFFFFFFF),
    .INIT_05(256'h0000000078CCCCCCCC78321A0E1E0000FFFFFFFFFFC399BDBD99C3FFFFFFFFFF),
    .INIT_06(256'h00000000E0F070303030303F333F00000000000018187E183C666666663C0000),
    .INIT_07(256'h000000001818DB3CE73CDB1818000000000000C0E6E767636363637F637F0000),
    .INIT_08(256'h0000000002060E1E3EFE3E1E0E0602000000000080C0E0F0F8FEF8F0E0C08000),
    .INIT_09(256'h000000006666006666666666666600000000000000183C7E1818187E3C180000),
    .INIT_0A(256'h0000007CC60C386CC6C66C3860C67C00000000001B1B1B1B1B7BDBDBDB7F0000),
    .INIT_0B(256'h000000307E183C7E1818187E3C18000000000000FEFEFEFE0000000000000000),
    .INIT_0C(256'h00000000183C7E18181818181818000000000000181818181818187E3C180000),
    .INIT_0D(256'h0000000000003060FE60300000000000000000000000180CFE0C180000000000),
    .INIT_0E(256'h0000000000002466FF66240000000000000000000000FEC0C0C0000000000000),
    .INIT_0F(256'h00000000001038387C7CFEFE000000000000000000FEFE7C7C38381000000000),
    .INIT_10(256'h000000001818001818183C3C3C18000000000000000000000000000000000000),
    .INIT_11(256'h000000006C6CFE6C6C6CFE6C6C00000000000000000000000000002466666600),
    .INIT_12(256'h0000000086C66030180CC6C200000000000018187CC68606067CC0C2C67C1818),
    .INIT_13(256'h000000000000000000000060303030000000000076CCCCCCDC76386C6C380000),
    .INIT_14(256'h0000000030180C0C0C0C0C0C18300000000000000C18303030303030180C0000),
    .INIT_15(256'h00000000000018187E18180000000000000000000000663CFF3C660000000000),
    .INIT_16(256'h00000000000000007E0000000000000000000030181818000000000000000000),
    .INIT_17(256'h0000000080C06030180C06020000000000000000181800000000000000000000),
    .INIT_18(256'h000000007E1818181818187838180000000000007CC6C6E6F6DECEC6C67C0000),
    .INIT_19(256'h000000007CC60606063C0606C67C000000000000FEC6C06030180C06C67C0000),
    .INIT_1A(256'h000000007CC6060606FCC0C0C0FE0000000000001E0C0C0CFECC6C3C1C0C0000),
    .INIT_1B(256'h0000000030303030180C0606C6FE0000000000007CC6C6C6C6FCC0C060380000),
    .INIT_1C(256'h00000000780C0606067EC6C6C67C0000000000007CC6C6C6C67CC6C6C67C0000),
    .INIT_1D(256'h0000000030181800000018180000000000000000001818000000181800000000),
    .INIT_1E(256'h000000000000007E00007E000000000000000000060C18306030180C06000000),
    .INIT_1F(256'h000000001818001818180CC6C67C0000000000006030180C060C183060000000),
    .INIT_20(256'h00000000C6C6C6C6FEC6C66C38100000000000007CC0DCDEDEDEC6C6C67C0000),
    .INIT_21(256'h000000003C66C2C0C0C0C0C2663C000000000000FC666666667C666666FC0000),
    .INIT_22(256'h00000000FE6662606878686266FE000000000000F86C6666666666666CF80000),
    .INIT_23(256'h000000003A66C6C6DEC0C0C2663C000000000000F06060606878686266FE0000),
    .INIT_24(256'h000000003C18181818181818183C000000000000C6C6C6C6C6FEC6C6C6C60000),
    .INIT_25(256'h00000000E666666C78786C6666E600000000000078CCCCCC0C0C0C0C0C1E0000),
    .INIT_26(256'h00000000C3C3C3C3C3DBFFFFE7C3000000000000FE6662606060606060F00000),
    .INIT_27(256'h000000007CC6C6C6C6C6C6C6C67C000000000000C6C6C6C6CEDEFEF6E6C60000),
    .INIT_28(256'h00000E0C7CDED6C6C6C6C6C6C67C000000000000F0606060607C666666FC0000),
    .INIT_29(256'h000000007CC6C6060C3860C6C67C000000000000E66666666C7C666666FC0000),
    .INIT_2A(256'h000000007CC6C6C6C6C6C6C6C6C60000000000003C18181818181899DBFF0000),
    .INIT_2B(256'h000000006666FFDBDBC3C3C3C3C3000000000000183C66C3C3C3C3C3C3C30000),
    .INIT_2C(256'h000000003C181818183C66C3C3C3000000000000C3C3663C18183C66C3C30000),
    .INIT_2D(256'h000000003C30303030303030303C000000000000FFC3C16030180C86C3FF0000),
    .INIT_2E(256'h000000003C0C0C0C0C0C0C0C0C3C00000000000002060E1C3870E0C080000000),
    .INIT_2F(256'h0000FF00000000000000000000000000000000000000000000000000C66C3810),
    .INIT_30(256'h0000000076CCCCCC7C0C78000000000000000000000000000000000000183030),
    .INIT_31(256'h000000007CC6C0C0C0C67C0000000000000000007C666666666C786060E00000),
    .INIT_32(256'h000000007CC6C0C0FEC67C00000000000000000076CCCCCCCC6C3C0C0C1C0000),
    .INIT_33(256'h0078CC0C7CCCCCCCCCCC76000000000000000000F060606060F060646C380000),
    .INIT_34(256'h000000003C181818181838001818000000000000E666666666766C6060E00000),
    .INIT_35(256'h00000000E6666C78786C666060E00000003C66660606060606060E0006060000),
    .INIT_36(256'h00000000DBDBDBDBDBFFE60000000000000000003C1818181818181818380000),
    .INIT_37(256'h000000007CC6C6C6C6C67C000000000000000000666666666666DC0000000000),
    .INIT_38(256'h001E0C0C7CCCCCCCCCCC76000000000000F060607C6666666666DC0000000000),
    .INIT_39(256'h000000007CC60C3860C67C000000000000000000F06060606676DC0000000000),
    .INIT_3A(256'h0000000076CCCCCCCCCCCC0000000000000000001C3630303030FC3030100000),
    .INIT_3B(256'h0000000066FFDBDBC3C3C3000000000000000000183C66C3C3C3C30000000000),
    .INIT_3C(256'h00F80C067EC6C6C6C6C6C6000000000000000000C3663C183C66C30000000000),
    .INIT_3D(256'h000000000E18181818701818180E000000000000FEC6603018CCFE0000000000),
    .INIT_3E(256'h0000000070181818180E18181870000000000000181818181800181818180000),
    .INIT_3F(256'h0000000000FEC6C6C66C381000000000000000000000000000000000DC760000),
    .INIT_A(18'h00000),
    .INIT_B(18'h00000),
    .INIT_FILE("NONE"),
    .RAM_MODE("TDP"),
    .RDADDR_COLLISION_HWCONFIG("PERFORMANCE"),
    .READ_WIDTH_A(9),
    .READ_WIDTH_B(0),
    .RSTREG_PRIORITY_A("RSTREG"),
    .RSTREG_PRIORITY_B("RSTREG"),
    .SIM_COLLISION_CHECK("ALL"),
    .SIM_DEVICE("7SERIES"),
    .SRVAL_A(18'h00000),
    .SRVAL_B(18'h00000),
    .WRITE_MODE_A("WRITE_FIRST"),
    .WRITE_MODE_B("WRITE_FIRST"),
    .WRITE_WIDTH_A(9),
    .WRITE_WIDTH_B(0)) 
    addr_reg_reg
       (.ADDRARDADDR({1'b1,1'b0,1'b1,1'b0,1'b0,1'b1,1'b1,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0}),
        .ADDRBWRADDR({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .CLKARDCLK(CLK),
        .CLKBWRCLK(1'b0),
        .DIADI({1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b0,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIBDI({1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1,1'b1}),
        .DIPADIP({1'b0,1'b0}),
        .DIPBDIP({1'b1,1'b1}),
        .DOADO({NLW_addr_reg_reg_DOADO_UNCONNECTED[15:8],DOADO,addr_reg_reg_n_9,addr_reg_reg_n_10,addr_reg_reg_n_11,addr_reg_reg_n_12,addr_reg_reg_n_13,addr_reg_reg_n_14,addr_reg_reg_n_15}),
        .DOBDO(NLW_addr_reg_reg_DOBDO_UNCONNECTED[15:0]),
        .DOPADOP(NLW_addr_reg_reg_DOPADOP_UNCONNECTED[1:0]),
        .DOPBDOP(NLW_addr_reg_reg_DOPBDOP_UNCONNECTED[1:0]),
        .ENARDEN(1'b1),
        .ENBWREN(1'b0),
        .REGCEAREGCE(1'b0),
        .REGCEB(1'b0),
        .RSTRAMARSTRAM(1'b0),
        .RSTRAMB(1'b0),
        .RSTREGARSTREG(1'b0),
        .RSTREGB(1'b0),
        .WEA({1'b0,1'b0}),
        .WEBWE({1'b0,1'b0,1'b0,1'b0}));
  LUT1 #(
    .INIT(2'h1)) 
    \text_rgb_reg[3]_i_1 
       (.I0(DOADO),
        .O(addr_reg_reg_0));
endmodule

module game_state
   (state_OBUF,
    \FSM_sequential_state_reg[0]_0 ,
    CLK);
  output [0:0]state_OBUF;
  input \FSM_sequential_state_reg[0]_0 ;
  input CLK;

  wire CLK;
  wire \FSM_sequential_state_reg[0]_0 ;
  wire [0:0]state_OBUF;

  (* FSM_ENCODED_STATES = "iSTATE:10,iSTATE0:01,iSTATE1:00,iSTATE2:11" *) 
  FDRE #(
    .INIT(1'b0)) 
    \FSM_sequential_state_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_sequential_state_reg[0]_0 ),
        .Q(state_OBUF),
        .R(1'b0));
endmodule

module keyboard
   (key_relese_reg_0,
    CLK,
    AR,
    state_OBUF,
    D,
    \b_reg_reg[10] );
  output key_relese_reg_0;
  input CLK;
  input [0:0]AR;
  input [0:0]state_OBUF;
  input [0:0]D;
  input [0:0]\b_reg_reg[10] ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_sequential_state[0]_i_2_n_0 ;
  wire [0:0]\b_reg_reg[10] ;
  wire [7:0]dout;
  wire [7:0]key;
  wire key_relese;
  wire key_relese_reg_0;
  wire ps2_n_1;
  wire rx_done_tick;
  wire [0:0]state_OBUF;

  LUT6 #(
    .INIT(64'h00020000F0F2F0F0)) 
    \FSM_sequential_state[0]_i_1 
       (.I0(\FSM_sequential_state[0]_i_2_n_0 ),
        .I1(key_relese),
        .I2(state_OBUF),
        .I3(key[7]),
        .I4(key[4]),
        .I5(AR),
        .O(key_relese_reg_0));
  LUT6 #(
    .INIT(64'h0000240000080000)) 
    \FSM_sequential_state[0]_i_2 
       (.I0(key[6]),
        .I1(key[3]),
        .I2(key[5]),
        .I3(key[2]),
        .I4(key[1]),
        .I5(key[0]),
        .O(\FSM_sequential_state[0]_i_2_n_0 ));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[0] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[0]),
        .Q(key[0]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[1] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[1]),
        .Q(key[1]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[2] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[2]),
        .Q(key[2]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[3] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[3]),
        .Q(key[3]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[4] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[4]),
        .Q(key[4]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[5] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[5]),
        .Q(key[5]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[6] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[6]),
        .Q(key[6]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    \key_reg[7] 
       (.C(CLK),
        .CE(rx_done_tick),
        .D(dout[7]),
        .Q(key[7]),
        .R(1'b0));
  FDRE #(
    .INIT(1'b0)) 
    key_relese_reg
       (.C(CLK),
        .CE(1'b1),
        .D(ps2_n_1),
        .Q(key_relese),
        .R(1'b0));
  ps2_rx ps2
       (.AR(AR),
        .CLK(CLK),
        .D(D),
        .Q(key),
        .\b_reg_reg[10]_0 (\b_reg_reg[10] ),
        .\b_reg_reg[8]_0 (dout),
        .\key_reg[2] (ps2_n_1),
        .key_relese(key_relese),
        .rx_done_tick(rx_done_tick));
endmodule

module pixel_gen
   (Q,
    CLK);
  output [0:0]Q;
  input CLK;

  wire CLK;
  wire [0:0]Q;

  text mytext
       (.CLK(CLK),
        .Q(Q));
endmodule

module ps2_rx
   (rx_done_tick,
    \key_reg[2] ,
    \b_reg_reg[8]_0 ,
    CLK,
    AR,
    Q,
    key_relese,
    D,
    \b_reg_reg[10]_0 );
  output rx_done_tick;
  output \key_reg[2] ;
  output [7:0]\b_reg_reg[8]_0 ;
  input CLK;
  input [0:0]AR;
  input [7:0]Q;
  input key_relese;
  input [0:0]D;
  input [0:0]\b_reg_reg[10]_0 ;

  wire [0:0]AR;
  wire CLK;
  wire [0:0]D;
  wire \FSM_onehot_state_reg[0]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[1]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_1_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_2_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_3_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_4_n_0 ;
  wire \FSM_onehot_state_reg[2]_i_5_n_0 ;
  wire \FSM_onehot_state_reg_reg_n_0_[0] ;
  wire \FSM_onehot_state_reg_reg_n_0_[1] ;
  wire [7:0]Q;
  wire b_next;
  wire [0:0]\b_reg_reg[10]_0 ;
  wire [7:0]\b_reg_reg[8]_0 ;
  wire \b_reg_reg_n_0_[10] ;
  wire \b_reg_reg_n_0_[9] ;
  wire f_ps2c_reg;
  wire f_ps2c_reg_i_1_n_0;
  wire f_ps2c_reg_i_2_n_0;
  wire f_ps2c_reg_i_3_n_0;
  wire [6:0]filter_next;
  wire \filter_reg_reg_n_0_[0] ;
  wire \key_reg[2] ;
  wire key_relese;
  wire key_relese_i_2_n_0;
  wire n_next;
  wire [3:0]n_reg;
  wire \n_reg[0]_i_1_n_0 ;
  wire \n_reg[1]_i_1_n_0 ;
  wire \n_reg[2]_i_1_n_0 ;
  wire \n_reg[3]_i_2_n_0 ;
  wire \n_reg[3]_i_3_n_0 ;
  wire rx_done_tick;

  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state_reg[0]_i_1 
       (.I0(rx_done_tick),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .O(\FSM_onehot_state_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state_reg[1]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\FSM_onehot_state_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair3" *) 
  LUT3 #(
    .INIT(8'hB8)) 
    \FSM_onehot_state_reg[2]_i_1 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I1(\FSM_onehot_state_reg[2]_i_2_n_0 ),
        .I2(rx_done_tick),
        .O(\FSM_onehot_state_reg[2]_i_1_n_0 ));
  LUT5 #(
    .INIT(32'hFFFF0008)) 
    \FSM_onehot_state_reg[2]_i_2 
       (.I0(\FSM_onehot_state_reg[2]_i_3_n_0 ),
        .I1(f_ps2c_reg),
        .I2(\FSM_onehot_state_reg[2]_i_4_n_0 ),
        .I3(\FSM_onehot_state_reg[2]_i_5_n_0 ),
        .I4(rx_done_tick),
        .O(\FSM_onehot_state_reg[2]_i_2_n_0 ));
  LUT6 #(
    .INIT(64'hFFFFFFFF00010000)) 
    \FSM_onehot_state_reg[2]_i_3 
       (.I0(n_reg[2]),
        .I1(n_reg[0]),
        .I2(n_reg[1]),
        .I3(n_reg[3]),
        .I4(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .O(\FSM_onehot_state_reg[2]_i_3_n_0 ));
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_reg[2]_i_4 
       (.I0(filter_next[4]),
        .I1(filter_next[3]),
        .I2(filter_next[6]),
        .I3(filter_next[5]),
        .O(\FSM_onehot_state_reg[2]_i_4_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT4 #(
    .INIT(16'hFFFE)) 
    \FSM_onehot_state_reg[2]_i_5 
       (.I0(filter_next[0]),
        .I1(\filter_reg_reg_n_0_[0] ),
        .I2(filter_next[2]),
        .I3(filter_next[1]),
        .O(\FSM_onehot_state_reg[2]_i_5_n_0 ));
  (* FSM_ENCODED_STATES = "idle:001,dps:010,load:100," *) 
  FDPE #(
    .INIT(1'b1)) 
    \FSM_onehot_state_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .D(\FSM_onehot_state_reg[0]_i_1_n_0 ),
        .PRE(AR),
        .Q(\FSM_onehot_state_reg_reg_n_0_[0] ));
  (* FSM_ENCODED_STATES = "idle:001,dps:010,load:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state_reg[1]_i_1_n_0 ),
        .Q(\FSM_onehot_state_reg_reg_n_0_[1] ));
  (* FSM_ENCODED_STATES = "idle:001,dps:010,load:100," *) 
  FDCE #(
    .INIT(1'b0)) 
    \FSM_onehot_state_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(\FSM_onehot_state_reg[2]_i_1_n_0 ),
        .Q(rx_done_tick));
  LUT4 #(
    .INIT(16'h00A8)) 
    \b_reg[10]_i_1 
       (.I0(f_ps2c_reg),
        .I1(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I3(f_ps2c_reg_i_2_n_0),
        .O(b_next));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[10] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[10]_0 ),
        .Q(\b_reg_reg_n_0_[10] ));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[1] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[8]_0 [1]),
        .Q(\b_reg_reg[8]_0 [0]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[2] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[8]_0 [2]),
        .Q(\b_reg_reg[8]_0 [1]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[3] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[8]_0 [3]),
        .Q(\b_reg_reg[8]_0 [2]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[4] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[8]_0 [4]),
        .Q(\b_reg_reg[8]_0 [3]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[5] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[8]_0 [5]),
        .Q(\b_reg_reg[8]_0 [4]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[6] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[8]_0 [6]),
        .Q(\b_reg_reg[8]_0 [5]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[7] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg[8]_0 [7]),
        .Q(\b_reg_reg[8]_0 [6]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[8] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg_n_0_[9] ),
        .Q(\b_reg_reg[8]_0 [7]));
  FDCE #(
    .INIT(1'b0)) 
    \b_reg_reg[9] 
       (.C(CLK),
        .CE(b_next),
        .CLR(AR),
        .D(\b_reg_reg_n_0_[10] ),
        .Q(\b_reg_reg_n_0_[9] ));
  LUT5 #(
    .INIT(32'hF8888888)) 
    f_ps2c_reg_i_1
       (.I0(f_ps2c_reg),
        .I1(f_ps2c_reg_i_2_n_0),
        .I2(f_ps2c_reg_i_3_n_0),
        .I3(\filter_reg_reg_n_0_[0] ),
        .I4(filter_next[0]),
        .O(f_ps2c_reg_i_1_n_0));
  (* SOFT_HLUTNM = "soft_lutpair0" *) 
  LUT5 #(
    .INIT(32'hFFFFFFFE)) 
    f_ps2c_reg_i_2
       (.I0(filter_next[1]),
        .I1(filter_next[2]),
        .I2(\filter_reg_reg_n_0_[0] ),
        .I3(filter_next[0]),
        .I4(\FSM_onehot_state_reg[2]_i_4_n_0 ),
        .O(f_ps2c_reg_i_2_n_0));
  LUT6 #(
    .INIT(64'h8000000000000000)) 
    f_ps2c_reg_i_3
       (.I0(filter_next[3]),
        .I1(filter_next[4]),
        .I2(filter_next[1]),
        .I3(filter_next[2]),
        .I4(filter_next[6]),
        .I5(filter_next[5]),
        .O(f_ps2c_reg_i_3_n_0));
  FDCE #(
    .INIT(1'b0)) 
    f_ps2c_reg_reg
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(f_ps2c_reg_i_1_n_0),
        .Q(f_ps2c_reg));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[0] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(filter_next[0]),
        .Q(\filter_reg_reg_n_0_[0] ));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[1] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(filter_next[1]),
        .Q(filter_next[0]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[2] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(filter_next[2]),
        .Q(filter_next[1]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[3] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(filter_next[3]),
        .Q(filter_next[2]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[4] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(filter_next[4]),
        .Q(filter_next[3]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[5] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(filter_next[5]),
        .Q(filter_next[4]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[6] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(filter_next[6]),
        .Q(filter_next[5]));
  FDCE #(
    .INIT(1'b0)) 
    \filter_reg_reg[7] 
       (.C(CLK),
        .CE(1'b1),
        .CLR(AR),
        .D(D),
        .Q(filter_next[6]));
  LUT6 #(
    .INIT(64'h0002FFFF00020002)) 
    key_relese_i_1
       (.I0(key_relese_i_2_n_0),
        .I1(Q[2]),
        .I2(Q[1]),
        .I3(Q[0]),
        .I4(rx_done_tick),
        .I5(key_relese),
        .O(\key_reg[2] ));
  LUT6 #(
    .INIT(64'h0080000000000000)) 
    key_relese_i_2
       (.I0(Q[5]),
        .I1(Q[6]),
        .I2(Q[4]),
        .I3(Q[3]),
        .I4(rx_done_tick),
        .I5(Q[7]),
        .O(key_relese_i_2_n_0));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'hF4)) 
    \n_reg[0]_i_1 
       (.I0(n_reg[0]),
        .I1(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .O(\n_reg[0]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair2" *) 
  LUT3 #(
    .INIT(8'h90)) 
    \n_reg[1]_i_1 
       (.I0(n_reg[0]),
        .I1(n_reg[1]),
        .I2(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\n_reg[1]_i_1_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT4 #(
    .INIT(16'hE100)) 
    \n_reg[2]_i_1 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .I3(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(\n_reg[2]_i_1_n_0 ));
  LUT6 #(
    .INIT(64'h4444444040404040)) 
    \n_reg[3]_i_1 
       (.I0(f_ps2c_reg_i_2_n_0),
        .I1(f_ps2c_reg),
        .I2(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I3(n_reg[3]),
        .I4(\n_reg[3]_i_3_n_0 ),
        .I5(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .O(n_next));
  LUT6 #(
    .INIT(64'hEAEAEAEAEAEAEAAE)) 
    \n_reg[3]_i_2 
       (.I0(\FSM_onehot_state_reg_reg_n_0_[0] ),
        .I1(\FSM_onehot_state_reg_reg_n_0_[1] ),
        .I2(n_reg[3]),
        .I3(n_reg[1]),
        .I4(n_reg[0]),
        .I5(n_reg[2]),
        .O(\n_reg[3]_i_2_n_0 ));
  (* SOFT_HLUTNM = "soft_lutpair1" *) 
  LUT3 #(
    .INIT(8'hFE)) 
    \n_reg[3]_i_3 
       (.I0(n_reg[1]),
        .I1(n_reg[0]),
        .I2(n_reg[2]),
        .O(\n_reg[3]_i_3_n_0 ));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[0] 
       (.C(CLK),
        .CE(n_next),
        .CLR(AR),
        .D(\n_reg[0]_i_1_n_0 ),
        .Q(n_reg[0]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[1] 
       (.C(CLK),
        .CE(n_next),
        .CLR(AR),
        .D(\n_reg[1]_i_1_n_0 ),
        .Q(n_reg[1]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[2] 
       (.C(CLK),
        .CE(n_next),
        .CLR(AR),
        .D(\n_reg[2]_i_1_n_0 ),
        .Q(n_reg[2]));
  FDCE #(
    .INIT(1'b0)) 
    \n_reg_reg[3] 
       (.C(CLK),
        .CE(n_next),
        .CLR(AR),
        .D(\n_reg[3]_i_2_n_0 ),
        .Q(n_reg[3]));
endmodule

module text
   (Q,
    CLK);
  output [0:0]Q;
  input CLK;

  wire CLK;
  wire [0:0]Q;
  wire font_unit_n_1;
  wire [7:7]font_word;

  font_rom font_unit
       (.CLK(CLK),
        .DOADO(font_word),
        .addr_reg_reg_0(font_unit_n_1));
  LDCP #(
    .INIT(1'b0)) 
    \text_rgb_reg[3] 
       (.CLR(font_unit_n_1),
        .D(1'b0),
        .G(1'b1),
        .PRE(font_word),
        .Q(Q));
endmodule
`ifndef GLBL
`define GLBL
`timescale  1 ps / 1 ps

module glbl ();

    parameter ROC_WIDTH = 100000;
    parameter TOC_WIDTH = 0;
    parameter GRES_WIDTH = 10000;
    parameter GRES_START = 10000;

//--------   STARTUP Globals --------------
    wire GSR;
    wire GTS;
    wire GWE;
    wire PRLD;
    wire GRESTORE;
    tri1 p_up_tmp;
    tri (weak1, strong0) PLL_LOCKG = p_up_tmp;

    wire PROGB_GLBL;
    wire CCLKO_GLBL;
    wire FCSBO_GLBL;
    wire [3:0] DO_GLBL;
    wire [3:0] DI_GLBL;
   
    reg GSR_int;
    reg GTS_int;
    reg PRLD_int;
    reg GRESTORE_int;

//--------   JTAG Globals --------------
    wire JTAG_TDO_GLBL;
    wire JTAG_TCK_GLBL;
    wire JTAG_TDI_GLBL;
    wire JTAG_TMS_GLBL;
    wire JTAG_TRST_GLBL;

    reg JTAG_CAPTURE_GLBL;
    reg JTAG_RESET_GLBL;
    reg JTAG_SHIFT_GLBL;
    reg JTAG_UPDATE_GLBL;
    reg JTAG_RUNTEST_GLBL;

    reg JTAG_SEL1_GLBL = 0;
    reg JTAG_SEL2_GLBL = 0 ;
    reg JTAG_SEL3_GLBL = 0;
    reg JTAG_SEL4_GLBL = 0;

    reg JTAG_USER_TDO1_GLBL = 1'bz;
    reg JTAG_USER_TDO2_GLBL = 1'bz;
    reg JTAG_USER_TDO3_GLBL = 1'bz;
    reg JTAG_USER_TDO4_GLBL = 1'bz;

    assign (strong1, weak0) GSR = GSR_int;
    assign (strong1, weak0) GTS = GTS_int;
    assign (weak1, weak0) PRLD = PRLD_int;
    assign (strong1, weak0) GRESTORE = GRESTORE_int;

    initial begin
	GSR_int = 1'b1;
	PRLD_int = 1'b1;
	#(ROC_WIDTH)
	GSR_int = 1'b0;
	PRLD_int = 1'b0;
    end

    initial begin
	GTS_int = 1'b1;
	#(TOC_WIDTH)
	GTS_int = 1'b0;
    end

    initial begin 
	GRESTORE_int = 1'b0;
	#(GRES_START);
	GRESTORE_int = 1'b1;
	#(GRES_WIDTH);
	GRESTORE_int = 1'b0;
    end

endmodule
`endif

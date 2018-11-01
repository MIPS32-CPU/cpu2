module PC( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output [31:0] io_to_ifid_pc // @[:@6.4]
);
  reg [31:0] r; // @[pc.scala 18:18:@8.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_11; // @[pc.scala 20:13:@10.6]
  wire [31:0] _T_12; // @[pc.scala 20:13:@11.6]
  wire [31:0] _GEN_0; // @[pc.scala 19:18:@9.4]
  assign _T_11 = r + 32'h4; // @[pc.scala 20:13:@10.6]
  assign _T_12 = _T_11[31:0]; // @[pc.scala 20:13:@11.6]
  assign _GEN_0 = _T_12; // @[pc.scala 19:18:@9.4]
  assign io_to_ifid_pc = r; // @[pc.scala 22:18:@14.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  r = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      r <= 32'h0;
    end else begin
      r <= _T_12;
    end
  end
endmodule
module IFID( // @[:@16.2]
  input         clock, // @[:@17.4]
  input         reset, // @[:@18.4]
  input  [31:0] io_from_pc_pc, // @[:@19.4]
  input  [31:0] io_inst, // @[:@19.4]
  output [31:0] io_to_id_pc, // @[:@19.4]
  output [31:0] io_to_id_inst // @[:@19.4]
);
  reg [31:0] _T_19; // @[ifid.scala 22:25:@21.4]
  reg [31:0] _RAND_0;
  reg [31:0] _T_22; // @[ifid.scala 24:27:@24.4]
  reg [31:0] _RAND_1;
  assign io_to_id_pc = _T_19; // @[ifid.scala 22:16:@23.4]
  assign io_to_id_inst = _T_22; // @[ifid.scala 24:18:@26.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_19 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_22 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_19 <= 32'h0;
    end else begin
      _T_19 <= io_from_pc_pc;
    end
    if (reset) begin
      _T_22 <= 32'h0;
    end else begin
      _T_22 <= io_inst;
    end
  end
endmodule
module ID( // @[:@28.2]
  input         clock, // @[:@29.4]
  input         reset, // @[:@30.4]
  input  [31:0] io_from_ifid_pc, // @[:@31.4]
  input  [31:0] io_from_ifid_inst, // @[:@31.4]
  input  [31:0] io_from_regs_data1, // @[:@31.4]
  input  [31:0] io_from_regs_data2, // @[:@31.4]
  output        io_to_regs_readEnable1, // @[:@31.4]
  output        io_to_regs_readEnable2, // @[:@31.4]
  output [4:0]  io_to_regs_readAddr1, // @[:@31.4]
  output [4:0]  io_to_regs_readAddr2, // @[:@31.4]
  output [5:0]  io_to_idex_inst_type, // @[:@31.4]
  output [31:0] io_to_idex_op1, // @[:@31.4]
  output [31:0] io_to_idex_op2, // @[:@31.4]
  output        io_to_idex_writeEnable, // @[:@31.4]
  output [4:0]  io_to_idex_writeAddr // @[:@31.4]
);
  wire [5:0] op; // @[id.scala 34:16:@33.4]
  wire [4:0] rs; // @[id.scala 35:16:@34.4]
  wire [4:0] rt; // @[id.scala 36:16:@35.4]
  wire [4:0] rd; // @[id.scala 37:16:@36.4]
  reg  _T_47; // @[id.scala 41:36:@39.4]
  reg [31:0] _RAND_0;
  reg  _T_50; // @[id.scala 42:36:@41.4]
  reg [31:0] _RAND_1;
  reg [4:0] _T_53; // @[id.scala 43:34:@43.4]
  reg [31:0] _RAND_2;
  reg [4:0] _T_56; // @[id.scala 44:34:@45.4]
  reg [31:0] _RAND_3;
  reg [31:0] _T_62; // @[id.scala 46:28:@48.4]
  reg [31:0] _RAND_4;
  reg [31:0] _T_65; // @[id.scala 47:28:@50.4]
  reg [31:0] _RAND_5;
  reg  _T_68; // @[id.scala 48:36:@52.4]
  reg [31:0] _RAND_6;
  reg [4:0] _T_71; // @[id.scala 49:34:@54.4]
  reg [31:0] _RAND_7;
  wire  _T_73; // @[id.scala 54:38:@60.6]
  wire [31:0] _T_80; // @[id.scala 69:14:@78.4]
  wire  _T_81; // @[id.scala 69:14:@79.4]
  wire [15:0] _T_83; // @[id.scala 72:18:@83.6]
  wire [31:0] imm; // @[id.scala 69:29:@80.4]
  wire [31:0] _GEN_6; // @[:@37.4 :@38.4 id.scala 72:12:@84.6]
  wire [31:0] _GEN_0; // @[id.scala 54:50:@61.6]
  wire [31:0] _GEN_1; // @[id.scala 52:34:@56.4]
  wire  _T_76; // @[id.scala 62:38:@71.6]
  wire [31:0] _GEN_2; // @[id.scala 62:50:@72.6]
  wire [31:0] _GEN_3; // @[id.scala 60:34:@67.4]
  wire  _GEN_4; // @[id.scala 69:29:@80.4]
  wire [4:0] _GEN_5; // @[id.scala 69:29:@80.4]
  wire  _GEN_7; // @[id.scala 69:29:@80.4]
  wire [4:0] _GEN_8; // @[id.scala 69:29:@80.4]
  wire [5:0] _GEN_9; // @[id.scala 69:29:@80.4]
  assign op = io_from_ifid_inst[31:26]; // @[id.scala 34:16:@33.4]
  assign rs = io_from_ifid_inst[25:21]; // @[id.scala 35:16:@34.4]
  assign rt = io_from_ifid_inst[20:16]; // @[id.scala 36:16:@35.4]
  assign rd = io_from_ifid_inst[15:11]; // @[id.scala 37:16:@36.4]
  assign _T_73 = io_to_regs_readEnable1 == 1'h0; // @[id.scala 54:38:@60.6]
  assign _T_80 = io_from_ifid_inst & 32'hfc000000; // @[id.scala 69:14:@78.4]
  assign _T_81 = 32'h34000000 == _T_80; // @[id.scala 69:14:@79.4]
  assign _T_83 = io_from_ifid_inst[15:0]; // @[id.scala 72:18:@83.6]
  assign imm = _T_81 ? {{16'd0}, _T_83} : 32'h0; // @[id.scala 69:29:@80.4]
  assign _GEN_6 = imm; // @[:@37.4 :@38.4 id.scala 72:12:@84.6]
  assign _GEN_0 = _T_73 ? imm : 32'h0; // @[id.scala 54:50:@61.6]
  assign _GEN_1 = io_to_regs_readEnable1 ? io_from_regs_data1 : _GEN_0; // @[id.scala 52:34:@56.4]
  assign _T_76 = io_to_regs_readEnable2 == 1'h0; // @[id.scala 62:38:@71.6]
  assign _GEN_2 = _T_76 ? imm : 32'h0; // @[id.scala 62:50:@72.6]
  assign _GEN_3 = io_to_regs_readEnable2 ? 32'h0 : _GEN_2; // @[id.scala 60:34:@67.4]
  assign _GEN_4 = _T_81; // @[id.scala 69:29:@80.4]
  assign _GEN_5 = _T_81 ? rs : 5'h0; // @[id.scala 69:29:@80.4]
  assign _GEN_7 = _T_81; // @[id.scala 69:29:@80.4]
  assign _GEN_8 = _T_81 ? rt : 5'h0; // @[id.scala 69:29:@80.4]
  assign _GEN_9 = _T_81 ? 6'h1 : 6'h3; // @[id.scala 69:29:@80.4]
  assign io_to_regs_readEnable1 = 32'h34000000 == _T_80; // @[id.scala 41:27:@40.4 id.scala 70:31:@81.6]
  assign io_to_regs_readEnable2 = 1'h0; // @[id.scala 42:27:@42.4]
  assign io_to_regs_readAddr1 = _T_81 ? rs : 5'h0; // @[id.scala 43:25:@44.4 id.scala 71:29:@82.6]
  assign io_to_regs_readAddr2 = 5'h0; // @[id.scala 44:25:@46.4]
  assign io_to_idex_inst_type = _T_81 ? 6'h1 : 6'h3; // @[id.scala 45:25:@47.4 id.scala 75:29:@87.6]
  assign io_to_idex_op1 = io_to_regs_readEnable1 ? io_from_regs_data1 : _GEN_0; // @[id.scala 46:19:@49.4 id.scala 53:23:@57.6 id.scala 55:23:@62.8 id.scala 57:23:@65.8]
  assign io_to_idex_op2 = io_to_regs_readEnable2 ? 32'h0 : _GEN_2; // @[id.scala 47:19:@51.4 id.scala 61:23:@68.6 id.scala 63:23:@73.8 id.scala 65:23:@76.8]
  assign io_to_idex_writeEnable = 32'h34000000 == _T_80; // @[id.scala 48:27:@53.4 id.scala 73:31:@85.6]
  assign io_to_idex_writeAddr = _T_81 ? rt : 5'h0; // @[id.scala 49:25:@55.4 id.scala 74:29:@86.6]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_47 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_50 = _RAND_1[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_53 = _RAND_2[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_56 = _RAND_3[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_62 = _RAND_4[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_5 = {1{`RANDOM}};
  _T_65 = _RAND_5[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_6 = {1{`RANDOM}};
  _T_68 = _RAND_6[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_7 = {1{`RANDOM}};
  _T_71 = _RAND_7[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    _T_47 <= 1'h0;
    _T_50 <= 1'h0;
    _T_53 <= 5'h0;
    _T_56 <= 5'h0;
    _T_62 <= 32'h0;
    _T_65 <= 32'h0;
    _T_68 <= 1'h0;
    _T_71 <= 5'h0;
  end
endmodule
module REGS( // @[:@92.2]
  input         clock, // @[:@93.4]
  input         reset, // @[:@94.4]
  input         io_from_id_readEnable1, // @[:@95.4]
  input         io_from_id_readEnable2, // @[:@95.4]
  input  [4:0]  io_from_id_readAddr1, // @[:@95.4]
  input  [4:0]  io_from_id_readAddr2, // @[:@95.4]
  input         io_from_memwb_writeEnable, // @[:@95.4]
  input  [4:0]  io_from_memwb_writeAddr, // @[:@95.4]
  input  [31:0] io_from_memwb_writeData, // @[:@95.4]
  output [31:0] io_to_id_data1, // @[:@95.4]
  output [31:0] io_to_id_data2 // @[:@95.4]
);
  reg [31:0] register [0:31]; // @[regs.scala 22:21:@97.4]
  reg [31:0] _RAND_0;
  wire [31:0] register__T_60_data; // @[regs.scala 22:21:@97.4]
  wire [4:0] register__T_60_addr; // @[regs.scala 22:21:@97.4]
  wire [31:0] register__T_72_data; // @[regs.scala 22:21:@97.4]
  wire [4:0] register__T_72_addr; // @[regs.scala 22:21:@97.4]
  wire [31:0] register__T_48_data; // @[regs.scala 22:21:@97.4]
  wire [4:0] register__T_48_addr; // @[regs.scala 22:21:@97.4]
  wire  register__T_48_mask; // @[regs.scala 22:21:@97.4]
  wire  register__T_48_en; // @[regs.scala 22:21:@97.4]
  wire  _T_44; // @[regs.scala 25:35:@98.4]
  wire  _T_46; // @[regs.scala 25:71:@99.4]
  wire  _T_47; // @[regs.scala 25:45:@100.4]
  wire [4:0] _GEN_0; // @[regs.scala 25:84:@101.4]
  wire  _GEN_1; // @[regs.scala 25:84:@101.4]
  wire  _GEN_2; // @[regs.scala 25:84:@101.4]
  wire  _GEN_3; // @[regs.scala 25:84:@101.4]
  wire [31:0] _GEN_4; // @[regs.scala 25:84:@101.4]
  reg [31:0] _T_51; // @[regs.scala 30:28:@105.4]
  reg [31:0] _RAND_1;
  wire  _T_53; // @[regs.scala 31:32:@107.4]
  wire  _T_56; // @[regs.scala 33:36:@112.6]
  wire  _T_58; // @[regs.scala 35:65:@117.8]
  wire  _T_59; // @[regs.scala 35:42:@118.8]
  wire [31:0] _GEN_5; // @[regs.scala 35:93:@119.8]
  wire [4:0] _GEN_6; // @[regs.scala 35:93:@119.8]
  wire  _GEN_7; // @[regs.scala 35:93:@119.8]
  wire  _GEN_8; // @[regs.scala 35:93:@119.8]
  wire [31:0] _GEN_9; // @[regs.scala 33:49:@113.6]
  wire [4:0] _GEN_10; // @[regs.scala 33:49:@113.6]
  wire  _GEN_11; // @[regs.scala 33:49:@113.6]
  wire  _GEN_12; // @[regs.scala 33:49:@113.6]
  wire [31:0] _GEN_13; // @[regs.scala 31:44:@108.4]
  wire [4:0] _GEN_14; // @[regs.scala 31:44:@108.4]
  wire  _GEN_15; // @[regs.scala 31:44:@108.4]
  wire  _GEN_16; // @[regs.scala 31:44:@108.4]
  reg [31:0] _T_63; // @[regs.scala 42:28:@126.4]
  reg [31:0] _RAND_2;
  wire  _T_65; // @[regs.scala 43:32:@128.4]
  wire  _T_68; // @[regs.scala 45:36:@133.6]
  wire  _T_70; // @[regs.scala 47:65:@138.8]
  wire  _T_71; // @[regs.scala 47:42:@139.8]
  wire [31:0] _GEN_17; // @[regs.scala 47:93:@140.8]
  wire [4:0] _GEN_18; // @[regs.scala 47:93:@140.8]
  wire  _GEN_19; // @[regs.scala 47:93:@140.8]
  wire  _GEN_20; // @[regs.scala 47:93:@140.8]
  wire [31:0] _GEN_21; // @[regs.scala 45:49:@134.6]
  wire [4:0] _GEN_22; // @[regs.scala 45:49:@134.6]
  wire  _GEN_23; // @[regs.scala 45:49:@134.6]
  wire  _GEN_24; // @[regs.scala 45:49:@134.6]
  wire [31:0] _GEN_25; // @[regs.scala 43:44:@129.4]
  wire [4:0] _GEN_26; // @[regs.scala 43:44:@129.4]
  wire  _GEN_27; // @[regs.scala 43:44:@129.4]
  wire  _GEN_28; // @[regs.scala 43:44:@129.4]
  wire  _GEN_29;
  wire [4:0] _GEN_30;
  wire  _GEN_31;
  wire [4:0] _GEN_32;
  wire  _GEN_33;
  wire  _GEN_34;
  wire [4:0] _GEN_35;
  wire [31:0] _GEN_36;
  assign register__T_60_addr = io_from_id_readAddr1;
  assign register__T_60_data = register[register__T_60_addr]; // @[regs.scala 22:21:@97.4]
  assign register__T_72_addr = 5'h0;
  assign register__T_72_data = register[register__T_72_addr]; // @[regs.scala 22:21:@97.4]
  assign register__T_48_data = io_from_memwb_writeData;
  assign register__T_48_addr = io_from_memwb_writeAddr;
  assign register__T_48_mask = 1'h1;
  assign register__T_48_en = io_from_memwb_writeEnable & _T_46;
  assign _T_44 = io_from_memwb_writeEnable; // @[regs.scala 25:35:@98.4]
  assign _T_46 = io_from_memwb_writeAddr != 5'h0; // @[regs.scala 25:71:@99.4]
  assign _T_47 = io_from_memwb_writeEnable & _T_46; // @[regs.scala 25:45:@100.4]
  assign _GEN_0 = io_from_memwb_writeAddr; // @[regs.scala 25:84:@101.4]
  assign _GEN_1 = clock; // @[regs.scala 25:84:@101.4]
  assign _GEN_2 = _T_47; // @[regs.scala 25:84:@101.4]
  assign _GEN_3 = 1'h1; // @[regs.scala 25:84:@101.4]
  assign _GEN_4 = io_from_memwb_writeData; // @[regs.scala 25:84:@101.4]
  assign _T_53 = io_from_id_readEnable1 == 1'h0; // @[regs.scala 31:32:@107.4]
  assign _T_56 = io_from_id_readAddr1 == 5'h0; // @[regs.scala 33:36:@112.6]
  assign _T_58 = io_from_id_readAddr1 == io_from_memwb_writeAddr; // @[regs.scala 35:65:@117.8]
  assign _T_59 = io_from_memwb_writeEnable & _T_58; // @[regs.scala 35:42:@118.8]
  assign _GEN_5 = _T_59 ? io_from_memwb_writeData : register__T_60_data; // @[regs.scala 35:93:@119.8]
  assign _GEN_6 = io_from_id_readAddr1; // @[regs.scala 35:93:@119.8]
  assign _GEN_7 = clock; // @[regs.scala 35:93:@119.8]
  assign _GEN_8 = _T_59 ? 1'h0 : 1'h1; // @[regs.scala 35:93:@119.8]
  assign _GEN_9 = _T_56 ? 32'h0 : _GEN_5; // @[regs.scala 33:49:@113.6]
  assign _GEN_10 = io_from_id_readAddr1; // @[regs.scala 33:49:@113.6]
  assign _GEN_11 = clock; // @[regs.scala 33:49:@113.6]
  assign _GEN_12 = _T_56 ? 1'h0 : _GEN_8; // @[regs.scala 33:49:@113.6]
  assign _GEN_13 = _T_53 ? 32'h0 : _GEN_9; // @[regs.scala 31:44:@108.4]
  assign _GEN_14 = io_from_id_readAddr1; // @[regs.scala 31:44:@108.4]
  assign _GEN_15 = clock; // @[regs.scala 31:44:@108.4]
  assign _GEN_16 = _T_53 ? 1'h0 : _GEN_12; // @[regs.scala 31:44:@108.4]
  assign _T_65 = 1'h1; // @[regs.scala 43:32:@128.4]
  assign _T_68 = 1'h1; // @[regs.scala 45:36:@133.6]
  assign _T_70 = 5'h0 == io_from_memwb_writeAddr; // @[regs.scala 47:65:@138.8]
  assign _T_71 = io_from_memwb_writeEnable & _T_70; // @[regs.scala 47:42:@139.8]
  assign _GEN_17 = _T_71 ? io_from_memwb_writeData : register__T_72_data; // @[regs.scala 47:93:@140.8]
  assign _GEN_18 = 5'h0; // @[regs.scala 47:93:@140.8]
  assign _GEN_19 = clock; // @[regs.scala 47:93:@140.8]
  assign _GEN_20 = _T_71 ? 1'h0 : 1'h1; // @[regs.scala 47:93:@140.8]
  assign _GEN_21 = 32'h0; // @[regs.scala 45:49:@134.6]
  assign _GEN_22 = 5'h0; // @[regs.scala 45:49:@134.6]
  assign _GEN_23 = clock; // @[regs.scala 45:49:@134.6]
  assign _GEN_24 = 1'h0; // @[regs.scala 45:49:@134.6]
  assign _GEN_25 = 32'h0; // @[regs.scala 43:44:@129.4]
  assign _GEN_26 = 5'h0; // @[regs.scala 43:44:@129.4]
  assign _GEN_27 = clock; // @[regs.scala 43:44:@129.4]
  assign _GEN_28 = 1'h0; // @[regs.scala 43:44:@129.4]
  assign io_to_id_data1 = _T_53 ? 32'h0 : _GEN_9; // @[regs.scala 30:19:@106.4 regs.scala 32:23:@109.6 regs.scala 34:23:@114.8 regs.scala 36:23:@120.10 regs.scala 38:23:@124.10]
  assign io_to_id_data2 = 32'h0; // @[regs.scala 42:19:@127.4 regs.scala 44:23:@130.6 regs.scala 46:23:@135.8 regs.scala 48:23:@141.10 regs.scala 50:23:@145.10]
  assign _GEN_29 = _T_53 ? 1'h0 : _GEN_12;
  assign _GEN_30 = io_from_id_readAddr1;
  assign _GEN_31 = 1'h0;
  assign _GEN_32 = 5'h0;
  assign _GEN_33 = io_from_memwb_writeEnable & _T_46;
  assign _GEN_34 = 1'h1;
  assign _GEN_35 = io_from_memwb_writeAddr;
  assign _GEN_36 = io_from_memwb_writeData;
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  _RAND_0 = {1{`RANDOM}};
  `ifdef RANDOMIZE_MEM_INIT
  for (initvar = 0; initvar < 32; initvar = initvar+1)
    register[initvar] = _RAND_0[31:0];
  `endif // RANDOMIZE_MEM_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_51 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_63 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(register__T_48_en & register__T_48_mask) begin
      register[register__T_48_addr] <= register__T_48_data; // @[regs.scala 22:21:@97.4]
    end
    _T_51 <= 32'h0;
    _T_63 <= 32'h0;
  end
endmodule
module IDEX( // @[:@148.2]
  input         clock, // @[:@149.4]
  input         reset, // @[:@150.4]
  input  [5:0]  io_from_id_inst_type, // @[:@151.4]
  input  [31:0] io_from_id_op1, // @[:@151.4]
  input  [31:0] io_from_id_op2, // @[:@151.4]
  input         io_from_id_writeEnable, // @[:@151.4]
  input  [4:0]  io_from_id_writeAddr, // @[:@151.4]
  output [5:0]  io_to_ex_inst_type, // @[:@151.4]
  output [31:0] io_to_ex_op1, // @[:@151.4]
  output [31:0] io_to_ex_op2, // @[:@151.4]
  output        io_to_ex_writeEnable, // @[:@151.4]
  output [4:0]  io_to_ex_writeAddr // @[:@151.4]
);
  reg [5:0] _T_39; // @[idex.scala 24:32:@153.4]
  reg [31:0] _RAND_0;
  reg [31:0] _T_42; // @[idex.scala 25:26:@156.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_45; // @[idex.scala 26:26:@159.4]
  reg [31:0] _RAND_2;
  reg  _T_48; // @[idex.scala 27:34:@162.4]
  reg [31:0] _RAND_3;
  reg [4:0] _T_51; // @[idex.scala 28:32:@165.4]
  reg [31:0] _RAND_4;
  assign io_to_ex_inst_type = _T_39; // @[idex.scala 24:23:@155.4]
  assign io_to_ex_op1 = _T_42; // @[idex.scala 25:17:@158.4]
  assign io_to_ex_op2 = _T_45; // @[idex.scala 26:17:@161.4]
  assign io_to_ex_writeEnable = _T_48; // @[idex.scala 27:25:@164.4]
  assign io_to_ex_writeAddr = _T_51; // @[idex.scala 28:23:@167.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_39 = _RAND_0[5:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_42 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_45 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  _T_48 = _RAND_3[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_4 = {1{`RANDOM}};
  _T_51 = _RAND_4[4:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_39 <= 6'h0;
    end else begin
      _T_39 <= io_from_id_inst_type;
    end
    if (reset) begin
      _T_42 <= 32'h0;
    end else begin
      _T_42 <= io_from_id_op1;
    end
    if (reset) begin
      _T_45 <= 32'h0;
    end else begin
      _T_45 <= io_from_id_op2;
    end
    if (reset) begin
      _T_48 <= 1'h0;
    end else begin
      _T_48 <= io_from_id_writeEnable;
    end
    if (reset) begin
      _T_51 <= 5'h0;
    end else begin
      _T_51 <= io_from_id_writeAddr;
    end
  end
endmodule
module EX( // @[:@169.2]
  input         clock, // @[:@170.4]
  input         reset, // @[:@171.4]
  input  [5:0]  io_from_idex_inst_type, // @[:@172.4]
  input  [31:0] io_from_idex_op1, // @[:@172.4]
  input  [31:0] io_from_idex_op2, // @[:@172.4]
  input         io_from_idex_writeEnable, // @[:@172.4]
  input  [4:0]  io_from_idex_writeAddr, // @[:@172.4]
  output        io_to_exmem_writeEnable, // @[:@172.4]
  output [4:0]  io_to_exmem_writeAddr, // @[:@172.4]
  output [31:0] io_to_exmem_result // @[:@172.4]
);
  wire  _T_33; // @[ex.scala 25:32:@176.4]
  wire [31:0] _T_34; // @[ex.scala 26:46:@178.6]
  wire [31:0] _GEN_0; // @[ex.scala 25:52:@177.4]
  assign _T_33 = io_from_idex_inst_type == 6'h1; // @[ex.scala 25:32:@176.4]
  assign _T_34 = io_from_idex_op1 | io_from_idex_op2; // @[ex.scala 26:46:@178.6]
  assign _GEN_0 = _T_33 ? _T_34 : 32'h0; // @[ex.scala 25:52:@177.4]
  assign io_to_exmem_writeEnable = io_from_idex_writeEnable; // @[ex.scala 22:28:@174.4]
  assign io_to_exmem_writeAddr = io_from_idex_writeAddr; // @[ex.scala 23:26:@175.4]
  assign io_to_exmem_result = _T_33 ? _T_34 : 32'h0; // @[ex.scala 26:27:@179.6 ex.scala 28:27:@182.6]
endmodule
module EXMEM( // @[:@185.2]
  input         clock, // @[:@186.4]
  input         reset, // @[:@187.4]
  input         io_from_ex_writeEnable, // @[:@188.4]
  input  [4:0]  io_from_ex_writeAddr, // @[:@188.4]
  input  [31:0] io_from_ex_result, // @[:@188.4]
  output        io_to_mem_writeEnable, // @[:@188.4]
  output [4:0]  io_to_mem_writeAddr, // @[:@188.4]
  output [31:0] io_to_mem_result // @[:@188.4]
);
  reg  _T_27; // @[exmem.scala 22:35:@190.4]
  reg [31:0] _RAND_0;
  reg [4:0] _T_30; // @[exmem.scala 23:33:@193.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_33; // @[exmem.scala 24:30:@196.4]
  reg [31:0] _RAND_2;
  assign io_to_mem_writeEnable = _T_27; // @[exmem.scala 22:26:@192.4]
  assign io_to_mem_writeAddr = _T_30; // @[exmem.scala 23:24:@195.4]
  assign io_to_mem_result = _T_33; // @[exmem.scala 24:21:@198.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_27 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_30 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_33 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_27 <= 1'h0;
    end else begin
      _T_27 <= io_from_ex_writeEnable;
    end
    if (reset) begin
      _T_30 <= 5'h0;
    end else begin
      _T_30 <= io_from_ex_writeAddr;
    end
    if (reset) begin
      _T_33 <= 32'h0;
    end else begin
      _T_33 <= io_from_ex_result;
    end
  end
endmodule
module MEM( // @[:@200.2]
  input         clock, // @[:@201.4]
  input         reset, // @[:@202.4]
  input         io_from_exmem_writeEnable, // @[:@203.4]
  input  [4:0]  io_from_exmem_writeAddr, // @[:@203.4]
  input  [31:0] io_from_exmem_result, // @[:@203.4]
  output        io_to_memwb_writeEnable, // @[:@203.4]
  output [4:0]  io_to_memwb_writeAddr, // @[:@203.4]
  output [31:0] io_to_memwb_result // @[:@203.4]
);
  assign io_to_memwb_writeEnable = io_from_exmem_writeEnable; // @[mem.scala 21:17:@207.4]
  assign io_to_memwb_writeAddr = io_from_exmem_writeAddr; // @[mem.scala 21:17:@206.4]
  assign io_to_memwb_result = io_from_exmem_result; // @[mem.scala 21:17:@205.4]
endmodule
module MEMWB( // @[:@209.2]
  input         clock, // @[:@210.4]
  input         reset, // @[:@211.4]
  input         io_from_mem_writeEnable, // @[:@212.4]
  input  [4:0]  io_from_mem_writeAddr, // @[:@212.4]
  input  [31:0] io_from_mem_result, // @[:@212.4]
  output        io_to_regs_writeEnable, // @[:@212.4]
  output [4:0]  io_to_regs_writeAddr, // @[:@212.4]
  output [31:0] io_to_regs_writeData // @[:@212.4]
);
  reg  _T_27; // @[memwb.scala 22:36:@214.4]
  reg [31:0] _RAND_0;
  reg [4:0] _T_30; // @[memwb.scala 23:34:@217.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_33; // @[memwb.scala 24:34:@220.4]
  reg [31:0] _RAND_2;
  assign io_to_regs_writeEnable = _T_27; // @[memwb.scala 22:27:@216.4]
  assign io_to_regs_writeAddr = _T_30; // @[memwb.scala 23:25:@219.4]
  assign io_to_regs_writeData = _T_33; // @[memwb.scala 24:25:@222.4]
`ifdef RANDOMIZE_GARBAGE_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_INVALID_ASSIGN
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_REG_INIT
`define RANDOMIZE
`endif
`ifdef RANDOMIZE_MEM_INIT
`define RANDOMIZE
`endif
`ifndef RANDOM
`define RANDOM $random
`endif
`ifdef RANDOMIZE
  integer initvar;
  initial begin
    `ifdef INIT_RANDOM
      `INIT_RANDOM
    `endif
    `ifndef VERILATOR
      `ifdef RANDOMIZE_DELAY
        #`RANDOMIZE_DELAY begin end
      `else
        #0.002 begin end
      `endif
    `endif
  `ifdef RANDOMIZE_REG_INIT
  _RAND_0 = {1{`RANDOM}};
  _T_27 = _RAND_0[0:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  _T_30 = _RAND_1[4:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  _T_33 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      _T_27 <= 1'h0;
    end else begin
      _T_27 <= io_from_mem_writeEnable;
    end
    if (reset) begin
      _T_30 <= 5'h0;
    end else begin
      _T_30 <= io_from_mem_writeAddr;
    end
    if (reset) begin
      _T_33 <= 32'h0;
    end else begin
      _T_33 <= io_from_mem_result;
    end
  end
endmodule
module CPU( // @[:@224.2]
  input         clock, // @[:@225.4]
  input         reset, // @[:@226.4]
  input  [31:0] io_rom_data, // @[:@227.4]
  output [31:0] io_rom_addr // @[:@227.4]
);
  wire  pc_clock; // @[cpu.scala 15:18:@229.4]
  wire  pc_reset; // @[cpu.scala 15:18:@229.4]
  wire [31:0] pc_io_to_ifid_pc; // @[cpu.scala 15:18:@229.4]
  wire  ifid_clock; // @[cpu.scala 16:20:@232.4]
  wire  ifid_reset; // @[cpu.scala 16:20:@232.4]
  wire [31:0] ifid_io_from_pc_pc; // @[cpu.scala 16:20:@232.4]
  wire [31:0] ifid_io_inst; // @[cpu.scala 16:20:@232.4]
  wire [31:0] ifid_io_to_id_pc; // @[cpu.scala 16:20:@232.4]
  wire [31:0] ifid_io_to_id_inst; // @[cpu.scala 16:20:@232.4]
  wire  id_clock; // @[cpu.scala 17:18:@235.4]
  wire  id_reset; // @[cpu.scala 17:18:@235.4]
  wire [31:0] id_io_from_ifid_pc; // @[cpu.scala 17:18:@235.4]
  wire [31:0] id_io_from_ifid_inst; // @[cpu.scala 17:18:@235.4]
  wire [31:0] id_io_from_regs_data1; // @[cpu.scala 17:18:@235.4]
  wire [31:0] id_io_from_regs_data2; // @[cpu.scala 17:18:@235.4]
  wire  id_io_to_regs_readEnable1; // @[cpu.scala 17:18:@235.4]
  wire  id_io_to_regs_readEnable2; // @[cpu.scala 17:18:@235.4]
  wire [4:0] id_io_to_regs_readAddr1; // @[cpu.scala 17:18:@235.4]
  wire [4:0] id_io_to_regs_readAddr2; // @[cpu.scala 17:18:@235.4]
  wire [5:0] id_io_to_idex_inst_type; // @[cpu.scala 17:18:@235.4]
  wire [31:0] id_io_to_idex_op1; // @[cpu.scala 17:18:@235.4]
  wire [31:0] id_io_to_idex_op2; // @[cpu.scala 17:18:@235.4]
  wire  id_io_to_idex_writeEnable; // @[cpu.scala 17:18:@235.4]
  wire [4:0] id_io_to_idex_writeAddr; // @[cpu.scala 17:18:@235.4]
  wire  regs_clock; // @[cpu.scala 18:20:@238.4]
  wire  regs_reset; // @[cpu.scala 18:20:@238.4]
  wire  regs_io_from_id_readEnable1; // @[cpu.scala 18:20:@238.4]
  wire  regs_io_from_id_readEnable2; // @[cpu.scala 18:20:@238.4]
  wire [4:0] regs_io_from_id_readAddr1; // @[cpu.scala 18:20:@238.4]
  wire [4:0] regs_io_from_id_readAddr2; // @[cpu.scala 18:20:@238.4]
  wire  regs_io_from_memwb_writeEnable; // @[cpu.scala 18:20:@238.4]
  wire [4:0] regs_io_from_memwb_writeAddr; // @[cpu.scala 18:20:@238.4]
  wire [31:0] regs_io_from_memwb_writeData; // @[cpu.scala 18:20:@238.4]
  wire [31:0] regs_io_to_id_data1; // @[cpu.scala 18:20:@238.4]
  wire [31:0] regs_io_to_id_data2; // @[cpu.scala 18:20:@238.4]
  wire  idex_clock; // @[cpu.scala 19:20:@241.4]
  wire  idex_reset; // @[cpu.scala 19:20:@241.4]
  wire [5:0] idex_io_from_id_inst_type; // @[cpu.scala 19:20:@241.4]
  wire [31:0] idex_io_from_id_op1; // @[cpu.scala 19:20:@241.4]
  wire [31:0] idex_io_from_id_op2; // @[cpu.scala 19:20:@241.4]
  wire  idex_io_from_id_writeEnable; // @[cpu.scala 19:20:@241.4]
  wire [4:0] idex_io_from_id_writeAddr; // @[cpu.scala 19:20:@241.4]
  wire [5:0] idex_io_to_ex_inst_type; // @[cpu.scala 19:20:@241.4]
  wire [31:0] idex_io_to_ex_op1; // @[cpu.scala 19:20:@241.4]
  wire [31:0] idex_io_to_ex_op2; // @[cpu.scala 19:20:@241.4]
  wire  idex_io_to_ex_writeEnable; // @[cpu.scala 19:20:@241.4]
  wire [4:0] idex_io_to_ex_writeAddr; // @[cpu.scala 19:20:@241.4]
  wire  ex_clock; // @[cpu.scala 20:18:@244.4]
  wire  ex_reset; // @[cpu.scala 20:18:@244.4]
  wire [5:0] ex_io_from_idex_inst_type; // @[cpu.scala 20:18:@244.4]
  wire [31:0] ex_io_from_idex_op1; // @[cpu.scala 20:18:@244.4]
  wire [31:0] ex_io_from_idex_op2; // @[cpu.scala 20:18:@244.4]
  wire  ex_io_from_idex_writeEnable; // @[cpu.scala 20:18:@244.4]
  wire [4:0] ex_io_from_idex_writeAddr; // @[cpu.scala 20:18:@244.4]
  wire  ex_io_to_exmem_writeEnable; // @[cpu.scala 20:18:@244.4]
  wire [4:0] ex_io_to_exmem_writeAddr; // @[cpu.scala 20:18:@244.4]
  wire [31:0] ex_io_to_exmem_result; // @[cpu.scala 20:18:@244.4]
  wire  exmem_clock; // @[cpu.scala 21:21:@247.4]
  wire  exmem_reset; // @[cpu.scala 21:21:@247.4]
  wire  exmem_io_from_ex_writeEnable; // @[cpu.scala 21:21:@247.4]
  wire [4:0] exmem_io_from_ex_writeAddr; // @[cpu.scala 21:21:@247.4]
  wire [31:0] exmem_io_from_ex_result; // @[cpu.scala 21:21:@247.4]
  wire  exmem_io_to_mem_writeEnable; // @[cpu.scala 21:21:@247.4]
  wire [4:0] exmem_io_to_mem_writeAddr; // @[cpu.scala 21:21:@247.4]
  wire [31:0] exmem_io_to_mem_result; // @[cpu.scala 21:21:@247.4]
  wire  mem_clock; // @[cpu.scala 22:19:@250.4]
  wire  mem_reset; // @[cpu.scala 22:19:@250.4]
  wire  mem_io_from_exmem_writeEnable; // @[cpu.scala 22:19:@250.4]
  wire [4:0] mem_io_from_exmem_writeAddr; // @[cpu.scala 22:19:@250.4]
  wire [31:0] mem_io_from_exmem_result; // @[cpu.scala 22:19:@250.4]
  wire  mem_io_to_memwb_writeEnable; // @[cpu.scala 22:19:@250.4]
  wire [4:0] mem_io_to_memwb_writeAddr; // @[cpu.scala 22:19:@250.4]
  wire [31:0] mem_io_to_memwb_result; // @[cpu.scala 22:19:@250.4]
  wire  memwb_clock; // @[cpu.scala 23:21:@253.4]
  wire  memwb_reset; // @[cpu.scala 23:21:@253.4]
  wire  memwb_io_from_mem_writeEnable; // @[cpu.scala 23:21:@253.4]
  wire [4:0] memwb_io_from_mem_writeAddr; // @[cpu.scala 23:21:@253.4]
  wire [31:0] memwb_io_from_mem_result; // @[cpu.scala 23:21:@253.4]
  wire  memwb_io_to_regs_writeEnable; // @[cpu.scala 23:21:@253.4]
  wire [4:0] memwb_io_to_regs_writeAddr; // @[cpu.scala 23:21:@253.4]
  wire [31:0] memwb_io_to_regs_writeData; // @[cpu.scala 23:21:@253.4]
  PC pc ( // @[cpu.scala 15:18:@229.4]
    .clock(pc_clock),
    .reset(pc_reset),
    .io_to_ifid_pc(pc_io_to_ifid_pc)
  );
  IFID ifid ( // @[cpu.scala 16:20:@232.4]
    .clock(ifid_clock),
    .reset(ifid_reset),
    .io_from_pc_pc(ifid_io_from_pc_pc),
    .io_inst(ifid_io_inst),
    .io_to_id_pc(ifid_io_to_id_pc),
    .io_to_id_inst(ifid_io_to_id_inst)
  );
  ID id ( // @[cpu.scala 17:18:@235.4]
    .clock(id_clock),
    .reset(id_reset),
    .io_from_ifid_pc(id_io_from_ifid_pc),
    .io_from_ifid_inst(id_io_from_ifid_inst),
    .io_from_regs_data1(id_io_from_regs_data1),
    .io_from_regs_data2(id_io_from_regs_data2),
    .io_to_regs_readEnable1(id_io_to_regs_readEnable1),
    .io_to_regs_readEnable2(id_io_to_regs_readEnable2),
    .io_to_regs_readAddr1(id_io_to_regs_readAddr1),
    .io_to_regs_readAddr2(id_io_to_regs_readAddr2),
    .io_to_idex_inst_type(id_io_to_idex_inst_type),
    .io_to_idex_op1(id_io_to_idex_op1),
    .io_to_idex_op2(id_io_to_idex_op2),
    .io_to_idex_writeEnable(id_io_to_idex_writeEnable),
    .io_to_idex_writeAddr(id_io_to_idex_writeAddr)
  );
  REGS regs ( // @[cpu.scala 18:20:@238.4]
    .clock(regs_clock),
    .reset(regs_reset),
    .io_from_id_readEnable1(regs_io_from_id_readEnable1),
    .io_from_id_readEnable2(regs_io_from_id_readEnable2),
    .io_from_id_readAddr1(regs_io_from_id_readAddr1),
    .io_from_id_readAddr2(regs_io_from_id_readAddr2),
    .io_from_memwb_writeEnable(regs_io_from_memwb_writeEnable),
    .io_from_memwb_writeAddr(regs_io_from_memwb_writeAddr),
    .io_from_memwb_writeData(regs_io_from_memwb_writeData),
    .io_to_id_data1(regs_io_to_id_data1),
    .io_to_id_data2(regs_io_to_id_data2)
  );
  IDEX idex ( // @[cpu.scala 19:20:@241.4]
    .clock(idex_clock),
    .reset(idex_reset),
    .io_from_id_inst_type(idex_io_from_id_inst_type),
    .io_from_id_op1(idex_io_from_id_op1),
    .io_from_id_op2(idex_io_from_id_op2),
    .io_from_id_writeEnable(idex_io_from_id_writeEnable),
    .io_from_id_writeAddr(idex_io_from_id_writeAddr),
    .io_to_ex_inst_type(idex_io_to_ex_inst_type),
    .io_to_ex_op1(idex_io_to_ex_op1),
    .io_to_ex_op2(idex_io_to_ex_op2),
    .io_to_ex_writeEnable(idex_io_to_ex_writeEnable),
    .io_to_ex_writeAddr(idex_io_to_ex_writeAddr)
  );
  EX ex ( // @[cpu.scala 20:18:@244.4]
    .clock(ex_clock),
    .reset(ex_reset),
    .io_from_idex_inst_type(ex_io_from_idex_inst_type),
    .io_from_idex_op1(ex_io_from_idex_op1),
    .io_from_idex_op2(ex_io_from_idex_op2),
    .io_from_idex_writeEnable(ex_io_from_idex_writeEnable),
    .io_from_idex_writeAddr(ex_io_from_idex_writeAddr),
    .io_to_exmem_writeEnable(ex_io_to_exmem_writeEnable),
    .io_to_exmem_writeAddr(ex_io_to_exmem_writeAddr),
    .io_to_exmem_result(ex_io_to_exmem_result)
  );
  EXMEM exmem ( // @[cpu.scala 21:21:@247.4]
    .clock(exmem_clock),
    .reset(exmem_reset),
    .io_from_ex_writeEnable(exmem_io_from_ex_writeEnable),
    .io_from_ex_writeAddr(exmem_io_from_ex_writeAddr),
    .io_from_ex_result(exmem_io_from_ex_result),
    .io_to_mem_writeEnable(exmem_io_to_mem_writeEnable),
    .io_to_mem_writeAddr(exmem_io_to_mem_writeAddr),
    .io_to_mem_result(exmem_io_to_mem_result)
  );
  MEM mem ( // @[cpu.scala 22:19:@250.4]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_from_exmem_writeEnable(mem_io_from_exmem_writeEnable),
    .io_from_exmem_writeAddr(mem_io_from_exmem_writeAddr),
    .io_from_exmem_result(mem_io_from_exmem_result),
    .io_to_memwb_writeEnable(mem_io_to_memwb_writeEnable),
    .io_to_memwb_writeAddr(mem_io_to_memwb_writeAddr),
    .io_to_memwb_result(mem_io_to_memwb_result)
  );
  MEMWB memwb ( // @[cpu.scala 23:21:@253.4]
    .clock(memwb_clock),
    .reset(memwb_reset),
    .io_from_mem_writeEnable(memwb_io_from_mem_writeEnable),
    .io_from_mem_writeAddr(memwb_io_from_mem_writeAddr),
    .io_from_mem_result(memwb_io_from_mem_result),
    .io_to_regs_writeEnable(memwb_io_to_regs_writeEnable),
    .io_to_regs_writeAddr(memwb_io_to_regs_writeAddr),
    .io_to_regs_writeData(memwb_io_to_regs_writeData)
  );
  assign io_rom_addr = pc_io_to_ifid_pc; // @[cpu.scala 37:16:@288.4]
  assign pc_clock = clock; // @[:@230.4]
  assign pc_reset = reset; // @[:@231.4]
  assign ifid_clock = clock; // @[:@233.4]
  assign ifid_reset = reset; // @[:@234.4]
  assign ifid_io_from_pc_pc = pc_io_to_ifid_pc; // @[cpu.scala 25:19:@256.4]
  assign ifid_io_inst = io_rom_data; // @[cpu.scala 36:17:@287.4]
  assign id_clock = clock; // @[:@236.4]
  assign id_reset = reset; // @[:@237.4]
  assign id_io_from_ifid_pc = ifid_io_to_id_pc; // @[cpu.scala 26:19:@258.4]
  assign id_io_from_ifid_inst = ifid_io_to_id_inst; // @[cpu.scala 26:19:@257.4]
  assign id_io_from_regs_data1 = regs_io_to_id_data1; // @[cpu.scala 28:19:@264.4]
  assign id_io_from_regs_data2 = 32'h0; // @[cpu.scala 28:19:@263.4]
  assign regs_clock = clock; // @[:@239.4]
  assign regs_reset = reset; // @[:@240.4]
  assign regs_io_from_id_readEnable1 = id_io_to_regs_readEnable1; // @[cpu.scala 27:19:@262.4]
  assign regs_io_from_id_readEnable2 = 1'h0; // @[cpu.scala 27:19:@261.4]
  assign regs_io_from_id_readAddr1 = id_io_to_regs_readAddr1; // @[cpu.scala 27:19:@260.4]
  assign regs_io_from_id_readAddr2 = 5'h0; // @[cpu.scala 27:19:@259.4]
  assign regs_io_from_memwb_writeEnable = memwb_io_to_regs_writeEnable; // @[cpu.scala 34:21:@286.4]
  assign regs_io_from_memwb_writeAddr = memwb_io_to_regs_writeAddr; // @[cpu.scala 34:21:@285.4]
  assign regs_io_from_memwb_writeData = memwb_io_to_regs_writeData; // @[cpu.scala 34:21:@284.4]
  assign idex_clock = clock; // @[:@242.4]
  assign idex_reset = reset; // @[:@243.4]
  assign idex_io_from_id_inst_type = id_io_to_idex_inst_type; // @[cpu.scala 29:19:@269.4]
  assign idex_io_from_id_op1 = id_io_to_idex_op1; // @[cpu.scala 29:19:@268.4]
  assign idex_io_from_id_op2 = id_io_to_idex_op2; // @[cpu.scala 29:19:@267.4]
  assign idex_io_from_id_writeEnable = id_io_to_idex_writeEnable; // @[cpu.scala 29:19:@266.4]
  assign idex_io_from_id_writeAddr = id_io_to_idex_writeAddr; // @[cpu.scala 29:19:@265.4]
  assign ex_clock = clock; // @[:@245.4]
  assign ex_reset = reset; // @[:@246.4]
  assign ex_io_from_idex_inst_type = idex_io_to_ex_inst_type; // @[cpu.scala 30:19:@274.4]
  assign ex_io_from_idex_op1 = idex_io_to_ex_op1; // @[cpu.scala 30:19:@273.4]
  assign ex_io_from_idex_op2 = idex_io_to_ex_op2; // @[cpu.scala 30:19:@272.4]
  assign ex_io_from_idex_writeEnable = idex_io_to_ex_writeEnable; // @[cpu.scala 30:19:@271.4]
  assign ex_io_from_idex_writeAddr = idex_io_to_ex_writeAddr; // @[cpu.scala 30:19:@270.4]
  assign exmem_clock = clock; // @[:@248.4]
  assign exmem_reset = reset; // @[:@249.4]
  assign exmem_io_from_ex_writeEnable = ex_io_to_exmem_writeEnable; // @[cpu.scala 31:19:@277.4]
  assign exmem_io_from_ex_writeAddr = ex_io_to_exmem_writeAddr; // @[cpu.scala 31:19:@276.4]
  assign exmem_io_from_ex_result = ex_io_to_exmem_result; // @[cpu.scala 31:19:@275.4]
  assign mem_clock = clock; // @[:@251.4]
  assign mem_reset = reset; // @[:@252.4]
  assign mem_io_from_exmem_writeEnable = exmem_io_to_mem_writeEnable; // @[cpu.scala 32:20:@280.4]
  assign mem_io_from_exmem_writeAddr = exmem_io_to_mem_writeAddr; // @[cpu.scala 32:20:@279.4]
  assign mem_io_from_exmem_result = exmem_io_to_mem_result; // @[cpu.scala 32:20:@278.4]
  assign memwb_clock = clock; // @[:@254.4]
  assign memwb_reset = reset; // @[:@255.4]
  assign memwb_io_from_mem_writeEnable = mem_io_to_memwb_writeEnable; // @[cpu.scala 33:20:@283.4]
  assign memwb_io_from_mem_writeAddr = mem_io_to_memwb_writeAddr; // @[cpu.scala 33:20:@282.4]
  assign memwb_io_from_mem_result = mem_io_to_memwb_result; // @[cpu.scala 33:20:@281.4]
endmodule

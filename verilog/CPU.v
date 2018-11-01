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
  input         io_from_ex_writeEnable, // @[:@31.4]
  input  [4:0]  io_from_ex_writeAddr, // @[:@31.4]
  input  [31:0] io_from_ex_result, // @[:@31.4]
  input         io_from_mem_writeEnable, // @[:@31.4]
  input  [4:0]  io_from_mem_writeAddr, // @[:@31.4]
  input  [31:0] io_from_mem_result, // @[:@31.4]
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
  wire [5:0] op; // @[id.scala 36:16:@33.4]
  wire [4:0] rs; // @[id.scala 37:16:@34.4]
  wire [4:0] rt; // @[id.scala 38:16:@35.4]
  wire [4:0] rd; // @[id.scala 39:16:@36.4]
  wire  _T_104; // @[id.scala 55:60:@65.6]
  wire  _T_105; // @[id.scala 55:37:@66.6]
  wire  _T_106; // @[id.scala 57:68:@71.8]
  wire  _T_107; // @[id.scala 57:44:@72.8]
  wire [31:0] _GEN_0; // @[id.scala 57:93:@73.8]
  wire [31:0] _GEN_1; // @[id.scala 55:85:@67.6]
  wire  _T_109; // @[id.scala 62:38:@81.6]
  wire [31:0] _T_120; // @[id.scala 83:14:@112.4]
  wire  _T_121; // @[id.scala 83:14:@113.4]
  wire [15:0] _T_123; // @[id.scala 86:18:@117.6]
  wire [31:0] imm; // @[id.scala 83:29:@114.4]
  wire [31:0] _GEN_10; // @[:@37.4 :@38.4 id.scala 86:12:@118.6]
  wire [31:0] _GEN_2; // @[id.scala 62:50:@82.6]
  wire [31:0] _GEN_3; // @[id.scala 54:34:@64.4]
  wire  _T_111; // @[id.scala 69:60:@89.6]
  wire  _T_112; // @[id.scala 69:37:@90.6]
  wire  _T_113; // @[id.scala 71:68:@95.8]
  wire  _T_114; // @[id.scala 71:44:@96.8]
  wire [31:0] _GEN_4; // @[id.scala 71:93:@97.8]
  wire [31:0] _GEN_5; // @[id.scala 69:85:@91.6]
  wire  _T_116; // @[id.scala 76:38:@105.6]
  wire [31:0] _GEN_6; // @[id.scala 76:50:@106.6]
  wire [31:0] _GEN_7; // @[id.scala 68:34:@88.4]
  wire  _T_75; // @[:@39.4 :@40.4]
  wire  _GEN_8; // @[id.scala 83:29:@114.4]
  wire [4:0] _T_81; // @[:@45.4 :@46.4]
  wire [4:0] _GEN_9; // @[id.scala 83:29:@114.4]
  wire  _T_100; // @[:@58.4 :@59.4]
  wire  _GEN_11; // @[id.scala 83:29:@114.4]
  wire [4:0] _T_103; // @[:@61.4 :@62.4]
  wire [4:0] _GEN_12; // @[id.scala 83:29:@114.4]
  wire [2:0] _GEN_13; // @[id.scala 83:29:@114.4]
  wire  _T_78; // @[:@42.4 :@43.4]
  wire [4:0] _T_84; // @[:@48.4 :@49.4]
  wire [31:0] _T_94; // @[:@52.4 :@53.4]
  wire [31:0] _T_97; // @[:@55.4 :@56.4]
  wire [2:0] _GEN_14; // @[id.scala 47:25:@51.4 id.scala 89:29:@121.6]
  assign op = io_from_ifid_inst[31:26]; // @[id.scala 36:16:@33.4]
  assign rs = io_from_ifid_inst[25:21]; // @[id.scala 37:16:@34.4]
  assign rt = io_from_ifid_inst[20:16]; // @[id.scala 38:16:@35.4]
  assign rd = io_from_ifid_inst[15:11]; // @[id.scala 39:16:@36.4]
  assign _T_104 = io_from_ex_writeAddr == io_to_regs_readAddr1; // @[id.scala 55:60:@65.6]
  assign _T_105 = io_from_ex_writeEnable & _T_104; // @[id.scala 55:37:@66.6]
  assign _T_106 = io_from_mem_writeAddr == io_to_regs_readAddr1; // @[id.scala 57:68:@71.8]
  assign _T_107 = io_from_mem_writeEnable & _T_106; // @[id.scala 57:44:@72.8]
  assign _GEN_0 = _T_107 ? io_from_mem_result : io_from_regs_data1; // @[id.scala 57:93:@73.8]
  assign _GEN_1 = _T_105 ? io_from_ex_result : _GEN_0; // @[id.scala 55:85:@67.6]
  assign _T_109 = io_to_regs_readEnable1 == 1'h0; // @[id.scala 62:38:@81.6]
  assign _T_120 = io_from_ifid_inst & 32'hfc000000; // @[id.scala 83:14:@112.4]
  assign _T_121 = 32'h34000000 == _T_120; // @[id.scala 83:14:@113.4]
  assign _T_123 = io_from_ifid_inst[15:0]; // @[id.scala 86:18:@117.6]
  assign imm = _T_121 ? {{16'd0}, _T_123} : 32'h0; // @[id.scala 83:29:@114.4]
  assign _GEN_10 = imm; // @[:@37.4 :@38.4 id.scala 86:12:@118.6]
  assign _GEN_2 = _T_109 ? imm : 32'h0; // @[id.scala 62:50:@82.6]
  assign _GEN_3 = io_to_regs_readEnable1 ? _GEN_1 : _GEN_2; // @[id.scala 54:34:@64.4]
  assign _T_111 = io_from_ex_writeAddr == io_to_regs_readAddr2; // @[id.scala 69:60:@89.6]
  assign _T_112 = io_from_ex_writeEnable & _T_111; // @[id.scala 69:37:@90.6]
  assign _T_113 = io_from_mem_writeAddr == io_to_regs_readAddr2; // @[id.scala 71:68:@95.8]
  assign _T_114 = io_from_mem_writeEnable & _T_113; // @[id.scala 71:44:@96.8]
  assign _GEN_4 = _T_114 ? io_from_mem_result : 32'h0; // @[id.scala 71:93:@97.8]
  assign _GEN_5 = _T_112 ? io_from_ex_result : _GEN_4; // @[id.scala 69:85:@91.6]
  assign _T_116 = io_to_regs_readEnable2 == 1'h0; // @[id.scala 76:38:@105.6]
  assign _GEN_6 = _T_116 ? imm : 32'h0; // @[id.scala 76:50:@106.6]
  assign _GEN_7 = io_to_regs_readEnable2 ? _GEN_5 : _GEN_6; // @[id.scala 68:34:@88.4]
  assign _T_75 = 1'h0; // @[:@39.4 :@40.4]
  assign _GEN_8 = _T_121; // @[id.scala 83:29:@114.4]
  assign _T_81 = 5'h0; // @[:@45.4 :@46.4]
  assign _GEN_9 = _T_121 ? rs : 5'h0; // @[id.scala 83:29:@114.4]
  assign _T_100 = 1'h0; // @[:@58.4 :@59.4]
  assign _GEN_11 = _T_121; // @[id.scala 83:29:@114.4]
  assign _T_103 = 5'h0; // @[:@61.4 :@62.4]
  assign _GEN_12 = _T_121 ? rt : 5'h0; // @[id.scala 83:29:@114.4]
  assign _GEN_13 = _T_121 ? 3'h7 : 3'h1; // @[id.scala 83:29:@114.4]
  assign _T_78 = 1'h0; // @[:@42.4 :@43.4]
  assign _T_84 = 5'h0; // @[:@48.4 :@49.4]
  assign _T_94 = 32'h0; // @[:@52.4 :@53.4]
  assign _T_97 = 32'h0; // @[:@55.4 :@56.4]
  assign io_to_regs_readEnable1 = 32'h34000000 == _T_120; // @[id.scala 43:27:@41.4 id.scala 84:31:@115.6]
  assign io_to_regs_readEnable2 = 1'h0; // @[id.scala 44:27:@44.4]
  assign io_to_regs_readAddr1 = _T_121 ? rs : 5'h0; // @[id.scala 45:25:@47.4 id.scala 85:29:@116.6]
  assign io_to_regs_readAddr2 = 5'h0; // @[id.scala 46:25:@50.4]
  assign _GEN_14 = _T_121 ? 3'h7 : 3'h1; // @[id.scala 47:25:@51.4 id.scala 89:29:@121.6]
  assign io_to_idex_inst_type = {{3'd0}, _GEN_13}; // @[id.scala 47:25:@51.4 id.scala 89:29:@121.6]
  assign io_to_idex_op1 = io_to_regs_readEnable1 ? _GEN_1 : _GEN_2; // @[id.scala 48:19:@54.4 id.scala 56:27:@68.8 id.scala 58:27:@74.10 id.scala 60:27:@77.10 id.scala 63:23:@83.8 id.scala 65:23:@86.8]
  assign io_to_idex_op2 = io_to_regs_readEnable2 ? _GEN_5 : _GEN_6; // @[id.scala 49:19:@57.4 id.scala 70:27:@92.8 id.scala 72:27:@98.10 id.scala 74:27:@101.10 id.scala 77:23:@107.8 id.scala 79:23:@110.8]
  assign io_to_idex_writeEnable = 32'h34000000 == _T_120; // @[id.scala 50:27:@60.4 id.scala 87:31:@119.6]
  assign io_to_idex_writeAddr = _T_121 ? rt : 5'h0; // @[id.scala 51:25:@63.4 id.scala 88:29:@120.6]
endmodule
module REGS( // @[:@126.2]
  input         clock, // @[:@127.4]
  input         reset, // @[:@128.4]
  input         io_from_id_readEnable1, // @[:@129.4]
  input         io_from_id_readEnable2, // @[:@129.4]
  input  [4:0]  io_from_id_readAddr1, // @[:@129.4]
  input  [4:0]  io_from_id_readAddr2, // @[:@129.4]
  input         io_from_memwb_writeEnable, // @[:@129.4]
  input  [4:0]  io_from_memwb_writeAddr, // @[:@129.4]
  input  [31:0] io_from_memwb_writeData, // @[:@129.4]
  output [31:0] io_to_id_data1, // @[:@129.4]
  output [31:0] io_to_id_data2 // @[:@129.4]
);
  reg [31:0] register [0:31]; // @[regs.scala 22:21:@131.4]
  reg [31:0] _RAND_0;
  wire [31:0] register__T_60_data; // @[regs.scala 22:21:@131.4]
  wire [4:0] register__T_60_addr; // @[regs.scala 22:21:@131.4]
  wire [31:0] register__T_72_data; // @[regs.scala 22:21:@131.4]
  wire [4:0] register__T_72_addr; // @[regs.scala 22:21:@131.4]
  wire [31:0] register__T_48_data; // @[regs.scala 22:21:@131.4]
  wire [4:0] register__T_48_addr; // @[regs.scala 22:21:@131.4]
  wire  register__T_48_mask; // @[regs.scala 22:21:@131.4]
  wire  register__T_48_en; // @[regs.scala 22:21:@131.4]
  wire  _T_44; // @[regs.scala 25:35:@132.4]
  wire  _T_46; // @[regs.scala 25:71:@133.4]
  wire  _T_47; // @[regs.scala 25:45:@134.4]
  wire [4:0] _GEN_0; // @[regs.scala 25:84:@135.4]
  wire  _GEN_1; // @[regs.scala 25:84:@135.4]
  wire  _GEN_2; // @[regs.scala 25:84:@135.4]
  wire  _GEN_3; // @[regs.scala 25:84:@135.4]
  wire [31:0] _GEN_4; // @[regs.scala 25:84:@135.4]
  wire  _T_53; // @[regs.scala 31:32:@142.4]
  wire  _T_56; // @[regs.scala 33:36:@147.6]
  wire  _T_58; // @[regs.scala 35:65:@152.8]
  wire  _T_59; // @[regs.scala 35:42:@153.8]
  wire [31:0] _GEN_5; // @[regs.scala 35:93:@154.8]
  wire [4:0] _GEN_6; // @[regs.scala 35:93:@154.8]
  wire  _GEN_7; // @[regs.scala 35:93:@154.8]
  wire  _GEN_8; // @[regs.scala 35:93:@154.8]
  wire [31:0] _GEN_9; // @[regs.scala 33:49:@148.6]
  wire [4:0] _GEN_10; // @[regs.scala 33:49:@148.6]
  wire  _GEN_11; // @[regs.scala 33:49:@148.6]
  wire  _GEN_12; // @[regs.scala 33:49:@148.6]
  wire [31:0] _GEN_13; // @[regs.scala 31:44:@143.4]
  wire [4:0] _GEN_14; // @[regs.scala 31:44:@143.4]
  wire  _GEN_15; // @[regs.scala 31:44:@143.4]
  wire  _GEN_16; // @[regs.scala 31:44:@143.4]
  wire  _T_65; // @[regs.scala 43:32:@164.4]
  wire  _T_68; // @[regs.scala 45:36:@169.6]
  wire  _T_70; // @[regs.scala 47:65:@174.8]
  wire  _T_71; // @[regs.scala 47:42:@175.8]
  wire [31:0] _GEN_17; // @[regs.scala 47:93:@176.8]
  wire [4:0] _GEN_18; // @[regs.scala 47:93:@176.8]
  wire  _GEN_19; // @[regs.scala 47:93:@176.8]
  wire  _GEN_20; // @[regs.scala 47:93:@176.8]
  wire [31:0] _GEN_21; // @[regs.scala 45:49:@170.6]
  wire [4:0] _GEN_22; // @[regs.scala 45:49:@170.6]
  wire  _GEN_23; // @[regs.scala 45:49:@170.6]
  wire  _GEN_24; // @[regs.scala 45:49:@170.6]
  wire [31:0] _GEN_25; // @[regs.scala 43:44:@165.4]
  wire [4:0] _GEN_26; // @[regs.scala 43:44:@165.4]
  wire  _GEN_27; // @[regs.scala 43:44:@165.4]
  wire  _GEN_28; // @[regs.scala 43:44:@165.4]
  wire [31:0] _T_51; // @[:@139.4 :@140.4]
  wire [31:0] _T_63; // @[:@161.4 :@162.4]
  wire  _GEN_29;
  wire [4:0] _GEN_30;
  wire  _GEN_31;
  wire [4:0] _GEN_32;
  wire  _GEN_33;
  wire  _GEN_34;
  wire [4:0] _GEN_35;
  wire [31:0] _GEN_36;
  assign register__T_60_addr = io_from_id_readAddr1;
  assign register__T_60_data = register[register__T_60_addr]; // @[regs.scala 22:21:@131.4]
  assign register__T_72_addr = 5'h0;
  assign register__T_72_data = register[register__T_72_addr]; // @[regs.scala 22:21:@131.4]
  assign register__T_48_data = io_from_memwb_writeData;
  assign register__T_48_addr = io_from_memwb_writeAddr;
  assign register__T_48_mask = 1'h1;
  assign register__T_48_en = io_from_memwb_writeEnable & _T_46;
  assign _T_44 = io_from_memwb_writeEnable; // @[regs.scala 25:35:@132.4]
  assign _T_46 = io_from_memwb_writeAddr != 5'h0; // @[regs.scala 25:71:@133.4]
  assign _T_47 = io_from_memwb_writeEnable & _T_46; // @[regs.scala 25:45:@134.4]
  assign _GEN_0 = io_from_memwb_writeAddr; // @[regs.scala 25:84:@135.4]
  assign _GEN_1 = clock; // @[regs.scala 25:84:@135.4]
  assign _GEN_2 = _T_47; // @[regs.scala 25:84:@135.4]
  assign _GEN_3 = 1'h1; // @[regs.scala 25:84:@135.4]
  assign _GEN_4 = io_from_memwb_writeData; // @[regs.scala 25:84:@135.4]
  assign _T_53 = io_from_id_readEnable1 == 1'h0; // @[regs.scala 31:32:@142.4]
  assign _T_56 = io_from_id_readAddr1 == 5'h0; // @[regs.scala 33:36:@147.6]
  assign _T_58 = io_from_id_readAddr1 == io_from_memwb_writeAddr; // @[regs.scala 35:65:@152.8]
  assign _T_59 = io_from_memwb_writeEnable & _T_58; // @[regs.scala 35:42:@153.8]
  assign _GEN_5 = _T_59 ? io_from_memwb_writeData : register__T_60_data; // @[regs.scala 35:93:@154.8]
  assign _GEN_6 = io_from_id_readAddr1; // @[regs.scala 35:93:@154.8]
  assign _GEN_7 = clock; // @[regs.scala 35:93:@154.8]
  assign _GEN_8 = _T_59 ? 1'h0 : 1'h1; // @[regs.scala 35:93:@154.8]
  assign _GEN_9 = _T_56 ? 32'h0 : _GEN_5; // @[regs.scala 33:49:@148.6]
  assign _GEN_10 = io_from_id_readAddr1; // @[regs.scala 33:49:@148.6]
  assign _GEN_11 = clock; // @[regs.scala 33:49:@148.6]
  assign _GEN_12 = _T_56 ? 1'h0 : _GEN_8; // @[regs.scala 33:49:@148.6]
  assign _GEN_13 = _T_53 ? 32'h0 : _GEN_9; // @[regs.scala 31:44:@143.4]
  assign _GEN_14 = io_from_id_readAddr1; // @[regs.scala 31:44:@143.4]
  assign _GEN_15 = clock; // @[regs.scala 31:44:@143.4]
  assign _GEN_16 = _T_53 ? 1'h0 : _GEN_12; // @[regs.scala 31:44:@143.4]
  assign _T_65 = 1'h1; // @[regs.scala 43:32:@164.4]
  assign _T_68 = 1'h1; // @[regs.scala 45:36:@169.6]
  assign _T_70 = 5'h0 == io_from_memwb_writeAddr; // @[regs.scala 47:65:@174.8]
  assign _T_71 = io_from_memwb_writeEnable & _T_70; // @[regs.scala 47:42:@175.8]
  assign _GEN_17 = _T_71 ? io_from_memwb_writeData : register__T_72_data; // @[regs.scala 47:93:@176.8]
  assign _GEN_18 = 5'h0; // @[regs.scala 47:93:@176.8]
  assign _GEN_19 = clock; // @[regs.scala 47:93:@176.8]
  assign _GEN_20 = _T_71 ? 1'h0 : 1'h1; // @[regs.scala 47:93:@176.8]
  assign _GEN_21 = 32'h0; // @[regs.scala 45:49:@170.6]
  assign _GEN_22 = 5'h0; // @[regs.scala 45:49:@170.6]
  assign _GEN_23 = clock; // @[regs.scala 45:49:@170.6]
  assign _GEN_24 = 1'h0; // @[regs.scala 45:49:@170.6]
  assign _GEN_25 = 32'h0; // @[regs.scala 43:44:@165.4]
  assign _GEN_26 = 5'h0; // @[regs.scala 43:44:@165.4]
  assign _GEN_27 = clock; // @[regs.scala 43:44:@165.4]
  assign _GEN_28 = 1'h0; // @[regs.scala 43:44:@165.4]
  assign _T_51 = 32'h0; // @[:@139.4 :@140.4]
  assign _T_63 = 32'h0; // @[:@161.4 :@162.4]
  assign io_to_id_data1 = _T_53 ? 32'h0 : _GEN_9; // @[regs.scala 30:19:@141.4 regs.scala 32:23:@144.6 regs.scala 34:23:@149.8 regs.scala 36:23:@155.10 regs.scala 38:23:@159.10]
  assign io_to_id_data2 = 32'h0; // @[regs.scala 42:19:@163.4 regs.scala 44:23:@166.6 regs.scala 46:23:@171.8 regs.scala 48:23:@177.10 regs.scala 50:23:@181.10]
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
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(register__T_48_en & register__T_48_mask) begin
      register[register__T_48_addr] <= register__T_48_data; // @[regs.scala 22:21:@131.4]
    end
  end
endmodule
module IDEX( // @[:@184.2]
  input         clock, // @[:@185.4]
  input         reset, // @[:@186.4]
  input  [5:0]  io_from_id_inst_type, // @[:@187.4]
  input  [31:0] io_from_id_op1, // @[:@187.4]
  input  [31:0] io_from_id_op2, // @[:@187.4]
  input         io_from_id_writeEnable, // @[:@187.4]
  input  [4:0]  io_from_id_writeAddr, // @[:@187.4]
  output [5:0]  io_to_ex_inst_type, // @[:@187.4]
  output [31:0] io_to_ex_op1, // @[:@187.4]
  output [31:0] io_to_ex_op2, // @[:@187.4]
  output        io_to_ex_writeEnable, // @[:@187.4]
  output [4:0]  io_to_ex_writeAddr // @[:@187.4]
);
  reg [5:0] _T_39; // @[idex.scala 24:32:@189.4]
  reg [31:0] _RAND_0;
  reg [31:0] _T_42; // @[idex.scala 25:26:@192.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_45; // @[idex.scala 26:26:@195.4]
  reg [31:0] _RAND_2;
  reg  _T_48; // @[idex.scala 27:34:@198.4]
  reg [31:0] _RAND_3;
  reg [4:0] _T_51; // @[idex.scala 28:32:@201.4]
  reg [31:0] _RAND_4;
  assign io_to_ex_inst_type = _T_39; // @[idex.scala 24:23:@191.4]
  assign io_to_ex_op1 = _T_42; // @[idex.scala 25:17:@194.4]
  assign io_to_ex_op2 = _T_45; // @[idex.scala 26:17:@197.4]
  assign io_to_ex_writeEnable = _T_48; // @[idex.scala 27:25:@200.4]
  assign io_to_ex_writeAddr = _T_51; // @[idex.scala 28:23:@203.4]
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
module EX( // @[:@205.2]
  input         clock, // @[:@206.4]
  input         reset, // @[:@207.4]
  input  [5:0]  io_from_idex_inst_type, // @[:@208.4]
  input  [31:0] io_from_idex_op1, // @[:@208.4]
  input  [31:0] io_from_idex_op2, // @[:@208.4]
  input         io_from_idex_writeEnable, // @[:@208.4]
  input  [4:0]  io_from_idex_writeAddr, // @[:@208.4]
  output        io_to_exmem_writeEnable, // @[:@208.4]
  output [4:0]  io_to_exmem_writeAddr, // @[:@208.4]
  output [31:0] io_to_exmem_result // @[:@208.4]
);
  wire  _T_33; // @[ex.scala 25:32:@212.4]
  wire [31:0] _T_34; // @[ex.scala 26:46:@214.6]
  wire [31:0] _GEN_0; // @[ex.scala 25:52:@213.4]
  assign _T_33 = io_from_idex_inst_type == 6'h7; // @[ex.scala 25:32:@212.4]
  assign _T_34 = io_from_idex_op1 | io_from_idex_op2; // @[ex.scala 26:46:@214.6]
  assign _GEN_0 = _T_33 ? _T_34 : 32'h0; // @[ex.scala 25:52:@213.4]
  assign io_to_exmem_writeEnable = io_from_idex_writeEnable; // @[ex.scala 22:28:@210.4]
  assign io_to_exmem_writeAddr = io_from_idex_writeAddr; // @[ex.scala 23:26:@211.4]
  assign io_to_exmem_result = _T_33 ? _T_34 : 32'h0; // @[ex.scala 26:27:@215.6 ex.scala 28:27:@218.6]
endmodule
module EXMEM( // @[:@221.2]
  input         clock, // @[:@222.4]
  input         reset, // @[:@223.4]
  input         io_from_ex_writeEnable, // @[:@224.4]
  input  [4:0]  io_from_ex_writeAddr, // @[:@224.4]
  input  [31:0] io_from_ex_result, // @[:@224.4]
  output        io_to_mem_writeEnable, // @[:@224.4]
  output [4:0]  io_to_mem_writeAddr, // @[:@224.4]
  output [31:0] io_to_mem_result // @[:@224.4]
);
  reg  _T_27; // @[exmem.scala 22:35:@226.4]
  reg [31:0] _RAND_0;
  reg [4:0] _T_30; // @[exmem.scala 23:33:@229.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_33; // @[exmem.scala 24:30:@232.4]
  reg [31:0] _RAND_2;
  assign io_to_mem_writeEnable = _T_27; // @[exmem.scala 22:26:@228.4]
  assign io_to_mem_writeAddr = _T_30; // @[exmem.scala 23:24:@231.4]
  assign io_to_mem_result = _T_33; // @[exmem.scala 24:21:@234.4]
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
module MEM( // @[:@236.2]
  input         clock, // @[:@237.4]
  input         reset, // @[:@238.4]
  input         io_from_exmem_writeEnable, // @[:@239.4]
  input  [4:0]  io_from_exmem_writeAddr, // @[:@239.4]
  input  [31:0] io_from_exmem_result, // @[:@239.4]
  output        io_to_memwb_writeEnable, // @[:@239.4]
  output [4:0]  io_to_memwb_writeAddr, // @[:@239.4]
  output [31:0] io_to_memwb_result // @[:@239.4]
);
  assign io_to_memwb_writeEnable = io_from_exmem_writeEnable; // @[mem.scala 21:17:@243.4]
  assign io_to_memwb_writeAddr = io_from_exmem_writeAddr; // @[mem.scala 21:17:@242.4]
  assign io_to_memwb_result = io_from_exmem_result; // @[mem.scala 21:17:@241.4]
endmodule
module MEMWB( // @[:@245.2]
  input         clock, // @[:@246.4]
  input         reset, // @[:@247.4]
  input         io_from_mem_writeEnable, // @[:@248.4]
  input  [4:0]  io_from_mem_writeAddr, // @[:@248.4]
  input  [31:0] io_from_mem_result, // @[:@248.4]
  output        io_to_regs_writeEnable, // @[:@248.4]
  output [4:0]  io_to_regs_writeAddr, // @[:@248.4]
  output [31:0] io_to_regs_writeData // @[:@248.4]
);
  reg  _T_27; // @[memwb.scala 22:36:@250.4]
  reg [31:0] _RAND_0;
  reg [4:0] _T_30; // @[memwb.scala 23:34:@253.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_33; // @[memwb.scala 24:34:@256.4]
  reg [31:0] _RAND_2;
  assign io_to_regs_writeEnable = _T_27; // @[memwb.scala 22:27:@252.4]
  assign io_to_regs_writeAddr = _T_30; // @[memwb.scala 23:25:@255.4]
  assign io_to_regs_writeData = _T_33; // @[memwb.scala 24:25:@258.4]
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
module CPU( // @[:@260.2]
  input         clock, // @[:@261.4]
  input         reset, // @[:@262.4]
  input  [31:0] io_rom_data, // @[:@263.4]
  output [31:0] io_rom_addr // @[:@263.4]
);
  wire  pc_clock; // @[cpu.scala 15:18:@265.4]
  wire  pc_reset; // @[cpu.scala 15:18:@265.4]
  wire [31:0] pc_io_to_ifid_pc; // @[cpu.scala 15:18:@265.4]
  wire  ifid_clock; // @[cpu.scala 16:20:@268.4]
  wire  ifid_reset; // @[cpu.scala 16:20:@268.4]
  wire [31:0] ifid_io_from_pc_pc; // @[cpu.scala 16:20:@268.4]
  wire [31:0] ifid_io_inst; // @[cpu.scala 16:20:@268.4]
  wire [31:0] ifid_io_to_id_pc; // @[cpu.scala 16:20:@268.4]
  wire [31:0] ifid_io_to_id_inst; // @[cpu.scala 16:20:@268.4]
  wire  id_clock; // @[cpu.scala 17:18:@271.4]
  wire  id_reset; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_from_ifid_pc; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_from_ifid_inst; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_from_regs_data1; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_from_regs_data2; // @[cpu.scala 17:18:@271.4]
  wire  id_io_from_ex_writeEnable; // @[cpu.scala 17:18:@271.4]
  wire [4:0] id_io_from_ex_writeAddr; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_from_ex_result; // @[cpu.scala 17:18:@271.4]
  wire  id_io_from_mem_writeEnable; // @[cpu.scala 17:18:@271.4]
  wire [4:0] id_io_from_mem_writeAddr; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_from_mem_result; // @[cpu.scala 17:18:@271.4]
  wire  id_io_to_regs_readEnable1; // @[cpu.scala 17:18:@271.4]
  wire  id_io_to_regs_readEnable2; // @[cpu.scala 17:18:@271.4]
  wire [4:0] id_io_to_regs_readAddr1; // @[cpu.scala 17:18:@271.4]
  wire [4:0] id_io_to_regs_readAddr2; // @[cpu.scala 17:18:@271.4]
  wire [5:0] id_io_to_idex_inst_type; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_to_idex_op1; // @[cpu.scala 17:18:@271.4]
  wire [31:0] id_io_to_idex_op2; // @[cpu.scala 17:18:@271.4]
  wire  id_io_to_idex_writeEnable; // @[cpu.scala 17:18:@271.4]
  wire [4:0] id_io_to_idex_writeAddr; // @[cpu.scala 17:18:@271.4]
  wire  regs_clock; // @[cpu.scala 18:20:@274.4]
  wire  regs_reset; // @[cpu.scala 18:20:@274.4]
  wire  regs_io_from_id_readEnable1; // @[cpu.scala 18:20:@274.4]
  wire  regs_io_from_id_readEnable2; // @[cpu.scala 18:20:@274.4]
  wire [4:0] regs_io_from_id_readAddr1; // @[cpu.scala 18:20:@274.4]
  wire [4:0] regs_io_from_id_readAddr2; // @[cpu.scala 18:20:@274.4]
  wire  regs_io_from_memwb_writeEnable; // @[cpu.scala 18:20:@274.4]
  wire [4:0] regs_io_from_memwb_writeAddr; // @[cpu.scala 18:20:@274.4]
  wire [31:0] regs_io_from_memwb_writeData; // @[cpu.scala 18:20:@274.4]
  wire [31:0] regs_io_to_id_data1; // @[cpu.scala 18:20:@274.4]
  wire [31:0] regs_io_to_id_data2; // @[cpu.scala 18:20:@274.4]
  wire  idex_clock; // @[cpu.scala 19:20:@277.4]
  wire  idex_reset; // @[cpu.scala 19:20:@277.4]
  wire [5:0] idex_io_from_id_inst_type; // @[cpu.scala 19:20:@277.4]
  wire [31:0] idex_io_from_id_op1; // @[cpu.scala 19:20:@277.4]
  wire [31:0] idex_io_from_id_op2; // @[cpu.scala 19:20:@277.4]
  wire  idex_io_from_id_writeEnable; // @[cpu.scala 19:20:@277.4]
  wire [4:0] idex_io_from_id_writeAddr; // @[cpu.scala 19:20:@277.4]
  wire [5:0] idex_io_to_ex_inst_type; // @[cpu.scala 19:20:@277.4]
  wire [31:0] idex_io_to_ex_op1; // @[cpu.scala 19:20:@277.4]
  wire [31:0] idex_io_to_ex_op2; // @[cpu.scala 19:20:@277.4]
  wire  idex_io_to_ex_writeEnable; // @[cpu.scala 19:20:@277.4]
  wire [4:0] idex_io_to_ex_writeAddr; // @[cpu.scala 19:20:@277.4]
  wire  ex_clock; // @[cpu.scala 20:18:@280.4]
  wire  ex_reset; // @[cpu.scala 20:18:@280.4]
  wire [5:0] ex_io_from_idex_inst_type; // @[cpu.scala 20:18:@280.4]
  wire [31:0] ex_io_from_idex_op1; // @[cpu.scala 20:18:@280.4]
  wire [31:0] ex_io_from_idex_op2; // @[cpu.scala 20:18:@280.4]
  wire  ex_io_from_idex_writeEnable; // @[cpu.scala 20:18:@280.4]
  wire [4:0] ex_io_from_idex_writeAddr; // @[cpu.scala 20:18:@280.4]
  wire  ex_io_to_exmem_writeEnable; // @[cpu.scala 20:18:@280.4]
  wire [4:0] ex_io_to_exmem_writeAddr; // @[cpu.scala 20:18:@280.4]
  wire [31:0] ex_io_to_exmem_result; // @[cpu.scala 20:18:@280.4]
  wire  exmem_clock; // @[cpu.scala 21:21:@283.4]
  wire  exmem_reset; // @[cpu.scala 21:21:@283.4]
  wire  exmem_io_from_ex_writeEnable; // @[cpu.scala 21:21:@283.4]
  wire [4:0] exmem_io_from_ex_writeAddr; // @[cpu.scala 21:21:@283.4]
  wire [31:0] exmem_io_from_ex_result; // @[cpu.scala 21:21:@283.4]
  wire  exmem_io_to_mem_writeEnable; // @[cpu.scala 21:21:@283.4]
  wire [4:0] exmem_io_to_mem_writeAddr; // @[cpu.scala 21:21:@283.4]
  wire [31:0] exmem_io_to_mem_result; // @[cpu.scala 21:21:@283.4]
  wire  mem_clock; // @[cpu.scala 22:19:@286.4]
  wire  mem_reset; // @[cpu.scala 22:19:@286.4]
  wire  mem_io_from_exmem_writeEnable; // @[cpu.scala 22:19:@286.4]
  wire [4:0] mem_io_from_exmem_writeAddr; // @[cpu.scala 22:19:@286.4]
  wire [31:0] mem_io_from_exmem_result; // @[cpu.scala 22:19:@286.4]
  wire  mem_io_to_memwb_writeEnable; // @[cpu.scala 22:19:@286.4]
  wire [4:0] mem_io_to_memwb_writeAddr; // @[cpu.scala 22:19:@286.4]
  wire [31:0] mem_io_to_memwb_result; // @[cpu.scala 22:19:@286.4]
  wire  memwb_clock; // @[cpu.scala 23:21:@289.4]
  wire  memwb_reset; // @[cpu.scala 23:21:@289.4]
  wire  memwb_io_from_mem_writeEnable; // @[cpu.scala 23:21:@289.4]
  wire [4:0] memwb_io_from_mem_writeAddr; // @[cpu.scala 23:21:@289.4]
  wire [31:0] memwb_io_from_mem_result; // @[cpu.scala 23:21:@289.4]
  wire  memwb_io_to_regs_writeEnable; // @[cpu.scala 23:21:@289.4]
  wire [4:0] memwb_io_to_regs_writeAddr; // @[cpu.scala 23:21:@289.4]
  wire [31:0] memwb_io_to_regs_writeData; // @[cpu.scala 23:21:@289.4]
  PC pc ( // @[cpu.scala 15:18:@265.4]
    .clock(pc_clock),
    .reset(pc_reset),
    .io_to_ifid_pc(pc_io_to_ifid_pc)
  );
  IFID ifid ( // @[cpu.scala 16:20:@268.4]
    .clock(ifid_clock),
    .reset(ifid_reset),
    .io_from_pc_pc(ifid_io_from_pc_pc),
    .io_inst(ifid_io_inst),
    .io_to_id_pc(ifid_io_to_id_pc),
    .io_to_id_inst(ifid_io_to_id_inst)
  );
  ID id ( // @[cpu.scala 17:18:@271.4]
    .clock(id_clock),
    .reset(id_reset),
    .io_from_ifid_pc(id_io_from_ifid_pc),
    .io_from_ifid_inst(id_io_from_ifid_inst),
    .io_from_regs_data1(id_io_from_regs_data1),
    .io_from_regs_data2(id_io_from_regs_data2),
    .io_from_ex_writeEnable(id_io_from_ex_writeEnable),
    .io_from_ex_writeAddr(id_io_from_ex_writeAddr),
    .io_from_ex_result(id_io_from_ex_result),
    .io_from_mem_writeEnable(id_io_from_mem_writeEnable),
    .io_from_mem_writeAddr(id_io_from_mem_writeAddr),
    .io_from_mem_result(id_io_from_mem_result),
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
  REGS regs ( // @[cpu.scala 18:20:@274.4]
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
  IDEX idex ( // @[cpu.scala 19:20:@277.4]
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
  EX ex ( // @[cpu.scala 20:18:@280.4]
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
  EXMEM exmem ( // @[cpu.scala 21:21:@283.4]
    .clock(exmem_clock),
    .reset(exmem_reset),
    .io_from_ex_writeEnable(exmem_io_from_ex_writeEnable),
    .io_from_ex_writeAddr(exmem_io_from_ex_writeAddr),
    .io_from_ex_result(exmem_io_from_ex_result),
    .io_to_mem_writeEnable(exmem_io_to_mem_writeEnable),
    .io_to_mem_writeAddr(exmem_io_to_mem_writeAddr),
    .io_to_mem_result(exmem_io_to_mem_result)
  );
  MEM mem ( // @[cpu.scala 22:19:@286.4]
    .clock(mem_clock),
    .reset(mem_reset),
    .io_from_exmem_writeEnable(mem_io_from_exmem_writeEnable),
    .io_from_exmem_writeAddr(mem_io_from_exmem_writeAddr),
    .io_from_exmem_result(mem_io_from_exmem_result),
    .io_to_memwb_writeEnable(mem_io_to_memwb_writeEnable),
    .io_to_memwb_writeAddr(mem_io_to_memwb_writeAddr),
    .io_to_memwb_result(mem_io_to_memwb_result)
  );
  MEMWB memwb ( // @[cpu.scala 23:21:@289.4]
    .clock(memwb_clock),
    .reset(memwb_reset),
    .io_from_mem_writeEnable(memwb_io_from_mem_writeEnable),
    .io_from_mem_writeAddr(memwb_io_from_mem_writeAddr),
    .io_from_mem_result(memwb_io_from_mem_result),
    .io_to_regs_writeEnable(memwb_io_to_regs_writeEnable),
    .io_to_regs_writeAddr(memwb_io_to_regs_writeAddr),
    .io_to_regs_writeData(memwb_io_to_regs_writeData)
  );
  assign io_rom_addr = pc_io_to_ifid_pc; // @[cpu.scala 41:16:@330.4]
  assign pc_clock = clock; // @[:@266.4]
  assign pc_reset = reset; // @[:@267.4]
  assign ifid_clock = clock; // @[:@269.4]
  assign ifid_reset = reset; // @[:@270.4]
  assign ifid_io_from_pc_pc = pc_io_to_ifid_pc; // @[cpu.scala 25:19:@292.4]
  assign ifid_io_inst = io_rom_data; // @[cpu.scala 40:17:@329.4]
  assign id_clock = clock; // @[:@272.4]
  assign id_reset = reset; // @[:@273.4]
  assign id_io_from_ifid_pc = ifid_io_to_id_pc; // @[cpu.scala 26:19:@294.4]
  assign id_io_from_ifid_inst = ifid_io_to_id_inst; // @[cpu.scala 26:19:@293.4]
  assign id_io_from_regs_data1 = regs_io_to_id_data1; // @[cpu.scala 28:19:@300.4]
  assign id_io_from_regs_data2 = 32'h0; // @[cpu.scala 28:19:@299.4]
  assign id_io_from_ex_writeEnable = ex_io_to_exmem_writeEnable; // @[cpu.scala 37:19:@325.4]
  assign id_io_from_ex_writeAddr = ex_io_to_exmem_writeAddr; // @[cpu.scala 37:19:@324.4]
  assign id_io_from_ex_result = ex_io_to_exmem_result; // @[cpu.scala 37:19:@323.4]
  assign id_io_from_mem_writeEnable = mem_io_to_memwb_writeEnable; // @[cpu.scala 38:20:@328.4]
  assign id_io_from_mem_writeAddr = mem_io_to_memwb_writeAddr; // @[cpu.scala 38:20:@327.4]
  assign id_io_from_mem_result = mem_io_to_memwb_result; // @[cpu.scala 38:20:@326.4]
  assign regs_clock = clock; // @[:@275.4]
  assign regs_reset = reset; // @[:@276.4]
  assign regs_io_from_id_readEnable1 = id_io_to_regs_readEnable1; // @[cpu.scala 27:19:@298.4]
  assign regs_io_from_id_readEnable2 = 1'h0; // @[cpu.scala 27:19:@297.4]
  assign regs_io_from_id_readAddr1 = id_io_to_regs_readAddr1; // @[cpu.scala 27:19:@296.4]
  assign regs_io_from_id_readAddr2 = 5'h0; // @[cpu.scala 27:19:@295.4]
  assign regs_io_from_memwb_writeEnable = memwb_io_to_regs_writeEnable; // @[cpu.scala 34:21:@322.4]
  assign regs_io_from_memwb_writeAddr = memwb_io_to_regs_writeAddr; // @[cpu.scala 34:21:@321.4]
  assign regs_io_from_memwb_writeData = memwb_io_to_regs_writeData; // @[cpu.scala 34:21:@320.4]
  assign idex_clock = clock; // @[:@278.4]
  assign idex_reset = reset; // @[:@279.4]
  assign idex_io_from_id_inst_type = id_io_to_idex_inst_type; // @[cpu.scala 29:19:@305.4]
  assign idex_io_from_id_op1 = id_io_to_idex_op1; // @[cpu.scala 29:19:@304.4]
  assign idex_io_from_id_op2 = id_io_to_idex_op2; // @[cpu.scala 29:19:@303.4]
  assign idex_io_from_id_writeEnable = id_io_to_idex_writeEnable; // @[cpu.scala 29:19:@302.4]
  assign idex_io_from_id_writeAddr = id_io_to_idex_writeAddr; // @[cpu.scala 29:19:@301.4]
  assign ex_clock = clock; // @[:@281.4]
  assign ex_reset = reset; // @[:@282.4]
  assign ex_io_from_idex_inst_type = idex_io_to_ex_inst_type; // @[cpu.scala 30:19:@310.4]
  assign ex_io_from_idex_op1 = idex_io_to_ex_op1; // @[cpu.scala 30:19:@309.4]
  assign ex_io_from_idex_op2 = idex_io_to_ex_op2; // @[cpu.scala 30:19:@308.4]
  assign ex_io_from_idex_writeEnable = idex_io_to_ex_writeEnable; // @[cpu.scala 30:19:@307.4]
  assign ex_io_from_idex_writeAddr = idex_io_to_ex_writeAddr; // @[cpu.scala 30:19:@306.4]
  assign exmem_clock = clock; // @[:@284.4]
  assign exmem_reset = reset; // @[:@285.4]
  assign exmem_io_from_ex_writeEnable = ex_io_to_exmem_writeEnable; // @[cpu.scala 31:19:@313.4]
  assign exmem_io_from_ex_writeAddr = ex_io_to_exmem_writeAddr; // @[cpu.scala 31:19:@312.4]
  assign exmem_io_from_ex_result = ex_io_to_exmem_result; // @[cpu.scala 31:19:@311.4]
  assign mem_clock = clock; // @[:@287.4]
  assign mem_reset = reset; // @[:@288.4]
  assign mem_io_from_exmem_writeEnable = exmem_io_to_mem_writeEnable; // @[cpu.scala 32:20:@316.4]
  assign mem_io_from_exmem_writeAddr = exmem_io_to_mem_writeAddr; // @[cpu.scala 32:20:@315.4]
  assign mem_io_from_exmem_result = exmem_io_to_mem_result; // @[cpu.scala 32:20:@314.4]
  assign memwb_clock = clock; // @[:@290.4]
  assign memwb_reset = reset; // @[:@291.4]
  assign memwb_io_from_mem_writeEnable = mem_io_to_memwb_writeEnable; // @[cpu.scala 33:20:@319.4]
  assign memwb_io_from_mem_writeAddr = mem_io_to_memwb_writeAddr; // @[cpu.scala 33:20:@318.4]
  assign memwb_io_from_mem_result = mem_io_to_memwb_result; // @[cpu.scala 33:20:@317.4]
endmodule

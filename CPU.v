module PC( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output [31:0] io_to_ifid_pc // @[:@6.4]
);
  reg [31:0] r; // @[pc.scala 18:18:@8.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_11; // @[pc.scala 20:13:@10.6]
  wire [31:0] _T_12; // @[pc.scala 20:13:@11.6]
  assign _T_11 = r + 32'h4; // @[pc.scala 20:13:@10.6]
  assign _T_12 = _T_11[31:0]; // @[pc.scala 20:13:@11.6]
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
  input  [31:0] io_inst, // @[:@19.4]
  output [31:0] io_to_id_inst // @[:@19.4]
);
  reg [31:0] _T_22; // @[ifid.scala 24:27:@24.4]
  reg [31:0] _RAND_0;
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
  _T_22 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
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
  input  [31:0] io_from_ifid_inst, // @[:@31.4]
  input  [31:0] io_from_regs_data1, // @[:@31.4]
  output        io_to_regs_readEnable1, // @[:@31.4]
  output        io_to_regs_readEnable2, // @[:@31.4]
  output [4:0]  io_to_regs_readAddr1, // @[:@31.4]
  output [5:0]  io_to_idex_inst_type, // @[:@31.4]
  output [31:0] io_to_idex_op1, // @[:@31.4]
  output [31:0] io_to_idex_op2, // @[:@31.4]
  output        io_to_idex_writeEnable, // @[:@31.4]
  output [4:0]  io_to_idex_writeAddr // @[:@31.4]
);
  wire [4:0] rs; // @[id.scala 35:16:@34.4]
  wire [4:0] rt; // @[id.scala 36:16:@35.4]
  reg [31:0] imm; // @[id.scala 39:20:@37.4]
  reg [31:0] _RAND_0;
  wire  _T_73; // @[id.scala 54:38:@59.6]
  wire [31:0] _GEN_0; // @[id.scala 54:50:@60.6]
  wire  _T_76; // @[id.scala 62:38:@70.6]
  wire [31:0] _GEN_2; // @[id.scala 62:50:@71.6]
  wire [31:0] _T_80; // @[id.scala 69:27:@77.4]
  wire  _T_81; // @[id.scala 69:27:@78.4]
  wire [15:0] _T_83; // @[id.scala 72:18:@82.6]
  wire [31:0] _GEN_6; // @[id.scala 69:42:@79.4]
  assign rs = io_from_ifid_inst[25:21]; // @[id.scala 35:16:@34.4]
  assign rt = io_from_ifid_inst[20:16]; // @[id.scala 36:16:@35.4]
  assign _T_73 = io_to_regs_readEnable1 == 1'h0; // @[id.scala 54:38:@59.6]
  assign _GEN_0 = _T_73 ? imm : 32'h0; // @[id.scala 54:50:@60.6]
  assign _T_76 = io_to_regs_readEnable2 == 1'h0; // @[id.scala 62:38:@70.6]
  assign _GEN_2 = _T_76 ? imm : 32'h0; // @[id.scala 62:50:@71.6]
  assign _T_80 = io_from_ifid_inst & 32'h707f; // @[id.scala 69:27:@77.4]
  assign _T_81 = 32'h6013 == _T_80; // @[id.scala 69:27:@78.4]
  assign _T_83 = io_from_ifid_inst[15:0]; // @[id.scala 72:18:@82.6]
  assign _GEN_6 = _T_81 ? {{16'd0}, _T_83} : imm; // @[id.scala 69:42:@79.4]
  assign io_to_regs_readEnable1 = 32'h6013 == _T_80; // @[id.scala 41:27:@39.4 id.scala 70:31:@80.6]
  assign io_to_regs_readEnable2 = 1'h0; // @[id.scala 42:27:@41.4]
  assign io_to_regs_readAddr1 = _T_81 ? rs : 5'h0; // @[id.scala 43:25:@43.4 id.scala 71:29:@81.6]
  assign io_to_idex_inst_type = _T_81 ? 6'h1 : 6'h3; // @[id.scala 45:25:@46.4 id.scala 75:29:@86.6]
  assign io_to_idex_op1 = io_to_regs_readEnable1 ? io_from_regs_data1 : _GEN_0; // @[id.scala 46:19:@48.4 id.scala 53:23:@56.6 id.scala 55:23:@61.8 id.scala 57:23:@64.8]
  assign io_to_idex_op2 = io_to_regs_readEnable2 ? 32'h0 : _GEN_2; // @[id.scala 47:19:@50.4 id.scala 61:23:@67.6 id.scala 63:23:@72.8 id.scala 65:23:@75.8]
  assign io_to_idex_writeEnable = 32'h6013 == _T_80; // @[id.scala 48:27:@52.4 id.scala 73:31:@84.6]
  assign io_to_idex_writeAddr = _T_81 ? rt : 5'h0; // @[id.scala 49:25:@54.4 id.scala 74:29:@85.6]
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
  imm = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if (reset) begin
      imm <= 32'h0;
    end else begin
      if (_T_81) begin
        imm <= {{16'd0}, _T_83};
      end
    end
  end
endmodule
module REGS( // @[:@91.2]
  input         clock, // @[:@92.4]
  input         reset, // @[:@93.4]
  input         io_from_id_readEnable1, // @[:@94.4]
  input  [4:0]  io_from_id_readAddr1, // @[:@94.4]
  input         io_from_memwb_writeEnable, // @[:@94.4]
  input  [4:0]  io_from_memwb_writeAddr, // @[:@94.4]
  input  [31:0] io_from_memwb_writeData, // @[:@94.4]
  output [31:0] io_to_id_data1 // @[:@94.4]
);
  reg [31:0] register [0:31]; // @[regs.scala 22:21:@96.4]
  reg [31:0] _RAND_0;
  wire [31:0] register__T_62_data; // @[regs.scala 22:21:@96.4]
  wire [4:0] register__T_62_addr; // @[regs.scala 22:21:@96.4]
  wire [31:0] register__T_74_data; // @[regs.scala 22:21:@96.4]
  wire [4:0] register__T_74_addr; // @[regs.scala 22:21:@96.4]
  wire [31:0] register__T_50_data; // @[regs.scala 22:21:@96.4]
  wire [4:0] register__T_50_addr; // @[regs.scala 22:21:@96.4]
  wire  register__T_50_mask; // @[regs.scala 22:21:@96.4]
  wire  register__T_50_en; // @[regs.scala 22:21:@96.4]
  reg [31:0] r0; // @[regs.scala 25:19:@97.4]
  reg [31:0] _RAND_1;
  wire  _T_48; // @[regs.scala 26:71:@100.4]
  wire  _T_55; // @[regs.scala 32:32:@108.4]
  wire  _T_58; // @[regs.scala 34:36:@113.6]
  wire  _T_60; // @[regs.scala 36:65:@118.8]
  wire  _T_61; // @[regs.scala 36:42:@119.8]
  wire [31:0] _GEN_5; // @[regs.scala 36:93:@120.8]
  wire  _GEN_8; // @[regs.scala 36:93:@120.8]
  wire [31:0] _GEN_9; // @[regs.scala 34:49:@114.6]
  wire  _GEN_12; // @[regs.scala 34:49:@114.6]
  assign register__T_62_addr = io_from_id_readAddr1;
  assign register__T_62_data = register[register__T_62_addr]; // @[regs.scala 22:21:@96.4]
  assign register__T_74_addr = 5'h0;
  assign register__T_74_data = register[register__T_74_addr]; // @[regs.scala 22:21:@96.4]
  assign register__T_50_data = r0;
  assign register__T_50_addr = io_from_memwb_writeAddr;
  assign register__T_50_mask = 1'h1;
  assign register__T_50_en = io_from_memwb_writeEnable & _T_48;
  assign _T_48 = io_from_memwb_writeAddr != 5'h0; // @[regs.scala 26:71:@100.4]
  assign _T_55 = io_from_id_readEnable1 == 1'h0; // @[regs.scala 32:32:@108.4]
  assign _T_58 = io_from_id_readAddr1 == 5'h0; // @[regs.scala 34:36:@113.6]
  assign _T_60 = io_from_id_readAddr1 == io_from_memwb_writeAddr; // @[regs.scala 36:65:@118.8]
  assign _T_61 = io_from_memwb_writeEnable & _T_60; // @[regs.scala 36:42:@119.8]
  assign _GEN_5 = _T_61 ? io_from_memwb_writeData : register__T_62_data; // @[regs.scala 36:93:@120.8]
  assign _GEN_8 = _T_61 ? 1'h0 : 1'h1; // @[regs.scala 36:93:@120.8]
  assign _GEN_9 = _T_58 ? 32'h0 : _GEN_5; // @[regs.scala 34:49:@114.6]
  assign _GEN_12 = _T_58 ? 1'h0 : _GEN_8; // @[regs.scala 34:49:@114.6]
  assign io_to_id_data1 = _T_55 ? 32'h0 : _GEN_9; // @[regs.scala 31:19:@107.4 regs.scala 33:23:@110.6 regs.scala 35:23:@115.8 regs.scala 37:23:@121.10 regs.scala 39:23:@125.10]
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
  r0 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    if(register__T_50_en & register__T_50_mask) begin
      register[register__T_50_addr] <= register__T_50_data; // @[regs.scala 22:21:@96.4]
    end
    if (reset) begin
      r0 <= 32'h0;
    end else begin
      r0 <= io_from_memwb_writeData;
    end
  end
endmodule
module IDEX( // @[:@149.2]
  input         clock, // @[:@150.4]
  input         reset, // @[:@151.4]
  input  [5:0]  io_from_id_inst_type, // @[:@152.4]
  input  [31:0] io_from_id_op1, // @[:@152.4]
  input  [31:0] io_from_id_op2, // @[:@152.4]
  input         io_from_id_writeEnable, // @[:@152.4]
  input  [4:0]  io_from_id_writeAddr, // @[:@152.4]
  output [5:0]  io_to_ex_inst_type, // @[:@152.4]
  output [31:0] io_to_ex_op1, // @[:@152.4]
  output [31:0] io_to_ex_op2, // @[:@152.4]
  output        io_to_ex_writeEnable, // @[:@152.4]
  output [4:0]  io_to_ex_writeAddr // @[:@152.4]
);
  reg [5:0] _T_39; // @[idex.scala 24:32:@154.4]
  reg [31:0] _RAND_0;
  reg [31:0] _T_42; // @[idex.scala 25:26:@157.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_45; // @[idex.scala 26:26:@160.4]
  reg [31:0] _RAND_2;
  reg  _T_48; // @[idex.scala 27:34:@163.4]
  reg [31:0] _RAND_3;
  reg [4:0] _T_51; // @[idex.scala 28:32:@166.4]
  reg [31:0] _RAND_4;
  assign io_to_ex_inst_type = _T_39; // @[idex.scala 24:23:@156.4]
  assign io_to_ex_op1 = _T_42; // @[idex.scala 25:17:@159.4]
  assign io_to_ex_op2 = _T_45; // @[idex.scala 26:17:@162.4]
  assign io_to_ex_writeEnable = _T_48; // @[idex.scala 27:25:@165.4]
  assign io_to_ex_writeAddr = _T_51; // @[idex.scala 28:23:@168.4]
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
module EX( // @[:@170.2]
  input  [5:0]  io_from_idex_inst_type, // @[:@173.4]
  input  [31:0] io_from_idex_op1, // @[:@173.4]
  input  [31:0] io_from_idex_op2, // @[:@173.4]
  input         io_from_idex_writeEnable, // @[:@173.4]
  input  [4:0]  io_from_idex_writeAddr, // @[:@173.4]
  output        io_to_exmem_writeEnable, // @[:@173.4]
  output [4:0]  io_to_exmem_writeAddr, // @[:@173.4]
  output [31:0] io_to_exmem_result // @[:@173.4]
);
  wire  _T_33; // @[ex.scala 25:32:@177.4]
  wire [31:0] _T_34; // @[ex.scala 26:46:@179.6]
  assign _T_33 = io_from_idex_inst_type == 6'h1; // @[ex.scala 25:32:@177.4]
  assign _T_34 = io_from_idex_op1 | io_from_idex_op2; // @[ex.scala 26:46:@179.6]
  assign io_to_exmem_writeEnable = io_from_idex_writeEnable; // @[ex.scala 22:28:@175.4]
  assign io_to_exmem_writeAddr = io_from_idex_writeAddr; // @[ex.scala 23:26:@176.4]
  assign io_to_exmem_result = _T_33 ? _T_34 : 32'h0; // @[ex.scala 26:27:@180.6 ex.scala 28:27:@183.6]
endmodule
module EXMEM( // @[:@186.2]
  input         clock, // @[:@187.4]
  input         reset, // @[:@188.4]
  input         io_from_ex_writeEnable, // @[:@189.4]
  input  [4:0]  io_from_ex_writeAddr, // @[:@189.4]
  input  [31:0] io_from_ex_result, // @[:@189.4]
  output        io_to_mem_writeEnable, // @[:@189.4]
  output [4:0]  io_to_mem_writeAddr, // @[:@189.4]
  output [31:0] io_to_mem_result // @[:@189.4]
);
  reg  _T_27; // @[exmem.scala 22:35:@191.4]
  reg [31:0] _RAND_0;
  reg [4:0] _T_30; // @[exmem.scala 23:33:@194.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_33; // @[exmem.scala 24:30:@197.4]
  reg [31:0] _RAND_2;
  assign io_to_mem_writeEnable = _T_27; // @[exmem.scala 22:26:@193.4]
  assign io_to_mem_writeAddr = _T_30; // @[exmem.scala 23:24:@196.4]
  assign io_to_mem_result = _T_33; // @[exmem.scala 24:21:@199.4]
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
module MEM( // @[:@201.2]
  input         io_from_exmem_writeEnable, // @[:@204.4]
  input  [4:0]  io_from_exmem_writeAddr, // @[:@204.4]
  input  [31:0] io_from_exmem_result, // @[:@204.4]
  output        io_to_memwb_writeEnable, // @[:@204.4]
  output [4:0]  io_to_memwb_writeAddr, // @[:@204.4]
  output [31:0] io_to_memwb_result // @[:@204.4]
);
  assign io_to_memwb_writeEnable = io_from_exmem_writeEnable; // @[mem.scala 21:17:@208.4]
  assign io_to_memwb_writeAddr = io_from_exmem_writeAddr; // @[mem.scala 21:17:@207.4]
  assign io_to_memwb_result = io_from_exmem_result; // @[mem.scala 21:17:@206.4]
endmodule
module MEMWB( // @[:@210.2]
  input         clock, // @[:@211.4]
  input         reset, // @[:@212.4]
  input         io_from_mem_writeEnable, // @[:@213.4]
  input  [4:0]  io_from_mem_writeAddr, // @[:@213.4]
  input  [31:0] io_from_mem_result, // @[:@213.4]
  output        io_to_regs_writeEnable, // @[:@213.4]
  output [4:0]  io_to_regs_writeAddr, // @[:@213.4]
  output [31:0] io_to_regs_writeData // @[:@213.4]
);
  reg  _T_27; // @[memwb.scala 22:36:@215.4]
  reg [31:0] _RAND_0;
  reg [4:0] _T_30; // @[memwb.scala 23:34:@218.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_33; // @[memwb.scala 24:34:@221.4]
  reg [31:0] _RAND_2;
  assign io_to_regs_writeEnable = _T_27; // @[memwb.scala 22:27:@217.4]
  assign io_to_regs_writeAddr = _T_30; // @[memwb.scala 23:25:@220.4]
  assign io_to_regs_writeData = _T_33; // @[memwb.scala 24:25:@223.4]
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
module CPU( // @[:@225.2]
  input         clock, // @[:@226.4]
  input         reset, // @[:@227.4]
  input  [31:0] io_rom_data, // @[:@228.4]
  output [31:0] io_rom_addr, // @[:@228.4]
  output [31:0] io_asdasd // @[:@228.4]
);
  wire  pc_clock; // @[cpu.scala 16:18:@230.4]
  wire  pc_reset; // @[cpu.scala 16:18:@230.4]
  wire [31:0] pc_io_to_ifid_pc; // @[cpu.scala 16:18:@230.4]
  wire  ifid_clock; // @[cpu.scala 17:20:@233.4]
  wire  ifid_reset; // @[cpu.scala 17:20:@233.4]
  wire [31:0] ifid_io_inst; // @[cpu.scala 17:20:@233.4]
  wire [31:0] ifid_io_to_id_inst; // @[cpu.scala 17:20:@233.4]
  wire  id_clock; // @[cpu.scala 18:18:@236.4]
  wire  id_reset; // @[cpu.scala 18:18:@236.4]
  wire [31:0] id_io_from_ifid_inst; // @[cpu.scala 18:18:@236.4]
  wire [31:0] id_io_from_regs_data1; // @[cpu.scala 18:18:@236.4]
  wire  id_io_to_regs_readEnable1; // @[cpu.scala 18:18:@236.4]
  wire  id_io_to_regs_readEnable2; // @[cpu.scala 18:18:@236.4]
  wire [4:0] id_io_to_regs_readAddr1; // @[cpu.scala 18:18:@236.4]
  wire [5:0] id_io_to_idex_inst_type; // @[cpu.scala 18:18:@236.4]
  wire [31:0] id_io_to_idex_op1; // @[cpu.scala 18:18:@236.4]
  wire [31:0] id_io_to_idex_op2; // @[cpu.scala 18:18:@236.4]
  wire  id_io_to_idex_writeEnable; // @[cpu.scala 18:18:@236.4]
  wire [4:0] id_io_to_idex_writeAddr; // @[cpu.scala 18:18:@236.4]
  wire  regs_clock; // @[cpu.scala 19:20:@239.4]
  wire  regs_reset; // @[cpu.scala 19:20:@239.4]
  wire  regs_io_from_id_readEnable1; // @[cpu.scala 19:20:@239.4]
  wire [4:0] regs_io_from_id_readAddr1; // @[cpu.scala 19:20:@239.4]
  wire  regs_io_from_memwb_writeEnable; // @[cpu.scala 19:20:@239.4]
  wire [4:0] regs_io_from_memwb_writeAddr; // @[cpu.scala 19:20:@239.4]
  wire [31:0] regs_io_from_memwb_writeData; // @[cpu.scala 19:20:@239.4]
  wire [31:0] regs_io_to_id_data1; // @[cpu.scala 19:20:@239.4]
  wire  idex_clock; // @[cpu.scala 20:20:@242.4]
  wire  idex_reset; // @[cpu.scala 20:20:@242.4]
  wire [5:0] idex_io_from_id_inst_type; // @[cpu.scala 20:20:@242.4]
  wire [31:0] idex_io_from_id_op1; // @[cpu.scala 20:20:@242.4]
  wire [31:0] idex_io_from_id_op2; // @[cpu.scala 20:20:@242.4]
  wire  idex_io_from_id_writeEnable; // @[cpu.scala 20:20:@242.4]
  wire [4:0] idex_io_from_id_writeAddr; // @[cpu.scala 20:20:@242.4]
  wire [5:0] idex_io_to_ex_inst_type; // @[cpu.scala 20:20:@242.4]
  wire [31:0] idex_io_to_ex_op1; // @[cpu.scala 20:20:@242.4]
  wire [31:0] idex_io_to_ex_op2; // @[cpu.scala 20:20:@242.4]
  wire  idex_io_to_ex_writeEnable; // @[cpu.scala 20:20:@242.4]
  wire [4:0] idex_io_to_ex_writeAddr; // @[cpu.scala 20:20:@242.4]
  wire [5:0] ex_io_from_idex_inst_type; // @[cpu.scala 21:18:@245.4]
  wire [31:0] ex_io_from_idex_op1; // @[cpu.scala 21:18:@245.4]
  wire [31:0] ex_io_from_idex_op2; // @[cpu.scala 21:18:@245.4]
  wire  ex_io_from_idex_writeEnable; // @[cpu.scala 21:18:@245.4]
  wire [4:0] ex_io_from_idex_writeAddr; // @[cpu.scala 21:18:@245.4]
  wire  ex_io_to_exmem_writeEnable; // @[cpu.scala 21:18:@245.4]
  wire [4:0] ex_io_to_exmem_writeAddr; // @[cpu.scala 21:18:@245.4]
  wire [31:0] ex_io_to_exmem_result; // @[cpu.scala 21:18:@245.4]
  wire  exmem_clock; // @[cpu.scala 22:21:@248.4]
  wire  exmem_reset; // @[cpu.scala 22:21:@248.4]
  wire  exmem_io_from_ex_writeEnable; // @[cpu.scala 22:21:@248.4]
  wire [4:0] exmem_io_from_ex_writeAddr; // @[cpu.scala 22:21:@248.4]
  wire [31:0] exmem_io_from_ex_result; // @[cpu.scala 22:21:@248.4]
  wire  exmem_io_to_mem_writeEnable; // @[cpu.scala 22:21:@248.4]
  wire [4:0] exmem_io_to_mem_writeAddr; // @[cpu.scala 22:21:@248.4]
  wire [31:0] exmem_io_to_mem_result; // @[cpu.scala 22:21:@248.4]
  wire  mem_io_from_exmem_writeEnable; // @[cpu.scala 23:19:@251.4]
  wire [4:0] mem_io_from_exmem_writeAddr; // @[cpu.scala 23:19:@251.4]
  wire [31:0] mem_io_from_exmem_result; // @[cpu.scala 23:19:@251.4]
  wire  mem_io_to_memwb_writeEnable; // @[cpu.scala 23:19:@251.4]
  wire [4:0] mem_io_to_memwb_writeAddr; // @[cpu.scala 23:19:@251.4]
  wire [31:0] mem_io_to_memwb_result; // @[cpu.scala 23:19:@251.4]
  wire  memwb_clock; // @[cpu.scala 24:21:@254.4]
  wire  memwb_reset; // @[cpu.scala 24:21:@254.4]
  wire  memwb_io_from_mem_writeEnable; // @[cpu.scala 24:21:@254.4]
  wire [4:0] memwb_io_from_mem_writeAddr; // @[cpu.scala 24:21:@254.4]
  wire [31:0] memwb_io_from_mem_result; // @[cpu.scala 24:21:@254.4]
  wire  memwb_io_to_regs_writeEnable; // @[cpu.scala 24:21:@254.4]
  wire [4:0] memwb_io_to_regs_writeAddr; // @[cpu.scala 24:21:@254.4]
  wire [31:0] memwb_io_to_regs_writeData; // @[cpu.scala 24:21:@254.4]
  PC pc ( // @[cpu.scala 16:18:@230.4]
    .clock(pc_clock),
    .reset(pc_reset),
    .io_to_ifid_pc(pc_io_to_ifid_pc)
  );
  IFID ifid ( // @[cpu.scala 17:20:@233.4]
    .clock(ifid_clock),
    .reset(ifid_reset),
    .io_inst(ifid_io_inst),
    .io_to_id_inst(ifid_io_to_id_inst)
  );
  ID id ( // @[cpu.scala 18:18:@236.4]
    .clock(id_clock),
    .reset(id_reset),
    .io_from_ifid_inst(id_io_from_ifid_inst),
    .io_from_regs_data1(id_io_from_regs_data1),
    .io_to_regs_readEnable1(id_io_to_regs_readEnable1),
    .io_to_regs_readEnable2(id_io_to_regs_readEnable2),
    .io_to_regs_readAddr1(id_io_to_regs_readAddr1),
    .io_to_idex_inst_type(id_io_to_idex_inst_type),
    .io_to_idex_op1(id_io_to_idex_op1),
    .io_to_idex_op2(id_io_to_idex_op2),
    .io_to_idex_writeEnable(id_io_to_idex_writeEnable),
    .io_to_idex_writeAddr(id_io_to_idex_writeAddr)
  );
  REGS regs ( // @[cpu.scala 19:20:@239.4]
    .clock(regs_clock),
    .reset(regs_reset),
    .io_from_id_readEnable1(regs_io_from_id_readEnable1),
    .io_from_id_readAddr1(regs_io_from_id_readAddr1),
    .io_from_memwb_writeEnable(regs_io_from_memwb_writeEnable),
    .io_from_memwb_writeAddr(regs_io_from_memwb_writeAddr),
    .io_from_memwb_writeData(regs_io_from_memwb_writeData),
    .io_to_id_data1(regs_io_to_id_data1)
  );
  IDEX idex ( // @[cpu.scala 20:20:@242.4]
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
  EX ex ( // @[cpu.scala 21:18:@245.4]
    .io_from_idex_inst_type(ex_io_from_idex_inst_type),
    .io_from_idex_op1(ex_io_from_idex_op1),
    .io_from_idex_op2(ex_io_from_idex_op2),
    .io_from_idex_writeEnable(ex_io_from_idex_writeEnable),
    .io_from_idex_writeAddr(ex_io_from_idex_writeAddr),
    .io_to_exmem_writeEnable(ex_io_to_exmem_writeEnable),
    .io_to_exmem_writeAddr(ex_io_to_exmem_writeAddr),
    .io_to_exmem_result(ex_io_to_exmem_result)
  );
  EXMEM exmem ( // @[cpu.scala 22:21:@248.4]
    .clock(exmem_clock),
    .reset(exmem_reset),
    .io_from_ex_writeEnable(exmem_io_from_ex_writeEnable),
    .io_from_ex_writeAddr(exmem_io_from_ex_writeAddr),
    .io_from_ex_result(exmem_io_from_ex_result),
    .io_to_mem_writeEnable(exmem_io_to_mem_writeEnable),
    .io_to_mem_writeAddr(exmem_io_to_mem_writeAddr),
    .io_to_mem_result(exmem_io_to_mem_result)
  );
  MEM mem ( // @[cpu.scala 23:19:@251.4]
    .io_from_exmem_writeEnable(mem_io_from_exmem_writeEnable),
    .io_from_exmem_writeAddr(mem_io_from_exmem_writeAddr),
    .io_from_exmem_result(mem_io_from_exmem_result),
    .io_to_memwb_writeEnable(mem_io_to_memwb_writeEnable),
    .io_to_memwb_writeAddr(mem_io_to_memwb_writeAddr),
    .io_to_memwb_result(mem_io_to_memwb_result)
  );
  MEMWB memwb ( // @[cpu.scala 24:21:@254.4]
    .clock(memwb_clock),
    .reset(memwb_reset),
    .io_from_mem_writeEnable(memwb_io_from_mem_writeEnable),
    .io_from_mem_writeAddr(memwb_io_from_mem_writeAddr),
    .io_from_mem_result(memwb_io_from_mem_result),
    .io_to_regs_writeEnable(memwb_io_to_regs_writeEnable),
    .io_to_regs_writeAddr(memwb_io_to_regs_writeAddr),
    .io_to_regs_writeData(memwb_io_to_regs_writeData)
  );
  assign io_rom_addr = pc_io_to_ifid_pc; // @[cpu.scala 38:16:@289.4]
  assign io_asdasd = memwb_io_to_regs_writeData; // @[cpu.scala 39:14:@290.4]
  assign pc_clock = clock; // @[:@231.4]
  assign pc_reset = reset; // @[:@232.4]
  assign ifid_clock = clock; // @[:@234.4]
  assign ifid_reset = reset; // @[:@235.4]
  assign ifid_io_inst = io_rom_data; // @[cpu.scala 37:17:@288.4]
  assign id_clock = clock; // @[:@237.4]
  assign id_reset = reset; // @[:@238.4]
  assign id_io_from_ifid_inst = ifid_io_to_id_inst; // @[cpu.scala 27:19:@258.4]
  assign id_io_from_regs_data1 = regs_io_to_id_data1; // @[cpu.scala 29:19:@265.4]
  assign regs_clock = clock; // @[:@240.4]
  assign regs_reset = reset; // @[:@241.4]
  assign regs_io_from_id_readEnable1 = id_io_to_regs_readEnable1; // @[cpu.scala 28:19:@263.4]
  assign regs_io_from_id_readAddr1 = id_io_to_regs_readAddr1; // @[cpu.scala 28:19:@261.4]
  assign regs_io_from_memwb_writeEnable = memwb_io_to_regs_writeEnable; // @[cpu.scala 35:21:@287.4]
  assign regs_io_from_memwb_writeAddr = memwb_io_to_regs_writeAddr; // @[cpu.scala 35:21:@286.4]
  assign regs_io_from_memwb_writeData = memwb_io_to_regs_writeData; // @[cpu.scala 35:21:@285.4]
  assign idex_clock = clock; // @[:@243.4]
  assign idex_reset = reset; // @[:@244.4]
  assign idex_io_from_id_inst_type = id_io_to_idex_inst_type; // @[cpu.scala 30:19:@270.4]
  assign idex_io_from_id_op1 = id_io_to_idex_op1; // @[cpu.scala 30:19:@269.4]
  assign idex_io_from_id_op2 = id_io_to_idex_op2; // @[cpu.scala 30:19:@268.4]
  assign idex_io_from_id_writeEnable = id_io_to_idex_writeEnable; // @[cpu.scala 30:19:@267.4]
  assign idex_io_from_id_writeAddr = id_io_to_idex_writeAddr; // @[cpu.scala 30:19:@266.4]
  assign ex_io_from_idex_inst_type = idex_io_to_ex_inst_type; // @[cpu.scala 31:19:@275.4]
  assign ex_io_from_idex_op1 = idex_io_to_ex_op1; // @[cpu.scala 31:19:@274.4]
  assign ex_io_from_idex_op2 = idex_io_to_ex_op2; // @[cpu.scala 31:19:@273.4]
  assign ex_io_from_idex_writeEnable = idex_io_to_ex_writeEnable; // @[cpu.scala 31:19:@272.4]
  assign ex_io_from_idex_writeAddr = idex_io_to_ex_writeAddr; // @[cpu.scala 31:19:@271.4]
  assign exmem_clock = clock; // @[:@249.4]
  assign exmem_reset = reset; // @[:@250.4]
  assign exmem_io_from_ex_writeEnable = ex_io_to_exmem_writeEnable; // @[cpu.scala 32:19:@278.4]
  assign exmem_io_from_ex_writeAddr = ex_io_to_exmem_writeAddr; // @[cpu.scala 32:19:@277.4]
  assign exmem_io_from_ex_result = ex_io_to_exmem_result; // @[cpu.scala 32:19:@276.4]
  assign mem_io_from_exmem_writeEnable = exmem_io_to_mem_writeEnable; // @[cpu.scala 33:20:@281.4]
  assign mem_io_from_exmem_writeAddr = exmem_io_to_mem_writeAddr; // @[cpu.scala 33:20:@280.4]
  assign mem_io_from_exmem_result = exmem_io_to_mem_result; // @[cpu.scala 33:20:@279.4]
  assign memwb_clock = clock; // @[:@255.4]
  assign memwb_reset = reset; // @[:@256.4]
  assign memwb_io_from_mem_writeEnable = mem_io_to_memwb_writeEnable; // @[cpu.scala 34:20:@284.4]
  assign memwb_io_from_mem_writeAddr = mem_io_to_memwb_writeAddr; // @[cpu.scala 34:20:@283.4]
  assign memwb_io_from_mem_result = mem_io_to_memwb_result; // @[cpu.scala 34:20:@282.4]
endmodule

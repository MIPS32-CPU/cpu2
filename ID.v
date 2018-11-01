module ID( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [31:0] io_from_ifid_pc, // @[:@6.4]
  input  [31:0] io_from_ifid_inst, // @[:@6.4]
  input  [31:0] io_from_regs_data1, // @[:@6.4]
  input  [31:0] io_from_regs_data2, // @[:@6.4]
  output        io_to_regs_readEnable1, // @[:@6.4]
  output        io_to_regs_readEnable2, // @[:@6.4]
  output [4:0]  io_to_regs_readAddr1, // @[:@6.4]
  output [4:0]  io_to_regs_readAddr2, // @[:@6.4]
  output [5:0]  io_to_idex_inst_type, // @[:@6.4]
  output [31:0] io_to_idex_op1, // @[:@6.4]
  output [31:0] io_to_idex_op2, // @[:@6.4]
  output        io_to_idex_writeEnable, // @[:@6.4]
  output [4:0]  io_to_idex_writeAddr // @[:@6.4]
);
  wire [4:0] rs; // @[id.scala 35:16:@9.4]
  wire [4:0] rt; // @[id.scala 36:16:@10.4]
  reg [31:0] imm; // @[id.scala 39:20:@12.4]
  reg [31:0] _RAND_0;
  wire  _T_70; // @[id.scala 54:38:@34.6]
  wire [31:0] _GEN_0; // @[id.scala 54:50:@35.6]
  wire  _T_73; // @[id.scala 62:38:@45.6]
  wire [31:0] _GEN_2; // @[id.scala 62:50:@46.6]
  wire [31:0] _T_77; // @[id.scala 69:27:@52.4]
  wire  _T_78; // @[id.scala 69:27:@53.4]
  wire [15:0] _T_80; // @[id.scala 72:18:@57.6]
  wire [31:0] _GEN_6; // @[id.scala 69:42:@54.4]
  assign rs = io_from_ifid_inst[25:21]; // @[id.scala 35:16:@9.4]
  assign rt = io_from_ifid_inst[20:16]; // @[id.scala 36:16:@10.4]
  assign _T_70 = io_to_regs_readEnable1 == 1'h0; // @[id.scala 54:38:@34.6]
  assign _GEN_0 = _T_70 ? imm : 32'h0; // @[id.scala 54:50:@35.6]
  assign _T_73 = io_to_regs_readEnable2 == 1'h0; // @[id.scala 62:38:@45.6]
  assign _GEN_2 = _T_73 ? imm : 32'h0; // @[id.scala 62:50:@46.6]
  assign _T_77 = io_from_ifid_inst & 32'h707f; // @[id.scala 69:27:@52.4]
  assign _T_78 = 32'h6013 == _T_77; // @[id.scala 69:27:@53.4]
  assign _T_80 = io_from_ifid_inst[15:0]; // @[id.scala 72:18:@57.6]
  assign _GEN_6 = _T_78 ? {{16'd0}, _T_80} : imm; // @[id.scala 69:42:@54.4]
  assign io_to_regs_readEnable1 = 32'h6013 == _T_77; // @[id.scala 41:27:@14.4 id.scala 70:31:@55.6]
  assign io_to_regs_readEnable2 = 1'h0; // @[id.scala 42:27:@16.4]
  assign io_to_regs_readAddr1 = _T_78 ? rs : 5'h0; // @[id.scala 43:25:@18.4 id.scala 71:29:@56.6]
  assign io_to_regs_readAddr2 = 5'h0; // @[id.scala 44:25:@20.4]
  assign io_to_idex_inst_type = _T_78 ? 6'h1 : 6'h3; // @[id.scala 45:25:@21.4 id.scala 75:29:@61.6]
  assign io_to_idex_op1 = io_to_regs_readEnable1 ? io_from_regs_data1 : _GEN_0; // @[id.scala 46:19:@23.4 id.scala 53:23:@31.6 id.scala 55:23:@36.8 id.scala 57:23:@39.8]
  assign io_to_idex_op2 = io_to_regs_readEnable2 ? io_from_regs_data2 : _GEN_2; // @[id.scala 47:19:@25.4 id.scala 61:23:@42.6 id.scala 63:23:@47.8 id.scala 65:23:@50.8]
  assign io_to_idex_writeEnable = 32'h6013 == _T_77; // @[id.scala 48:27:@27.4 id.scala 73:31:@59.6]
  assign io_to_idex_writeAddr = _T_78 ? rt : 5'h0; // @[id.scala 49:25:@29.4 id.scala 74:29:@60.6]
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
      if (_T_78) begin
        imm <= {{16'd0}, _T_80};
      end
    end
  end
endmodule

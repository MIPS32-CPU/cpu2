module IDEX( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [5:0]  io_from_id_inst_type, // @[:@6.4]
  input  [31:0] io_from_id_op1, // @[:@6.4]
  input  [31:0] io_from_id_op2, // @[:@6.4]
  input         io_from_id_writeEnable, // @[:@6.4]
  input  [4:0]  io_from_id_writeAddr, // @[:@6.4]
  output [5:0]  io_to_ex_inst_type, // @[:@6.4]
  output [31:0] io_to_ex_op1, // @[:@6.4]
  output [31:0] io_to_ex_op2, // @[:@6.4]
  output        io_to_ex_writeEnable, // @[:@6.4]
  output [4:0]  io_to_ex_writeAddr // @[:@6.4]
);
  reg [5:0] _T_39; // @[idex.scala 24:32:@8.4]
  reg [31:0] _RAND_0;
  reg [31:0] _T_42; // @[idex.scala 25:26:@11.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_45; // @[idex.scala 26:26:@14.4]
  reg [31:0] _RAND_2;
  reg  _T_48; // @[idex.scala 27:34:@17.4]
  reg [31:0] _RAND_3;
  reg [4:0] _T_51; // @[idex.scala 28:32:@20.4]
  reg [31:0] _RAND_4;
  assign io_to_ex_inst_type = _T_39; // @[idex.scala 24:23:@10.4]
  assign io_to_ex_op1 = _T_42; // @[idex.scala 25:17:@13.4]
  assign io_to_ex_op2 = _T_45; // @[idex.scala 26:17:@16.4]
  assign io_to_ex_writeEnable = _T_48; // @[idex.scala 27:25:@19.4]
  assign io_to_ex_writeAddr = _T_51; // @[idex.scala 28:23:@22.4]
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

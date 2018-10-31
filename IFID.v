module IFID( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [31:0] io_from_pc_pc, // @[:@6.4]
  input  [31:0] io_inst, // @[:@6.4]
  output [31:0] io_to_id_pc, // @[:@6.4]
  output [31:0] io_to_id_inst // @[:@6.4]
);
  reg [31:0] r1; // @[ifid.scala 22:19:@8.4]
  reg [31:0] _RAND_0;
  reg [31:0] r2; // @[ifid.scala 25:19:@11.4]
  reg [31:0] _RAND_1;
  assign io_to_id_pc = r1; // @[ifid.scala 23:16:@10.4]
  assign io_to_id_inst = r2; // @[ifid.scala 26:18:@13.4]
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
  r1 = _RAND_0[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_1 = {1{`RANDOM}};
  r2 = _RAND_1[31:0];
  `endif // RANDOMIZE_REG_INIT
  end
`endif // RANDOMIZE
  always @(posedge clock) begin
    r1 <= io_from_pc_pc;
    r2 <= io_inst;
  end
endmodule

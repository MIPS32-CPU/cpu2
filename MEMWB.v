module MEMWB( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_from_mem_writeEnable, // @[:@6.4]
  input  [4:0]  io_from_mem_writeAddr, // @[:@6.4]
  input  [31:0] io_from_mem_result, // @[:@6.4]
  output        io_to_regs_writeEnable, // @[:@6.4]
  output [4:0]  io_to_regs_writeAddr, // @[:@6.4]
  output [31:0] io_to_regs_writeData // @[:@6.4]
);
  reg  _T_27; // @[memwb.scala 22:36:@8.4]
  reg [31:0] _RAND_0;
  reg [4:0] _T_30; // @[memwb.scala 23:34:@11.4]
  reg [31:0] _RAND_1;
  reg [31:0] _T_33; // @[memwb.scala 24:34:@14.4]
  reg [31:0] _RAND_2;
  assign io_to_regs_writeEnable = _T_27; // @[memwb.scala 22:27:@10.4]
  assign io_to_regs_writeAddr = _T_30; // @[memwb.scala 23:25:@13.4]
  assign io_to_regs_writeData = _T_33; // @[memwb.scala 24:25:@16.4]
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

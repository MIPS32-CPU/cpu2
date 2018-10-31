module PC( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  output [31:0] io_pc_o // @[:@6.4]
);
  reg [31:0] r; // @[pc.scala 13:18:@8.4]
  reg [31:0] _RAND_0;
  wire [32:0] _T_11; // @[pc.scala 15:13:@10.6]
  wire [31:0] _T_12; // @[pc.scala 15:13:@11.6]
  assign _T_11 = r + 32'h4; // @[pc.scala 15:13:@10.6]
  assign _T_12 = _T_11[31:0]; // @[pc.scala 15:13:@11.6]
  assign io_pc_o = r; // @[pc.scala 17:12:@14.4]
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

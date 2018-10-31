module Dxy( // @[:@3.2]
  input         clock, // @[:@4.4]
  input  [31:0] io_in2, // @[:@6.4]
  output [31:0] io_out // @[:@6.4]
);
  reg [31:0] r; // @[Dxy.scala 11:18:@8.4]
  reg [31:0] _RAND_0;
  assign io_out = r; // @[Dxy.scala 12:11:@10.4]
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
    r <= io_in2;
  end
endmodule
module Gcd( // @[:@30.2]
  input         clock, // @[:@31.4]
  input         reset, // @[:@32.4]
  input  [31:0] io_in1, // @[:@33.4]
  input  [31:0] io_in2, // @[:@33.4]
  input  [31:0] io_in3, // @[:@33.4]
  input  [31:0] io_in4, // @[:@33.4]
  output [31:0] io_out // @[:@33.4]
);
  wire  dxy1_clock; // @[Gcd.scala 24:20:@35.4]
  wire [31:0] dxy1_io_in2; // @[Gcd.scala 24:20:@35.4]
  wire [31:0] dxy1_io_out; // @[Gcd.scala 24:20:@35.4]
  wire  dxy2_clock; // @[Gcd.scala 25:20:@38.4]
  wire [31:0] dxy2_io_in2; // @[Gcd.scala 25:20:@38.4]
  wire [31:0] dxy2_io_out; // @[Gcd.scala 25:20:@38.4]
  wire  dxy3_clock; // @[Gcd.scala 26:20:@41.4]
  wire [31:0] dxy3_io_in2; // @[Gcd.scala 26:20:@41.4]
  wire [31:0] dxy3_io_out; // @[Gcd.scala 26:20:@41.4]
  Dxy dxy1 ( // @[Gcd.scala 24:20:@35.4]
    .clock(dxy1_clock),
    .io_in2(dxy1_io_in2),
    .io_out(dxy1_io_out)
  );
  Dxy dxy2 ( // @[Gcd.scala 25:20:@38.4]
    .clock(dxy2_clock),
    .io_in2(dxy2_io_in2),
    .io_out(dxy2_io_out)
  );
  Dxy dxy3 ( // @[Gcd.scala 26:20:@41.4]
    .clock(dxy3_clock),
    .io_in2(dxy3_io_in2),
    .io_out(dxy3_io_out)
  );
  assign io_out = dxy3_io_out; // @[Gcd.scala 33:11:@50.4]
  assign dxy1_clock = clock; // @[:@36.4]
  assign dxy1_io_in2 = io_in2; // @[Gcd.scala 28:16:@45.4]
  assign dxy2_clock = clock; // @[:@39.4]
  assign dxy2_io_in2 = io_in4; // @[Gcd.scala 30:16:@47.4]
  assign dxy3_clock = clock; // @[:@42.4]
  assign dxy3_io_in2 = dxy2_io_out; // @[Gcd.scala 32:16:@49.4]
endmodule

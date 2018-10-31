module EX( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input  [5:0]  io_from_idex_inst_type, // @[:@6.4]
  input  [31:0] io_from_idex_op1, // @[:@6.4]
  input  [31:0] io_from_idex_op2, // @[:@6.4]
  input         io_from_idex_writeEnable, // @[:@6.4]
  input  [4:0]  io_from_idex_writeAddr, // @[:@6.4]
  output        io_to_exmem_writeEnable, // @[:@6.4]
  output [4:0]  io_to_exmem_writeAddr, // @[:@6.4]
  output [31:0] io_to_exmem_result // @[:@6.4]
);
  wire  _T_33; // @[ex.scala 25:32:@10.4]
  wire [31:0] _T_34; // @[ex.scala 26:46:@12.6]
  assign _T_33 = io_from_idex_inst_type == 6'h1; // @[ex.scala 25:32:@10.4]
  assign _T_34 = io_from_idex_op1 | io_from_idex_op2; // @[ex.scala 26:46:@12.6]
  assign io_to_exmem_writeEnable = io_from_idex_writeEnable; // @[ex.scala 22:28:@8.4]
  assign io_to_exmem_writeAddr = io_from_idex_writeAddr; // @[ex.scala 23:26:@9.4]
  assign io_to_exmem_result = _T_33 ? _T_34 : 32'h0; // @[ex.scala 26:27:@13.6 ex.scala 28:27:@16.6]
endmodule

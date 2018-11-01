module MEM( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_from_exmem_writeEnable, // @[:@6.4]
  input  [4:0]  io_from_exmem_writeAddr, // @[:@6.4]
  input  [31:0] io_from_exmem_result, // @[:@6.4]
  output        io_to_memwb_writeEnable, // @[:@6.4]
  output [4:0]  io_to_memwb_writeAddr, // @[:@6.4]
  output [31:0] io_to_memwb_result // @[:@6.4]
);
  assign io_to_memwb_writeEnable = io_from_exmem_writeEnable; // @[mem.scala 21:17:@10.4]
  assign io_to_memwb_writeAddr = io_from_exmem_writeAddr; // @[mem.scala 21:17:@9.4]
  assign io_to_memwb_result = io_from_exmem_result; // @[mem.scala 21:17:@8.4]
endmodule

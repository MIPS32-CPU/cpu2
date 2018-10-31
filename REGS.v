module REGS( // @[:@3.2]
  input         clock, // @[:@4.4]
  input         reset, // @[:@5.4]
  input         io_from_id_readEnable1, // @[:@6.4]
  input         io_from_id_readEnable2, // @[:@6.4]
  input  [4:0]  io_from_id_readAddr1, // @[:@6.4]
  input  [4:0]  io_from_id_readAddr2, // @[:@6.4]
  input         io_from_memwb_writeEnable, // @[:@6.4]
  input  [4:0]  io_from_memwb_writeAddr, // @[:@6.4]
  input  [31:0] io_from_memwb_writeData, // @[:@6.4]
  output [31:0] io_to_id_data1, // @[:@6.4]
  output [31:0] io_to_id_data2 // @[:@6.4]
);
  reg [31:0] register [0:31]; // @[regs.scala 22:21:@8.4]
  reg [31:0] _RAND_0;
  wire [31:0] register__T_62_data; // @[regs.scala 22:21:@8.4]
  wire [4:0] register__T_62_addr; // @[regs.scala 22:21:@8.4]
  wire [31:0] register__T_74_data; // @[regs.scala 22:21:@8.4]
  wire [4:0] register__T_74_addr; // @[regs.scala 22:21:@8.4]
  wire [31:0] register__T_50_data; // @[regs.scala 22:21:@8.4]
  wire [4:0] register__T_50_addr; // @[regs.scala 22:21:@8.4]
  wire  register__T_50_mask; // @[regs.scala 22:21:@8.4]
  wire  register__T_50_en; // @[regs.scala 22:21:@8.4]
  reg [31:0] r0; // @[regs.scala 25:19:@9.4]
  reg [31:0] _RAND_1;
  wire  _T_48; // @[regs.scala 26:71:@12.4]
  wire  _T_55; // @[regs.scala 32:32:@20.4]
  wire  _T_58; // @[regs.scala 34:36:@25.6]
  wire  _T_60; // @[regs.scala 36:65:@30.8]
  wire  _T_61; // @[regs.scala 36:42:@31.8]
  wire [31:0] _GEN_5; // @[regs.scala 36:93:@32.8]
  wire  _GEN_8; // @[regs.scala 36:93:@32.8]
  wire [31:0] _GEN_9; // @[regs.scala 34:49:@26.6]
  wire  _GEN_12; // @[regs.scala 34:49:@26.6]
  wire  _T_67; // @[regs.scala 44:32:@41.4]
  wire  _T_70; // @[regs.scala 46:36:@46.6]
  wire  _T_72; // @[regs.scala 48:65:@51.8]
  wire  _T_73; // @[regs.scala 48:42:@52.8]
  wire [31:0] _GEN_17; // @[regs.scala 48:93:@53.8]
  wire  _GEN_20; // @[regs.scala 48:93:@53.8]
  wire [31:0] _GEN_21; // @[regs.scala 46:49:@47.6]
  wire  _GEN_24; // @[regs.scala 46:49:@47.6]
  assign register__T_62_addr = io_from_id_readAddr1;
  assign register__T_62_data = register[register__T_62_addr]; // @[regs.scala 22:21:@8.4]
  assign register__T_74_addr = io_from_id_readAddr2;
  assign register__T_74_data = register[register__T_74_addr]; // @[regs.scala 22:21:@8.4]
  assign register__T_50_data = r0;
  assign register__T_50_addr = io_from_memwb_writeAddr;
  assign register__T_50_mask = 1'h1;
  assign register__T_50_en = io_from_memwb_writeEnable & _T_48;
  assign _T_48 = io_from_memwb_writeAddr != 5'h0; // @[regs.scala 26:71:@12.4]
  assign _T_55 = io_from_id_readEnable1 == 1'h0; // @[regs.scala 32:32:@20.4]
  assign _T_58 = io_from_id_readAddr1 == 5'h0; // @[regs.scala 34:36:@25.6]
  assign _T_60 = io_from_id_readAddr1 == io_from_memwb_writeAddr; // @[regs.scala 36:65:@30.8]
  assign _T_61 = io_from_memwb_writeEnable & _T_60; // @[regs.scala 36:42:@31.8]
  assign _GEN_5 = _T_61 ? io_from_memwb_writeData : register__T_62_data; // @[regs.scala 36:93:@32.8]
  assign _GEN_8 = _T_61 ? 1'h0 : 1'h1; // @[regs.scala 36:93:@32.8]
  assign _GEN_9 = _T_58 ? 32'h0 : _GEN_5; // @[regs.scala 34:49:@26.6]
  assign _GEN_12 = _T_58 ? 1'h0 : _GEN_8; // @[regs.scala 34:49:@26.6]
  assign _T_67 = io_from_id_readEnable2 == 1'h0; // @[regs.scala 44:32:@41.4]
  assign _T_70 = io_from_id_readAddr2 == 5'h0; // @[regs.scala 46:36:@46.6]
  assign _T_72 = io_from_id_readAddr2 == io_from_memwb_writeAddr; // @[regs.scala 48:65:@51.8]
  assign _T_73 = io_from_memwb_writeEnable & _T_72; // @[regs.scala 48:42:@52.8]
  assign _GEN_17 = _T_73 ? io_from_memwb_writeData : register__T_74_data; // @[regs.scala 48:93:@53.8]
  assign _GEN_20 = _T_73 ? 1'h0 : 1'h1; // @[regs.scala 48:93:@53.8]
  assign _GEN_21 = _T_70 ? 32'h0 : _GEN_17; // @[regs.scala 46:49:@47.6]
  assign _GEN_24 = _T_70 ? 1'h0 : _GEN_20; // @[regs.scala 46:49:@47.6]
  assign io_to_id_data1 = _T_55 ? 32'h0 : _GEN_9; // @[regs.scala 31:19:@19.4 regs.scala 33:23:@22.6 regs.scala 35:23:@27.8 regs.scala 37:23:@33.10 regs.scala 39:23:@37.10]
  assign io_to_id_data2 = _T_67 ? 32'h0 : _GEN_21; // @[regs.scala 43:19:@40.4 regs.scala 45:23:@43.6 regs.scala 47:23:@48.8 regs.scala 49:23:@54.10 regs.scala 51:23:@58.10]
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
      register[register__T_50_addr] <= register__T_50_data; // @[regs.scala 22:21:@8.4]
    end
    if (reset) begin
      r0 <= 32'h0;
    end else begin
      r0 <= io_from_memwb_writeData;
    end
  end
endmodule

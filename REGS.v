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
  wire [31:0] register__T_61_data; // @[regs.scala 22:21:@8.4]
  wire [4:0] register__T_61_addr; // @[regs.scala 22:21:@8.4]
  wire [31:0] register__T_72_data; // @[regs.scala 22:21:@8.4]
  wire [4:0] register__T_72_addr; // @[regs.scala 22:21:@8.4]
  wire [31:0] register__T_50_data; // @[regs.scala 22:21:@8.4]
  wire [4:0] register__T_50_addr; // @[regs.scala 22:21:@8.4]
  wire  register__T_50_mask; // @[regs.scala 22:21:@8.4]
  wire  register__T_50_en; // @[regs.scala 22:21:@8.4]
  reg [31:0] r0; // @[regs.scala 25:19:@9.4]
  reg [31:0] _RAND_1;
  wire  _T_48; // @[regs.scala 26:71:@12.4]
  reg [31:0] r1; // @[regs.scala 31:19:@18.4]
  reg [31:0] _RAND_2;
  wire  _T_54; // @[regs.scala 32:32:@19.4]
  wire  _T_57; // @[regs.scala 34:36:@24.6]
  wire  _T_59; // @[regs.scala 36:65:@29.8]
  wire  _T_60; // @[regs.scala 36:42:@30.8]
  wire [31:0] _GEN_5; // @[regs.scala 36:93:@31.8]
  wire  _GEN_8; // @[regs.scala 36:93:@31.8]
  wire [31:0] _GEN_9; // @[regs.scala 34:49:@25.6]
  wire  _GEN_12; // @[regs.scala 34:49:@25.6]
  wire [31:0] _GEN_13; // @[regs.scala 32:44:@20.4]
  reg [31:0] r2; // @[regs.scala 44:19:@39.4]
  reg [31:0] _RAND_3;
  wire  _T_65; // @[regs.scala 45:32:@40.4]
  wire  _T_68; // @[regs.scala 47:36:@45.6]
  wire  _T_70; // @[regs.scala 49:65:@50.8]
  wire  _T_71; // @[regs.scala 49:42:@51.8]
  wire [31:0] _GEN_17; // @[regs.scala 49:93:@52.8]
  wire  _GEN_20; // @[regs.scala 49:93:@52.8]
  wire [31:0] _GEN_21; // @[regs.scala 47:49:@46.6]
  wire  _GEN_24; // @[regs.scala 47:49:@46.6]
  wire [31:0] _GEN_25; // @[regs.scala 45:44:@41.4]
  assign register__T_61_addr = io_from_id_readAddr1;
  assign register__T_61_data = register[register__T_61_addr]; // @[regs.scala 22:21:@8.4]
  assign register__T_72_addr = io_from_id_readAddr2;
  assign register__T_72_data = register[register__T_72_addr]; // @[regs.scala 22:21:@8.4]
  assign register__T_50_data = r0;
  assign register__T_50_addr = io_from_memwb_writeAddr;
  assign register__T_50_mask = 1'h1;
  assign register__T_50_en = io_from_memwb_writeEnable & _T_48;
  assign _T_48 = io_from_memwb_writeAddr != 5'h0; // @[regs.scala 26:71:@12.4]
  assign _T_54 = io_from_id_readEnable1 == 1'h0; // @[regs.scala 32:32:@19.4]
  assign _T_57 = io_from_id_readAddr1 == 5'h0; // @[regs.scala 34:36:@24.6]
  assign _T_59 = io_from_id_readAddr1 == io_from_memwb_writeAddr; // @[regs.scala 36:65:@29.8]
  assign _T_60 = io_from_memwb_writeEnable & _T_59; // @[regs.scala 36:42:@30.8]
  assign _GEN_5 = _T_60 ? io_from_memwb_writeData : register__T_61_data; // @[regs.scala 36:93:@31.8]
  assign _GEN_8 = _T_60 ? 1'h0 : 1'h1; // @[regs.scala 36:93:@31.8]
  assign _GEN_9 = _T_57 ? 32'h0 : _GEN_5; // @[regs.scala 34:49:@25.6]
  assign _GEN_12 = _T_57 ? 1'h0 : _GEN_8; // @[regs.scala 34:49:@25.6]
  assign _GEN_13 = _T_54 ? 32'h0 : _GEN_9; // @[regs.scala 32:44:@20.4]
  assign _T_65 = io_from_id_readEnable2 == 1'h0; // @[regs.scala 45:32:@40.4]
  assign _T_68 = io_from_id_readAddr2 == 5'h0; // @[regs.scala 47:36:@45.6]
  assign _T_70 = io_from_id_readAddr2 == io_from_memwb_writeAddr; // @[regs.scala 49:65:@50.8]
  assign _T_71 = io_from_memwb_writeEnable & _T_70; // @[regs.scala 49:42:@51.8]
  assign _GEN_17 = _T_71 ? io_from_memwb_writeData : register__T_72_data; // @[regs.scala 49:93:@52.8]
  assign _GEN_20 = _T_71 ? 1'h0 : 1'h1; // @[regs.scala 49:93:@52.8]
  assign _GEN_21 = _T_68 ? 32'h0 : _GEN_17; // @[regs.scala 47:49:@46.6]
  assign _GEN_24 = _T_68 ? 1'h0 : _GEN_20; // @[regs.scala 47:49:@46.6]
  assign _GEN_25 = _T_65 ? 32'h0 : _GEN_21; // @[regs.scala 45:44:@41.4]
  assign io_to_id_data1 = r1; // @[regs.scala 41:19:@38.4]
  assign io_to_id_data2 = r2; // @[regs.scala 54:19:@59.4]
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
  `ifdef RANDOMIZE_REG_INIT
  _RAND_2 = {1{`RANDOM}};
  r1 = _RAND_2[31:0];
  `endif // RANDOMIZE_REG_INIT
  `ifdef RANDOMIZE_REG_INIT
  _RAND_3 = {1{`RANDOM}};
  r2 = _RAND_3[31:0];
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
    if (reset) begin
      r1 <= 32'h0;
    end else begin
      if (_T_54) begin
        r1 <= 32'h0;
      end else begin
        if (_T_57) begin
          r1 <= 32'h0;
        end else begin
          if (_T_60) begin
            r1 <= io_from_memwb_writeData;
          end else begin
            r1 <= register__T_61_data;
          end
        end
      end
    end
    if (reset) begin
      r2 <= 32'h0;
    end else begin
      if (_T_65) begin
        r2 <= 32'h0;
      end else begin
        if (_T_68) begin
          r2 <= 32'h0;
        end else begin
          if (_T_71) begin
            r2 <= io_from_memwb_writeData;
          end else begin
            r2 <= register__T_72_data;
          end
        end
      end
    end
  end
endmodule

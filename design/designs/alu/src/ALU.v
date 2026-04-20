module ALU(
  input         clock,
  input         reset,
  input  [31:0] io_a,
  input  [31:0] io_b,
  input  [3:0]  io_op,
  output [31:0] io_result,
  output        io_zero,
  output        io_negative
);
  wire  _T_5 = io_a[31] != io_b[31] ? io_a[31] : io_a < io_b; // @[ALU.scala 33:31]
  wire  _T_6 = 4'h0 == io_op; // @[Conditional.scala 37:30]
  wire [31:0] _T_8 = io_a + io_b; // @[ALU.scala 38:34]
  wire  _T_9 = 4'h1 == io_op; // @[Conditional.scala 37:30]
  wire [31:0] _T_11 = io_a - io_b; // @[ALU.scala 39:34]
  wire  _T_12 = 4'h2 == io_op; // @[Conditional.scala 37:30]
  wire [31:0] _T_13 = io_a & io_b; // @[ALU.scala 40:34]
  wire  _T_14 = 4'h3 == io_op; // @[Conditional.scala 37:30]
  wire [31:0] _T_15 = io_a | io_b; // @[ALU.scala 41:34]
  wire  _T_16 = 4'h4 == io_op; // @[Conditional.scala 37:30]
  wire [31:0] _T_17 = io_a ^ io_b; // @[ALU.scala 42:34]
  wire  _T_18 = 4'h5 == io_op; // @[Conditional.scala 37:30]
  wire [31:0] _T_19 = _T_5 ? 32'h1 : 32'h0; // @[ALU.scala 43:35]
  wire [31:0] _GEN_0 = _T_18 ? _T_19 : 32'h0; // @[Conditional.scala 39:67 ALU.scala 43:29]
  wire [31:0] _GEN_1 = _T_16 ? _T_17 : _GEN_0; // @[Conditional.scala 39:67 ALU.scala 42:29]
  wire [31:0] _GEN_2 = _T_14 ? _T_15 : _GEN_1; // @[Conditional.scala 39:67 ALU.scala 41:29]
  wire [31:0] _GEN_3 = _T_12 ? _T_13 : _GEN_2; // @[Conditional.scala 39:67 ALU.scala 40:29]
  wire [31:0] _GEN_4 = _T_9 ? _T_11 : _GEN_3; // @[Conditional.scala 39:67 ALU.scala 39:29]
  wire [31:0] _GEN_5 = _T_6 ? _T_8 : _GEN_4; // @[Conditional.scala 40:58 ALU.scala 38:29]
  assign io_result = _T_6 ? _T_8 : _GEN_4; // @[Conditional.scala 40:58 ALU.scala 38:29]
  assign io_zero = _GEN_5 == 32'h0; // @[ALU.scala 47:25]
  assign io_negative = _GEN_5[31]; // @[ALU.scala 48:24]
endmodule

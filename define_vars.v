`ifndef DECODER_VARS_V
`define DECODER_VARS_V

`define OP_NULL 4'b0000
`define OP_ADD  4'b0010
`define OP_ADDI 4'b0011
`define OP_SUB  4'b0100
`define OP_SUBI 4'b0101
`define OP_AND  4'b1110
`define OP_OR   4'b1100
`define OP_XOR  4'b1010
`define OP_NOT  4'b1000

`define sOP_NULL  3'b000
`define sOP_ADD   3'b001
`define sOP_SUB   3'b010
`define sOP_AND   3'b111
`define sOP_OR    3'b110
`define sOP_XOR   3'b101
`define sOP_NOT   3'b100

`endif//DECODER_VARS_V

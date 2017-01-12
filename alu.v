`ifndef ALU_V
`define ALU_V
`include "adder.v"
`include "sub.v"
`include "binary_op.v"
`include "define_vars.v"

module alu (in_a, in_b, s_opcode, out_result);
    input [7:0] in_a, in_b;
    input [2:0] s_opcode;
    output[8:0] out_result;

    wire  [8:0] add_result, sub_result, and_result, or_result, xor_result, not_result;
    eight_bit_adder A_A(in_a, in_b, add_result);
    eight_bit_suber S_S(in_a, in_b, sub_result);
    eight_bit_and   N_N(in_a, in_b, and_result);
    eight_bit_or    O_O(in_a, in_b,  or_result);
    eight_bit_xor   X_X(in_a, in_b, xor_result);
    eight_bit_not   T_T(in_a,       not_result);

    assign out_result = (s_opcode == `sOP_NULL)? {1'b0 ,in_a}:
                        (s_opcode == `sOP_ADD )? add_result  :
                        (s_opcode == `sOP_SUB )? sub_result  :
                        (s_opcode == `sOP_AND )? and_result  :
                        (s_opcode == `sOP_OR  )? or_result   :
                        (s_opcode == `sOP_XOR )? xor_result  :
                        (s_opcode == `sOP_NOT )? not_result  : 8'bxxxx_xxxx;


endmodule // alu

`endif //ALU_V

`ifndef ALU_V
`define ALU_V
`include "adder.v"
`include "sub.v"

module alu (in_a, in_b, opcode, out_result);
    input [7:0] in_a, in_b;
    input [2:0] opcode;
    output[8:0] out_result;

    wire  [7:0]ap, bp;
    toggle_twos_comp TO(in_a, ap);
    toggle_twos_comp T1(in_b, bp);
    eight_bit_adder T(ap, bp, out_result);
    //toggle_twos_comp T(in_a, out_result[7:0]);
    //eight_bit_suber T(in_a, in_b, out_result);
endmodule // alu

`endif //ALU_V

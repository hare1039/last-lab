`include "adder.v"
module alu (in_a, in_b, opcode, out_result);
    input [7:0] in_a, in_b;
    input [2:0] opcode;
    output[8:0] out_result;

    eight_bit_adder c(in_a, in_b, out_result);

endmodule // alu

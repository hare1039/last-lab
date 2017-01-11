`ifndef BINARY_OP_V
`define BINARY_OP_V

module eight_bit_and(in_a, in_b, out);
    input  [7:0] in_a, in_b;
    output [8:0] out;
    assign out[0] = in_a[0] & in_b[0];
    assign out[1] = in_a[1] & in_b[1];
    assign out[2] = in_a[2] & in_b[2];
    assign out[3] = in_a[3] & in_b[3];
    assign out[4] = in_a[4] & in_b[4];
    assign out[5] = in_a[5] & in_b[5];
    assign out[6] = in_a[6] & in_b[6];
    assign out[7] = in_a[7] & in_b[7];
    assign out[8] = 1'b0;
endmodule // eight_bit_and

module eight_bit_or(in_a, in_b, out);
    input  [7:0] in_a, in_b;
    output [8:0] out;
    assign out[0] = in_a[0] | in_b[0];
    assign out[1] = in_a[1] | in_b[1];
    assign out[2] = in_a[2] | in_b[2];
    assign out[3] = in_a[3] | in_b[3];
    assign out[4] = in_a[4] | in_b[4];
    assign out[5] = in_a[5] | in_b[5];
    assign out[6] = in_a[6] | in_b[6];
    assign out[7] = in_a[7] | in_b[7];
    assign out[8] = 1'b0;
endmodule // eight_bit_or

module eight_bit_xor(in_a, in_b, out);
    input  [7:0] in_a, in_b;
    output [8:0] out;
    assign out[0] = in_a[0] ^ in_b[0];
    assign out[1] = in_a[1] ^ in_b[1];
    assign out[2] = in_a[2] ^ in_b[2];
    assign out[3] = in_a[3] ^ in_b[3];
    assign out[4] = in_a[4] ^ in_b[4];
    assign out[5] = in_a[5] ^ in_b[5];
    assign out[6] = in_a[6] ^ in_b[6];
    assign out[7] = in_a[7] ^ in_b[7];
    assign out[8] = 1'b0;
endmodule // eight_bit_xor

module eight_bit_not(in, out);
    input  [7:0] in;
    output [8:0] out;
    assign out[0] = ~in[0];
    assign out[1] = ~in[1];
    assign out[2] = ~in[2];
    assign out[3] = ~in[3];
    assign out[4] = ~in[4];
    assign out[5] = ~in[5];
    assign out[6] = ~in[6];
    assign out[7] = ~in[7];
    assign out[8] = 1'b0;
endmodule // eight_bit_not

`endif//BINARY_OP_V

`ifndef ADDER_V
`define ADDER_V

module full_adder ( in_a, in_b, in_c, out_s, out_c);
    input  in_a, in_b ,in_c;
    output out_c, out_s;
    wire n1, n2, n3;
    xor (n1   , in_a, in_b);
    xor (out_s,   n1, in_c);
    nand(n2   , in_a, in_b);
    nand(n3   ,   n1, in_c);
    nand(out_c,   n3, n2);
endmodule // full_adder

module eight_bit_adder( in_a, in_b, out );
    input  [7:0] in_a, in_b;
    output [8:0] out;
    wire   [7:0] carrier;
    full_adder a0(in_a[0], in_b[0],       1'b0, out[0], carrier[0]);
    full_adder a1(in_a[1], in_b[1], carrier[0], out[1], carrier[1]);
    full_adder a2(in_a[2], in_b[2], carrier[1], out[2], carrier[2]);
    full_adder a3(in_a[3], in_b[3], carrier[2], out[3], carrier[3]);
    full_adder a4(in_a[4], in_b[4], carrier[3], out[4], carrier[4]);
    full_adder a5(in_a[5], in_b[5], carrier[4], out[5], carrier[5]);
    full_adder a6(in_a[6], in_b[6], carrier[5], out[6], carrier[6]);
    full_adder a7(in_a[7], in_b[7], carrier[6], out[7], carrier[7]);

    assign out[8] = (~in_a[7] & ~in_b[7] & carrier[6]) | (in_a[7] & in_b[7] & ~carrier[6]);
    //assign out[8] = carrier[7] | (~in_a[7] & ~in_b[7] & out[7]);
endmodule // 8bit_adder

`endif // ADDER_V

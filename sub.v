`ifndef SUB_V
`define SUB_V

`include "adder.v"
module toggle_twos_comp (in, out);
    input  [7:0] in;
    output [7:0] out;
    wire   [6:0] connector;

    assign connector[0] = in[0];
    assign connector[1] = in[1] | connector[0];
    assign connector[2] = in[2] | connector[1];
    assign connector[3] = in[3] | connector[2];
    assign connector[4] = in[4] | connector[3];
    assign connector[5] = in[5] | connector[4];
    assign connector[6] = in[6] | connector[5];
    assign out[0] = in[0];
    assign out[1] = (connector[0]) ? ~in[1] : in[1];
    assign out[2] = (connector[1]) ? ~in[2] : in[2];
    assign out[3] = (connector[2]) ? ~in[3] : in[3];
    assign out[4] = (connector[3]) ? ~in[4] : in[4];
    assign out[5] = (connector[4]) ? ~in[5] : in[5];
    assign out[6] = (connector[5]) ? ~in[6] : in[6];
    assign out[7] = (connector[6]) ? ~in[7] : in[7];
endmodule // toggle_twos_comp

module eight_bit_suber ( in_a, in_b, out ); // a - b
    input  [7:0] in_a, in_b;
    output [8:0] out;
    wire   [7:0] in_b_invert;
    toggle_twos_comp inveter(in_b, in_b_invert);
    eight_bit_adder adder(in_a, in_b_invert, out);
endmodule // eight_bit_suber

`endif //SUB_V

`ifndef DECODER_V
`define DECODER_V
//`include "define_vars.v"

module decode(org, small_code);
    input [3:0] org;
    output[2:0] small_code;
    assign small_code = org[3:1] ;
endmodule // decode

`endif//DECODER_V

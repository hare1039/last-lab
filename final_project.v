//`timescale 1ns / 1ps
`include "pc_instruction.v"
`include "data_memory.v"
`include "define_vars.v"
`include "decoder.v"
`include "alu.v"
`include "define_vars.v"

module final_project(
        input clk,
        input reset,
        output signed [7:0] reg1,
        output signed [7:0] reg2,
        output signed [7:0] reg3,
        output signed [7:0] reg4
    );
    wire [19:0] instruction;
    wire [ 8:0] calc_out_data;
    wire [ 3:0] op_code;
    wire [ 2:0] de_op_code;
    wire [ 7:0] first_num, second_num;
    wire [ 7:0] operand_A, operand_B;
    wire hold_write = (op_code == `OP_NULL)? 1 : 0;

    assign op_code    = instruction[19:16];
    assign first_num  = instruction[15: 8];
    assign second_num = instruction[ 7: 0];
    assign operand_A  = (first_num == 8'd0)? reg1:
                        (first_num == 8'd1)? reg2:
                        (first_num == 8'd2)? reg3:
                        (first_num == 8'd3)? reg4: 8'bxxxx_xxxx;

    assign operand_B  = (op_code == `OP_NULL)?
                            8'b00000000:
                        (op_code == `OP_ADDI || op_code == `OP_SUBI)?
                            second_num:
                        (second_num == 8'd0)? reg1:
                        (second_num == 8'd1)? reg2:
                        (second_num == 8'd2)? reg3:
                        (second_num == 8'd3)? reg4: 8'bxxxx_xxxx;

    pc_instruction pc_instruction( .clk(clk), .hold(1'b0), .reset(reset), .instruction(instruction) );
    data_memory    data_memory( reset, clk, hold_write, first_num[1:0], calc_out_data[7:0], reg1, reg2, reg3, reg4 );
    decode         decode(op_code, de_op_code);
    alu            alu(operand_A, operand_B, de_op_code, calc_out_data);

endmodule

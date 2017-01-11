`include "alu.v"

module tester ();
    reg [7:0] a, b;
    wire[8:0] out;
    alu s(a, b, 3'b000, out);
    initial begin
        a = 8'd0;
        b = 8'd0;

        #50;

        a = 8'd10;
        b = 8'd20;

        #50;
        $finish;
    end

    initial begin
        $dumpfile("result.vcd");
        $dumpvars;
    end
endmodule // tester

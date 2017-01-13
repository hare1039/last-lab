`ifndef DATA_MEMORY
`define DATA_MEMORY
module data_memory(
		input        reset,
		input        clk,
		input        hold,
		input  [1:0] write_id,
		input  [7:0] new_data,
		output [7:0] reg1,
		output [7:0] reg2,
		output [7:0] reg3,
		output [7:0] reg4
	);
	reg    [7:0]  register[3:0];

	assign reg1 = register[0];
	assign reg2 = register[1];
	assign reg3 = register[2];
	assign reg4 = register[3];

	always @ ( negedge clk ) begin
	    if(reset) begin
			register[0] <= 8'd0;
			register[1] <= 8'd0;
			register[2] <= 8'd0;
            register[3] <= 8'd0;
		end
		else if(hold) begin
			register[write_id] <= register[write_id];
		end
		else
			register[write_id] <= new_data;
	end
endmodule

`endif//DATA_MEMORY

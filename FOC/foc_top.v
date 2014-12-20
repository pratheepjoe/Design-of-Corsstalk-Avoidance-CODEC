module foc_top(clk,
					rst,
					data_in,
					data_out);										
input clk,rst;

input [31:0] data_in;

output [31:0] data_out;

wire [31:0] data_in;
wire [39:0] data_temp; 

// Instances 

foc_enc_top enc(.clk(clk),.rst(rst),.data_in(data_in),.data_out(data_temp));
foc_dec_top dec(.clk(clk),.rst(rst),.data_in(data_temp),.data_out(data_out));

endmodule

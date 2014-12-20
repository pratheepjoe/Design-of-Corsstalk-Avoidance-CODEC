module fpc_dec_top(clk,
					rst,
					data_in,
					data_out);										
input clk,rst;

input [39:0] data_in;

output reg [31:0] data_out;

wire [39:0] data_in;
reg [31:0] data_temp;

// Instances 

fpc_dec dec1(data_in[4:0],data_temp[3:0]);
fpc_dec dec2(data_in[9:5],data_temp[7:4]);
fpc_dec dec3(data_in[14:10],data_temp[11:8]);
fpc_dec dec4(data_in[19:15],data_temp[15:12]);
fpc_dec dec5(data_in[24:20],data_temp[19:16]);
fpc_dec dec6(data_in[29:25],data_temp[23:20]);
fpc_dec dec7(data_in[34:30],data_temp[27:24]);
fpc_dec dec8(data_in[39:35],data_temp[31:28]);


always @ (posedge clk)
begin
	if(rst)
	begin
		data_out<=32'bz;
	end
	else
	begin
		data_out<=data_temp;
	end
end


endmodule

module foc_enc_top(
			clk,
			rst,
			data_in,
			data_out);										

input [31:0] data_in;
input clk,rst;

output reg [39:0] data_out;

wire [31:0] data_in; 
reg [39:0] data_temp;

// Instances 

foc_enc enc1(data_in[3:0],data_temp[4:0]);
foc_enc enc2(data_in[7:4],data_temp[9:5]);
foc_enc enc3(data_in[11:8],data_temp[14:10]);
foc_enc enc4(data_in[15:12],data_temp[19:15]);
foc_enc enc5(data_in[19:16],data_temp[24:20]);
foc_enc enc6(data_in[23:20],data_temp[29:25]);
foc_enc enc7(data_in[27:24],data_temp[34:30]);
foc_enc enc8(data_in[31:28],data_temp[39:35]);

always @ (posedge clk)
begin
	if(rst)
	begin
		data_out<=40'bz;
	end
	else
	begin
		data_out<=data_temp;
	end
end

endmodule

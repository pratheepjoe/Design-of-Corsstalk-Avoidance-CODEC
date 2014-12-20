module ftc_enc_top(	clk,
			rst,
			data_in,
			data_out);										
input clk,rst;

input [31:0] data_in;

output reg [43:0] data_out;

wire [31:0] data_in; 
reg [43:0] data_temp;

// Instances 

ftc_enc enc1(data_in[2:0],data_temp[3:0]);
ftc_enc enc2(data_in[5:3],data_temp[7:4]);
ftc_enc enc3(data_in[8:6],data_temp[11:8]);
ftc_enc enc4(data_in[11:9],data_temp[15:12]);
ftc_enc enc5(data_in[14:12],data_temp[19:16]);
ftc_enc enc6(data_in[17:15],data_temp[23:20]);
ftc_enc enc7(data_in[20:18],data_temp[27:24]);
ftc_enc enc8(data_in[23:21],data_temp[31:28]);
ftc_enc enc9(data_in[26:24],data_temp[35:32]);
ftc_enc enc10(data_in[29:27],data_temp[39:36]);
ftc_enc enc11({1'b0,data_in[31:30]},data_temp[43:40]);


always @ (posedge clk)
begin
	if(rst)
	begin
		data_out<=44'bz;
	end
	else
	begin
		data_out<=data_temp;
	end
end

endmodule

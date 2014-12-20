module ftc_dec_top(clk,
					rst,
					data_in,
					data_out);										
input clk,rst;

input [43:0] data_in;

output reg [31:0] data_out;

wire [43:0] data_in;
reg [32:0]data_temp; 

// Instances 

ftc_dec dec1(data_in[3:0],data_temp[2:0]);
ftc_dec dec2(data_in[7:4],data_temp[5:3]);
ftc_dec dec3(data_in[11:8],data_temp[8:6]);
ftc_dec dec4(data_in[15:12],data_temp[11:9]);
ftc_dec dec5(data_in[19:16],data_temp[14:12]);
ftc_dec dec6(data_in[23:20],data_temp[17:15]);
ftc_dec dec7(data_in[27:24],data_temp[20:18]);
ftc_dec dec8(data_in[31:28],data_temp[23:21]);
ftc_dec dec9(data_in[35:32],data_temp[26:24]);
ftc_dec dec10(data_in[39:36],data_temp[29:27]);
ftc_dec dec11(data_in[43:40],data_temp[32:30]);

always @ (posedge clk)
begin 
	if(rst)
		begin 
		data_out=32'bz;
		end
	else 
		begin
		data_out[31:0]= data_temp[31:0];
		end
end

endmodule

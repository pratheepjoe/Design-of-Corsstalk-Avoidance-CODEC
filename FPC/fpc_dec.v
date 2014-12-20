module fpc_dec(
		data_in,
		data_out);										

input [4:0] data_in;

output [3:0] data_out;

wire [4:0] data_in;
reg [3:0] data_out; 

always @ (data_in)
begin 

	case(data_in)
	5'b00000 : data_out <= 4'b0000;
	5'b00001 : data_out <= 4'b0001;
	5'b00110 : data_out <= 4'b0010;
	5'b00011 : data_out <= 4'b0011;
	5'b01100 : data_out <= 4'b0100;
	5'b00111 : data_out <= 4'b0101;
	5'b01110 : data_out <= 4'b0110;
	5'b01111 : data_out <= 4'b0111;
	5'b10000 : data_out <= 4'b1000;
	5'b10001 : data_out <= 4'b1001;
	5'b11000 : data_out <= 4'b1010;
	5'b10011 : data_out <= 4'b1011;
	5'b11100 : data_out <= 4'b1100;
	5'b11001 : data_out <= 4'b1101;
	5'b11110 : data_out <= 4'b1110;
	5'b11111 : data_out <= 4'b1111;
	default : data_out <=4'bz;
	endcase		

end

endmodule

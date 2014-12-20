module foc_enc(
					data_in,
					data_out);										

input [3:0] data_in;

output [4:0] data_out;

wire [3:0] data_in;
reg [4:0] data_out; 

always @ (data_in)
begin 

	case(data_in)
	4'b0000 : data_out = 5'b00000;
	4'b0001 : data_out = 5'b00100;
	4'b0010 : data_out = 5'b00001;
	4'b0011 : data_out = 5'b00101;
	4'b0100 : data_out = 5'b00011;
	4'b0101 : data_out = 5'b00111;
	4'b0110 : data_out = 5'b10011;
	4'b0111 : data_out = 5'b10111;
	4'b1000 : data_out = 5'b10000;
	4'b1001 : data_out = 5'b10100;
	4'b1010 : data_out = 5'b10001;
	4'b1011 : data_out = 5'b10101;
	4'b1100 : data_out = 5'b11000;
	4'b1101 : data_out = 5'b11100;
	4'b1110 : data_out = 5'b11001;
	4'b1111 : data_out = 5'b11101;
	default : data_out = 5'bz;
	endcase		

end

endmodule

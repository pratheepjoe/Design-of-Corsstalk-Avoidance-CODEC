module ftc_enc(
					data_in,
					data_out);										


input [2:0] data_in;

output [3:0] data_out;

wire [2:0] data_in;
reg [3:0] data_out; 

always @ (data_in)
begin 
	case(data_in)
	3'b000 : data_out <= 4'b0000;
	3'b001 : data_out <= 4'b0100;
	3'b010 : data_out <= 4'b0001;
	3'b011 : data_out <= 4'b0101;
	3'b100 : data_out <= 4'b0111;
	3'b101 : data_out <= 4'b1100;
	3'b110 : data_out <= 4'b1101;
	3'b111 : data_out <= 4'b1111;
	default : data_out <=4'bz; 
	endcase		
end

endmodule

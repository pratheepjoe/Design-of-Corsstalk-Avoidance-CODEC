module foc_tb;

reg clk,rst;
reg [31:0] data_in;
reg CLKPERIOD = 10;

wire [31:0] data_out;
integer i; 
//Dut
foc_top (.clk(clk),
			.rst(rst),
			.data_in(data_in),
			.data_out(data_out)
			);
			
initial 
begin 
	clk <= 1'b0; 
	i <= 1'b0;
	test_vector;
	#10 $finish;
end

always begin 
	#CLKPERIOD clk <= ~clk;
end

task test_vector;
	for(i=0;i<=5;i=i+1)
	begin
	@(posedge clk);
		data_in<= $random;
	@(negedge clk);
		monitor; 
	end
endtask
	
task monitor;
	if(data_out == data_in)
	begin
		$display("Success: data_in=%h, data_out=%h", data_in, data_out);
	end else 
	begin
		$display("Fail: data_in=%h, data_out=%h", data_in, data_out);
		$stop;
	end
endtask

endmodule

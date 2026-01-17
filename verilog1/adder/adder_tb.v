module adder_tb;
	reg   a, b, cin;
	wire  cout, sum;

initial
	begin
		$dumpfile("adder.vcd");
		$dumpvars(0, s);
		$monitor("a = %b, b = %b cin = %b | cout = %b sum = %b ", a, b, cin, cout, sum);
		#50 a=1'b0; b=1'b0; cin=1'b0;
		#50 a=1'b0; b=1'b1; cin=1'b0;
		#50 a=1'b1; b=1'b0; cin=1'b0;
		#50 a=1'b1; b=1'b1; cin=1'b0;
		#50 a=1'b0; b=1'b0; cin=1'b1;
		#50 a=1'b0; b=1'b1; cin=1'b1;
		#50 a=1'b1; b=1'b0; cin=1'b1;
		#50 a=1'b1; b=1'b1; cin=1'b1;
		#50 $finish;
	end

	adder s( a, b, cin, cout, sum );
endmodule
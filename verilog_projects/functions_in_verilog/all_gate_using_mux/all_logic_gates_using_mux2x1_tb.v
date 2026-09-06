module test_bench;
  reg a, b;
  wire yand, yor, ynand, ynor;
  
  all_gates dut(
	.a(a),
	.b(b),
	.yand(yand),
 	.yor(yor),
	.ynand(ynand),
	.ynor(ynor)
);

  initial begin
	$monitor("a=%b b=%b | yand=%b, yor=%b, ynand=%b, ynor=%b", a, b, yand, yor, ynand, ynor);
 	a=0; b=0; #2;
	a=0; b=1; #2;
	a=1; b=0; #2;
	a=1; b=1; #2;
  end
endmodule

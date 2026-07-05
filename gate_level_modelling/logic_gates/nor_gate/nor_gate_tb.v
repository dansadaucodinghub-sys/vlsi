module nor_gate_tb;
   reg a, b;
   wire y;
nor_gate dut(a,b,y);
initial begin
$monitor("a=%0d, b=%0d, y=%0d", a,b,y);
#2 a=0; b=0;
#2 a=0; b=1;
#2 a=1; b=0;
#2 a=1; b=1;
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,nor_gate_tb);
end
endmodule

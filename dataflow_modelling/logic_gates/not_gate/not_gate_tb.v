module not_gate_tb;
   reg a;
   wire y;
not_gate dut(a,y);
initial begin
$monitor("a=%0d, y=%0d", a,y);
#2 a=0;
#2 a=1;
end
endmodule

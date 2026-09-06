module mux2x1_tb;
reg i0,i1, sel;
wire y;
mux2x1 dut(i0, i1, sel, y);
initial begin
$monitor("Input0=%0d, Input1=%0d, Select Line=%0d, Output=%0d",i0,i1,sel,y);
#2 i0=0; i1=0; sel=0;
#2 i0=1; i1=0; sel=0;
#2 i0=0; i1=1; sel=1;
#2 i0=1; i1=0; sel=1;
end
initial begin
	$fsdbDumpfile("dump.fsdb");
	$fsdbDumpvars(0,mux2x1_tb);
end
endmodule

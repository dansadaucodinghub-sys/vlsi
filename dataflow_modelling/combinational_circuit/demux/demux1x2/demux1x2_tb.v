module demux1x2_tb;
reg i, sel;
wire y0, y1;
demux1x2 dut(i,sel,y0,y1);
initial begin
$monitor("input=%0d,sel=%0d,output0=%0d,output1=%0d",i,sel,y0,y1);
i=0; sel=0;
#2 i=0; sel=1;
#2 i=1; sel=0;
#2 i=1; sel=1;
end
initial begin
	$fsdbDumpfile("dump.fsdb"); 
	$fsdbDumpvars(0,demux1x2_tb);
end
endmodule

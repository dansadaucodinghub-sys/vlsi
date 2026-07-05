module comparator1bit_behavioral_tb;
    reg a, b;
    wire gt, eq, lt;

    comparator1bit_behavioral dut(a, b, gt, eq, lt);

    initial begin
        $monitor("a=%b b=%b gt=%b eq=%b lt=%b", a, b, gt, eq, lt);
        a=0; b=0;
     #2 a=0; b=1;
     #2 a=1; b=0;
     #2 a=1; b=1;
    end
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, comparator1bit_behavioral_tb);
    end
endmodule

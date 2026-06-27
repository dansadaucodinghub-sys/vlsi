module comparator1bit_tb;
    reg a, b;
    wire gt, eq, lt;

    comparator1bit dut(a, b, gt, eq, lt);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, comparator1bit_tb);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b gt=%b eq=%b lt=%b", $time, a, b, gt, eq, lt);
        a=0; b=0; #2;
        a=0; b=1; #2;
        a=1; b=0; #2;
        a=1; b=1; #2;
        $finish;
    end
endmodule

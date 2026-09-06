module comparator1bit_tb;

    reg A, B;
    wire gt, eq, lt;

    comparator1bit dut(A, B, gt, eq, lt);

    initial begin
        $monitor("A=%0d, B=%0d, gt=%0d, eq=%0d, lt=%0d", A, B, gt, eq, lt);

        A = 0; B = 0;
        #2 A = 0; B = 1;
        #2 A = 1; B = 0;
        #2 A = 1; B = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, comparator1bit_tb);
    end

endmodule

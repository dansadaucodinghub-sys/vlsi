module full_subtractor_tb;

    reg A, B, Bin;
    wire diff, Bout;

    full_subtractor dut(A, B, Bin, diff, Bout);

    initial begin
        $monitor("A=%0d, B=%0d, Bin=%0d, diff=%0d, Bout=%0d",
                 A, B, Bin, diff, Bout);

        A = 0; B = 0; Bin = 0;
        #2 A = 0; B = 0; Bin = 1;
        #2 A = 0; B = 1; Bin = 0;
        #2 A = 0; B = 1; Bin = 1;
        #2 A = 1; B = 0; Bin = 0;
        #2 A = 1; B = 0; Bin = 1;
        #2 A = 1; B = 1; Bin = 0;
        #2 A = 1; B = 1; Bin = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, full_subtractor_tb);
    end

endmodule

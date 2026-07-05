module half_subtractor_tb;
    reg A, B;
    wire diff, borrow;
    half_subtractor dut(A, B, diff, borrow);
    initial begin
        $monitor("A=%0d, B=%0d, diff=%0d, borrow=%0d", A, B, diff, borrow);
        A = 0; B = 0;
        #2 A = 0; B = 1;
        #2 A = 1; B = 0;
        #2 A = 1; B = 1;
        #2 $finish;
    end
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, half_subtractor_tb);
    end
endmodule

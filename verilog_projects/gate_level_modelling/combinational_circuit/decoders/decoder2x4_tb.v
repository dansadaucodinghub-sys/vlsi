module decoder2x4_tb;

    reg a1, a0;
    wire [3:0] y;

    decoder2x4 dut(a1, a0, y);

    initial begin
        $monitor("a1=%0d, a0=%0d, y=%04b", a1, a0, y);

        a1 = 0; a0 = 0;
        #2 a1 = 0; a0 = 1;
        #2 a1 = 1; a0 = 0;
        #2 a1 = 1; a0 = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, decoder2x4_tb);
    end

endmodule

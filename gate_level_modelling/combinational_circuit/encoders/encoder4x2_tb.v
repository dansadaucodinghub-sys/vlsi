module encoder4x2_tb;

    reg i0, i1, i2, i3;
    wire [1:0] y;

    encoder4x2 dut(i0, i1, i2, i3, y);

    initial begin
        $monitor("i0=%0d, i1=%0d, i2=%0d, i3=%0d, y=%02b",
                 i0, i1, i2, i3, y);

        i0 = 0; i1 = 0; i2 = 0; i3 = 1;
        #2 i0 = 0; i1 = 0; i2 = 1; i3 = 0;
        #2 i0 = 0; i1 = 1; i2 = 0; i3 = 0;
        #2 i0 = 1; i1 = 0; i2 = 0; i3 = 0;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, encoder4x2_tb);
    end

endmodule

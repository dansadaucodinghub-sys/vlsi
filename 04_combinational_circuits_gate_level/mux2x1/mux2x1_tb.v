module mux2x1_tb;
    reg i0, i1, sel;
    wire y;
    mux2x1 dut(i0, i1, sel, y);
    initial begin
        $monitor("i0=%0d, i1=%0d, sel=%0d, y=%0d", i0, i1, sel, y);
        i0 = 0; i1 = 0; sel = 0;
        #2 i0 = 1; i1 = 0; sel = 0;
        #2 i0 = 0; i1 = 1; sel = 1;
        #2 i0 = 1; i1 = 0; sel = 1;
        #2 i0 = 1; i1 = 1; sel = 0;
        #2 i0 = 1; i1 = 1; sel = 1;
        #2 $finish;
    end
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, mux2x1_tb);
    end
endmodule

module demux1x2_tb;
    reg d, sel;
    wire y0, y1;
    demux1x2 dut(d, sel, y0, y1);
    initial begin
        $monitor("d=%0d, sel=%0d, y0=%0d, y1=%0d", d, sel, y0, y1);
        d = 0; sel = 0;
        #2 d = 0; sel = 1;
        #2 d = 1; sel = 0;
        #2 d = 1; sel = 1;
        #2 $finish;
    end
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, demux1x2_tb);
    end
endmodule

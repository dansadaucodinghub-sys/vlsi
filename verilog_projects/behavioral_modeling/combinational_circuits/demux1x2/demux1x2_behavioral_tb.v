module demux1x2_behavioral_tb;
    reg d, sel;
    wire y0, y1;

    demux1x2_behavioral dut(d, sel, y0, y1);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, demux1x2_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t d=%b sel=%b y0=%b y1=%b", $time, d, sel, y0, y1);

        d=0; sel=0; #2;
        d=1; sel=0; #2;
        d=0; sel=1; #2;
        d=1; sel=1; #2;

        $finish;
    end
endmodule

module demux1x4_tb;
    reg d, s1, s0;
    wire y0, y1, y2, y3;

    demux1x4 dut(d, s1, s0, y0, y1, y2, y3);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, demux1x4_tb);
    end

    initial begin
        $monitor("time=%0t d=%b s1=%b s0=%b y0=%b y1=%b y2=%b y3=%b", $time, d, s1, s0, y0, y1, y2, y3);
        d=0; s1=0; s0=0; #2;
        d=1; s1=0; s0=0; #2;
        d=1; s1=0; s0=1; #2;
        d=1; s1=1; s0=0; #2;
        d=1; s1=1; s0=1; #2;
        $finish;
    end
endmodule

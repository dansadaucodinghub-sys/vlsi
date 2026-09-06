module demux1x4_behavioral_tb;
    reg d, s1, s0;
    wire [3:0] y;

    demux1x4_behavioral dut(d, s1, s0, y);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, demux1x4_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t d=%b s1=%b s0=%b y=%b", $time, d, s1, s0, y);

        d=1; s1=0; s0=0; #2;
        d=1; s1=0; s0=1; #2;
        d=1; s1=1; s0=0; #2;
        d=1; s1=1; s0=1; #2;

        $finish;
    end
endmodule

module sr_latch_behavioral_tb;
    reg en, rst, s, r;
    wire q;

    sr_latch_behavioral dut(en, rst, s, r, q);

    initial begin
        $monitor("time=%0t en=%b rst=%b s=%b r=%b q=%b", $time, en, rst, s, r, q);

        rst=1; en=0; s=0; r=0; #2;
        rst=0; en=1; s=0; r=0; #2;
        s=1; r=0; #2;
        s=0; r=0; #2;
        s=0; r=1; #2;
        s=0; r=0; #2;
        en=0; s=1; r=0; #2;
        en=1; s=1; r=1; #2;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, sr_latch_behavioral_tb);
    end
endmodule

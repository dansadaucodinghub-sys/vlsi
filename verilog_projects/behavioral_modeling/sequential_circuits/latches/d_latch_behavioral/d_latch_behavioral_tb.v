module d_latch_behavioral_tb;
    reg en, rst, d;
    wire q;

    d_latch_behavioral dut(en, rst, d, q);

    initial begin
        $monitor("time=%0t en=%b rst=%b d=%b q=%b", $time, en, rst, d, q);

        rst=1; en=0; d=0; #2;
        rst=0; en=1; d=0; #2;
        d=1; #2;
        en=0; d=0; #2;
        d=1; #2;
        en=1; d=0; #2;
        d=1; #2;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, d_latch_behavioral_tb);
    end
endmodule

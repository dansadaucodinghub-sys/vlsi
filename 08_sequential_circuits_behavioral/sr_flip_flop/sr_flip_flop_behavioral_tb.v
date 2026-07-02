module sr_flip_flop_behavioral_tb;
    reg clk, rst, s, r;
    wire q;

    sr_flip_flop_behavioral dut(clk, rst, s, r, q);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, sr_flip_flop_behavioral_tb);
    end

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b s=%b r=%b q=%b", $time, clk, rst, s, r, q);

        rst=1; s=0; r=0; #3;
        rst=0; s=0; r=0; #4;
        s=1; r=0; #4;
        s=0; r=1; #4;
        s=1; r=1; #4;

        $finish;
    end
endmodule

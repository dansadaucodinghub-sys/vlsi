module d_flip_flop_behavioral_tb;
    reg clk, rst, d;
    wire q;

    d_flip_flop_behavioral dut(clk, rst, d, q);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, d_flip_flop_behavioral_tb);
    end

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b d=%b q=%b", $time, clk, rst, d, q);

        rst=1; d=0; #3;
        rst=0; d=1; #4;
        d=0; #4;
        d=1; #4;

        $finish;
    end
endmodule

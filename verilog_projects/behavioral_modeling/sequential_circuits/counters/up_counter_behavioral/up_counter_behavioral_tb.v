module up_counter_behavioral_tb;
    reg clk, rst, en;
    wire [3:0] count;

    up_counter_behavioral dut(clk, rst, en, count);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b en=%b count=%b", $time, clk, rst, en, count);

        rst=1; en=0; #3;
        rst=0; en=1; #16;
        en=0; #4;
        en=1; #8;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, up_counter_behavioral_tb);
    end
endmodule

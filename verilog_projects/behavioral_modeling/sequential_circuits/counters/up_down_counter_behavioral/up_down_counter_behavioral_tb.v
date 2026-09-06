module up_down_counter_behavioral_tb;
    reg clk, rst, en, up_down;
    wire [3:0] count;

    up_down_counter_behavioral dut(clk, rst, en, up_down, count);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b en=%b up_down=%b count=%b", $time, clk, rst, en, up_down, count);

        rst=1; en=0; up_down=1; #3;
        rst=0; en=1; up_down=1; #10;
        up_down=0; #10;
        en=0; #4;
        en=1; up_down=1; #6;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, up_down_counter_behavioral_tb);
    end
endmodule

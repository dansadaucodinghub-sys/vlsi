module counter4bit_behavioral_tb;
    reg clk, rst;
    wire [3:0] count;

    counter4bit_behavioral dut(clk, rst, count);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, counter4bit_behavioral_tb);
    end

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b count=%b", $time, clk, rst, count);

        rst=1; #3;
        rst=0; #20;

        $finish;
    end
endmodule

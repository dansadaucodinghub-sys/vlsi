module moore_101_detector_behavioral_tb;
    reg clk, rst, din;
    wire y;

    moore_101_detector_behavioral dut(clk, rst, din, y);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b din=%b y=%b", $time, clk, rst, din, y);

        rst=1; din=0; #3;
        rst=0; din=1; #2;
        din=0; #2;
        din=1; #2;
        din=1; #2;
        din=0; #2;
        din=1; #2;
        din=0; #2;
        din=1; #4;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, moore_101_detector_behavioral_tb);
    end
endmodule

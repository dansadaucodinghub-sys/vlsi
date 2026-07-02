module sequence_detector_101_behavioral_tb;
    reg clk, rst, din;
    wire detected;

    sequence_detector_101_behavioral dut(clk, rst, din, detected);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, sequence_detector_101_behavioral_tb);
    end

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b din=%b detected=%b", $time, clk, rst, din, detected);

        rst=1; din=0; #3;
        rst=0;
        din=1; #2;
        din=0; #2;
        din=1; #2;
        din=1; #2;
        din=0; #2;
        din=1; #2;

        $finish;
    end
endmodule

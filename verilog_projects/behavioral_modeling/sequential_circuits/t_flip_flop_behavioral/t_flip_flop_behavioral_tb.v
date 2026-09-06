module t_flip_flop_behavioral_tb;
    reg clk, rst, t;
    wire q;

    t_flip_flop_behavioral dut(clk, rst, t, q);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b t=%b q=%b", $time, clk, rst, t, q);

        rst=1; t=0; #3;
        rst=0; t=1; #6;
        t=0; #4;
        t=1; #6;

        $finish;
    end
    initial begin
	$dumpfile("wave.vcd");
	$dumpvars(0, t_flip_flop_behavioral_tb);
    end
  endmodule

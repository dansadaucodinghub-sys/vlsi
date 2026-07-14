module jk_flip_flop_behavioral_tb;
    reg clk, rst, j, k;
    wire q;

    jk_flip_flop_behavioral dut(clk, rst, j, k, q);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b j=%b k=%b q=%b", $time, clk, rst, j, k, q);

        rst=1; j=0; k=0; #3;
        rst=0; j=0; k=0; #4;
        j=0; k=1; #4;
        j=1; k=0; #4;
        j=1; k=1; #6;

        $finish;
    end
	initial begin
       	 $fsdbDumpfile("dump.fsdb");
       	 $fsdbDumpvars(0, jk_flip_flop_behavioral_tb);
	end
endmodule

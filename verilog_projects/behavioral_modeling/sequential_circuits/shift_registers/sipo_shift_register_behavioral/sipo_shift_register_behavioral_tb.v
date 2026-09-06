module sipo_shift_register_behavioral_tb;
    reg clk, rst, si;
    wire [3:0] q;

    sipo_shift_register_behavioral dut(clk, rst, si, q);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b si=%b q=%b", $time, clk, rst, si, q);

        rst=1; si=0; #3;
        rst=0; si=1; #2;
        si=0; #2;
        si=1; #2;
        si=1; #2;
        si=0; #4;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, sipo_shift_register_behavioral_tb);
    end
endmodule

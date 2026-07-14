module universal_shift_register_behavioral_tb;
    reg clk, rst, si_left, si_right;
    reg [1:0] sel;
    reg [3:0] p;
    wire [3:0] q;

    universal_shift_register_behavioral dut(clk, rst, sel, si_left, si_right, p, q);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b sel=%b si_left=%b si_right=%b p=%b q=%b", $time, clk, rst, sel, si_left, si_right, p, q);

        rst=1; sel=2'b00; si_left=0; si_right=0; p=4'b0000; #3;
        rst=0; sel=2'b11; p=4'b1011; #2;
        sel=2'b00; #2;
        sel=2'b01; si_left=1; #4;
        sel=2'b10; si_right=0; #4;
        sel=2'b11; p=4'b0101; #2;
        sel=2'b10; si_right=1; #4;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, universal_shift_register_behavioral_tb);
    end
endmodule

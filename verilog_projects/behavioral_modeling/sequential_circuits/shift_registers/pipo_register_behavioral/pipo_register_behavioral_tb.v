module pipo_register_behavioral_tb;
    reg clk, rst, load;
    reg [3:0] p;
    wire [3:0] q;

    pipo_register_behavioral dut(clk, rst, load, p, q);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b load=%b p=%b q=%b", $time, clk, rst, load, p, q);

        rst=1; load=0; p=4'b0000; #3;
        rst=0; load=1; p=4'b1010; #2;
        load=0; p=4'b0101; #4;
        load=1; p=4'b1111; #2;
        load=0; p=4'b0000; #4;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, pipo_register_behavioral_tb);
    end
endmodule

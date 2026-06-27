module decoder2x4_tb;
    reg a1, a0;
    wire [3:0] y;

    decoder2x4 dut(a1, a0, y);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, decoder2x4_tb);
    end

    initial begin
        $monitor("time=%0t a1=%b a0=%b y=%b", $time, a1, a0, y);
        a1=0; a0=0; #2;
        a1=0; a0=1; #2;
        a1=1; a0=0; #2;
        a1=1; a0=1; #2;
        $finish;
    end
endmodule

module encoder4x2_tb;
    reg i0, i1, i2, i3;
    wire y1, y0;

    encoder4x2 dut(i0, i1, i2, i3, y1, y0);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, encoder4x2_tb);
    end

    initial begin
        $monitor("time=%0t i0=%b i1=%b i2=%b i3=%b y1=%b y0=%b", $time, i0, i1, i2, i3, y1, y0);
        i0=1; i1=0; i2=0; i3=0; #2;
        i0=0; i1=1; i2=0; i3=0; #2;
        i0=0; i1=0; i2=1; i3=0; #2;
        i0=0; i1=0; i2=0; i3=1; #2;
        $finish;
    end
endmodule

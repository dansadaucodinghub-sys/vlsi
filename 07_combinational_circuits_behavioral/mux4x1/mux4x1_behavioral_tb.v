module mux4x1_behavioral_tb;
    reg i0, i1, i2, i3, s1, s0;
    wire y;

    mux4x1_behavioral dut(i0, i1, i2, i3, s1, s0, y);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, mux4x1_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t i0=%b i1=%b i2=%b i3=%b s1=%b s0=%b y=%b", $time, i0, i1, i2, i3, s1, s0, y);

        i0=1; i1=0; i2=0; i3=0; s1=0; s0=0; #2;
        i0=0; i1=1; i2=0; i3=0; s1=0; s0=1; #2;
        i0=0; i1=0; i2=1; i3=0; s1=1; s0=0; #2;
        i0=0; i1=0; i2=0; i3=1; s1=1; s0=1; #2;

        $finish;
    end
endmodule

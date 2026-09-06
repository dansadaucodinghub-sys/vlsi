module full_subtractor_behavioral_tb;
    reg a, b, bin;
    wire d, bout;

    full_subtractor_behavioral dut(a, b, bin, d, bout);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, full_subtractor_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b bin=%b d=%b bout=%b", $time, a, b, bin, d, bout);

        a=0; b=0; bin=0; #2;
        a=0; b=0; bin=1; #2;
        a=0; b=1; bin=0; #2;
        a=0; b=1; bin=1; #2;
        a=1; b=0; bin=0; #2;
        a=1; b=0; bin=1; #2;
        a=1; b=1; bin=0; #2;
        a=1; b=1; bin=1; #2;

        $finish;
    end
endmodule

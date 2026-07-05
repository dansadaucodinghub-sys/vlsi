module and_gate_behavioral_tb;
    reg a, b;
    wire y;

    and_gate_behavioral dut(a, b, y);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, and_gate_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b y=%b", $time, a, b, y);

        a = 0; b = 0; #2;
        a = 0; b = 1; #2;
        a = 1; b = 0; #2;
        a = 1; b = 1; #2;

        $finish;
    end
endmodule

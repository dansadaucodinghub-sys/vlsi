module not_gate_behavioral_tb;
    reg a;
    wire y;

    not_gate_behavioral dut(a, y);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, not_gate_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t a=%b y=%b", $time, a, y);

        a = 0; #2;
        a = 1; #2;

        $finish;
    end
endmodule

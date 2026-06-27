module not_gate_tb;

    reg a;
    wire y;

    not_gate dut(a, y);

    initial begin
        $monitor("a=%0d, y=%0d", a, y);

        a = 0;
        #2 a = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, not_gate_tb);
    end

endmodule

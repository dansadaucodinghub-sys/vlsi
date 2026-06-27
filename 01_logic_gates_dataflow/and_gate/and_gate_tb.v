module and_gate_tb;

    reg a, b;
    wire y;

    and_gate dut(a, b, y);

    initial begin
        $monitor("a=%0d, b=%0d, y=%0d", a, b, y);

        a = 0; b = 0;
        #2 a = 0; b = 1;
        #2 a = 1; b = 0;
        #2 a = 1; b = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, and_gate_tb);
    end

endmodule

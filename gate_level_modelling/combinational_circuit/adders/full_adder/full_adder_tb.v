module full_adder_tb;

    reg A, B, Cin;
    wire sum, Cout;

    full_adder dut(A, B, Cin, sum, Cout);

    initial begin
        $monitor("A=%0d, B=%0d, Cin=%0d, sum=%0d, Cout=%0d",
                 A, B, Cin, sum, Cout);

        A = 0; B = 0; Cin = 0;
        #2 A = 0; B = 0; Cin = 1;
        #2 A = 0; B = 1; Cin = 0;
        #2 A = 0; B = 1; Cin = 1;
        #2 A = 1; B = 0; Cin = 0;
        #2 A = 1; B = 0; Cin = 1;
        #2 A = 1; B = 1; Cin = 0;
        #2 A = 1; B = 1; Cin = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, full_adder_tb);
    end

endmodule

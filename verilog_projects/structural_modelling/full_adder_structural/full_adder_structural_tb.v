module full_adder_structural_tb;

    reg a, b, cin;
    wire s, cout;

    full_adder_structural dut(a, b, cin, s, cout);

    initial begin
        $monitor("a=%0d, b=%0d, cin=%0d, s=%0d, cout=%0d", a, b, cin, s, cout);

        a = 0; b = 0; cin = 0;
        #2 a = 0; b = 0; cin = 1;
        #2 a = 0; b = 1; cin = 0;
        #2 a = 0; b = 1; cin = 1;
        #2 a = 1; b = 0; cin = 0;
        #2 a = 1; b = 0; cin = 1;
        #2 a = 1; b = 1; cin = 0;
        #2 a = 1; b = 1; cin = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, full_adder_structural_tb);
    end

endmodule

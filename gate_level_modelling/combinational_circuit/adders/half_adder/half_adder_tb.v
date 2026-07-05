module half_adder_tb;

    reg A, B;
    wire sum, carry;

    half_adder dut(A, B, sum, carry);

    initial begin
        $monitor("A=%0d, B=%0d, sum=%0d, carry=%0d", A, B, sum, carry);

        A = 0; B = 0;
        #2 A = 0; B = 1;
        #2 A = 1; B = 0;
        #2 A = 1; B = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, half_adder_tb);
    end

endmodule

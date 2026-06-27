module ripple_carry_adder4_structural_tb;

    reg [3:0] A, B;
    reg Cin;
    wire [3:0] Sum;
    wire Cout;

    ripple_carry_adder4_structural dut(A, B, Cin, Sum, Cout);

    initial begin
        $monitor("A=%04b, B=%04b, Cin=%0d, Cout=%0d, Sum=%04b", A, B, Cin, Cout, Sum);

        A = 4'b0000; B = 4'b0000; Cin = 0;
        #2 A = 4'b0001; B = 4'b0010; Cin = 0;
        #2 A = 4'b0101; B = 4'b0011; Cin = 0;
        #2 A = 4'b1001; B = 4'b0110; Cin = 0;
        #2 A = 4'b1111; B = 4'b0001; Cin = 0;
        #2 A = 4'b1111; B = 4'b1111; Cin = 1;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, ripple_carry_adder4_structural_tb);
    end

endmodule

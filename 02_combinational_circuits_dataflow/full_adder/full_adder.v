// Full Adder using dataflow modeling
module full_adder(A, B, Cin, sum, Cout);
    input A, B, Cin;
    output sum, Cout;
    assign sum = A ^ B ^ Cin;
    assign Cout = (A & B) | (A & Cin) | (B & Cin);
endmodule

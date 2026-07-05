// Gate-level Full Adder

module full_adder(A, B, Cin, sum, Cout);
    input A, B, Cin;
    output sum, Cout;

    wire w1, w2, w3;

    xor g1(sum, A, B, Cin);

    and g2(w1, A, B);
    and g3(w2, A, Cin);
    and g4(w3, B, Cin);

    or  g5(Cout, w1, w2, w3);

endmodule

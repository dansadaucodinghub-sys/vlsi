// Gate-level Full Subtractor

module full_subtractor(A, B, Bin, diff, Bout);
    input A, B, Bin;
    output diff, Bout;

    wire nA;
    wire w1, w2, w3;

    xor g1(diff, A, B, Bin);

    not g2(nA, A);

    and g3(w1, nA, B);
    and g4(w2, nA, Bin);
    and g5(w3, B, Bin);

    or  g6(Bout, w1, w2, w3);

endmodule

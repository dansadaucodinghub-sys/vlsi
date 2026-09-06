// Gate-level 1-bit Comparator

module comparator1bit(A, B, gt, eq, lt);
    input A, B;
    output gt, eq, lt;

    wire nA, nB;

    not  g1(nA, A);
    not  g2(nB, B);

    and  g3(gt, A, nB);
    xnor g4(eq, A, B);
    and  g5(lt, nA, B);

endmodule

// Gate-level Half Subtractor

module half_subtractor(A, B, diff, borrow);
    input A, B;
    output diff, borrow;

    wire nA;

    xor g1(diff, A, B);
    not g2(nA, A);
    and g3(borrow, nA, B);

endmodule

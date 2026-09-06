// Gate-level 2-bit Comparator

module comparator2bit(A, B, gt, eq, lt);
    input [1:0] A, B;
    output gt, eq, lt;

    wire nA1, nA0, nB1, nB0;
    wire eq1, eq0;
    wire gt_msb, gt_lsb;
    wire lt_msb, lt_lsb;

    not g1(nA1, A[1]);
    not g2(nA0, A[0]);
    not g3(nB1, B[1]);
    not g4(nB0, B[0]);

    xnor g5(eq1, A[1], B[1]);
    xnor g6(eq0, A[0], B[0]);

    and g7(eq, eq1, eq0);

    and g8(gt_msb, A[1], nB1);
    and g9(gt_lsb, eq1, A[0], nB0);
    or  g10(gt, gt_msb, gt_lsb);

    and g11(lt_msb, nA1, B[1]);
    and g12(lt_lsb, eq1, nA0, B[0]);
    or  g13(lt, lt_msb, lt_lsb);

endmodule

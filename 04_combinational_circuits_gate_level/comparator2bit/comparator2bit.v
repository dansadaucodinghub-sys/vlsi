module comparator2bit(a, b, gt, eq, lt);
    input [1:0] a, b;
    output gt, eq, lt;

    wire na1, na0, nb1, nb0;
    wire eq1, eq0;
    wire gt_msb, gt_lsb;
    wire lt_msb, lt_lsb;

    not not1(na1, a[1]);
    not not2(na0, a[0]);
    not not3(nb1, b[1]);
    not not4(nb0, b[0]);

    xnor xnor1(eq1, a[1], b[1]);
    xnor xnor2(eq0, a[0], b[0]);

    and and1(gt_msb, a[1], nb1);
    and and2(gt_lsb, eq1, a[0], nb0);
    or  or1(gt, gt_msb, gt_lsb);

    and and3(lt_msb, na1, b[1]);
    and and4(lt_lsb, eq1, na0, b[0]);
    or  or2(lt, lt_msb, lt_lsb);

    and and5(eq, eq1, eq0);

endmodule

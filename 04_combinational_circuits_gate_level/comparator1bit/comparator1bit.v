module comparator1bit(a, b, gt, eq, lt);
    input a, b;
    output gt, eq, lt;

    wire na, nb;

    not  not1(na, a);
    not  not2(nb, b);
    and  and1(gt, a, nb);
    xnor xnor1(eq, a, b);
    and  and2(lt, na, b);

endmodule

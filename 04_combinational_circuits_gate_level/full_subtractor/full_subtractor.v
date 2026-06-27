module full_subtractor(a, b, bin, d, bout);
    input a, b, bin;
    output d, bout;

    wire w1, w2, w3, nw1, na;

    xor xor1(w1, a, b);
    xor xor2(d, w1, bin);

    not not1(nw1, w1);
    not not2(na, a);

    and and1(w2, na, b);
    and and2(w3, nw1, bin);

    or or1(bout, w2, w3);

endmodule

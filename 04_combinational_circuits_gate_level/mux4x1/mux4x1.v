module mux4x1(i0, i1, i2, i3, s1, s0, y);
    input i0, i1, i2, i3, s1, s0;
    output y;

    wire ns1, ns0;
    wire w0, w1, w2, w3;

    not not1(ns1, s1);
    not not2(ns0, s0);

    and and1(w0, i0, ns1, ns0);
    and and2(w1, i1, ns1, s0);
    and and3(w2, i2, s1, ns0);
    and and4(w3, i3, s1, s0);

    or or1(y, w0, w1, w2, w3);

endmodule

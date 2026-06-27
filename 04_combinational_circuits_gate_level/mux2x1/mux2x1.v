module mux2x1(i0, i1, sel, y);
    input i0, i1, sel;
    output y;

    wire nsel, w1, w2;

    not not1(nsel, sel);
    and and1(w1, i0, nsel);
    and and2(w2, i1, sel);
    or  or1(y, w1, w2);

endmodule

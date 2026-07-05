// Gate-level 2x1 MUX

module mux2x1(i0, i1, sel, y);
    input i0, i1, sel;
    output y;

    wire nsel;
    wire w0, w1;

    not g1(nsel, sel);
    and g2(w0, i0, nsel);
    and g3(w1, i1, sel);
    or  g4(y, w0, w1);

endmodule

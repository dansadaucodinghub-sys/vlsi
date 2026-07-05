// Gate-level 4x1 MUX

module mux4x1(i0, i1, i2, i3, sel, y);
    input i0, i1, i2, i3;
    input [1:0] sel;
    output y;

    wire nsel0, nsel1;
    wire w0, w1, w2, w3;

    not g1(nsel0, sel[0]);
    not g2(nsel1, sel[1]);

    and g3(w0, i0, nsel1, nsel0);   // sel = 00
    and g4(w1, i1, nsel1, sel[0]);  // sel = 01
    and g5(w2, i2, sel[1], nsel0);  // sel = 10
    and g6(w3, i3, sel[1], sel[0]); // sel = 11

    or  g7(y, w0, w1, w2, w3);

endmodule

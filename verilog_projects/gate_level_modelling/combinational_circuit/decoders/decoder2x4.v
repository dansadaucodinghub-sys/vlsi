// Gate-level 2x4 Decoder

module decoder2x4(a1, a0, y);
    input a1, a0;
    output [3:0] y;

    wire na1, na0;

    not g1(na1, a1);
    not g2(na0, a0);

    and g3(y[0], na1, na0); // a1a0 = 00
    and g4(y[1], na1, a0);  // a1a0 = 01
    and g5(y[2], a1, na0);  // a1a0 = 10
    and g6(y[3], a1, a0);   // a1a0 = 11

endmodule

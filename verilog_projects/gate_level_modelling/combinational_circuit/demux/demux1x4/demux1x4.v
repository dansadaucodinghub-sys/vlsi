// Gate-level 1x4 DEMUX

module demux1x4(d, sel, y);
    input d;
    input [1:0] sel;
    output [3:0] y;

    wire nsel0, nsel1;

    not g1(nsel0, sel[0]);
    not g2(nsel1, sel[1]);

    and g3(y[0], d, nsel1, nsel0);   // sel = 00
    and g4(y[1], d, nsel1, sel[0]);  // sel = 01
    and g5(y[2], d, sel[1], nsel0);  // sel = 10
    and g6(y[3], d, sel[1], sel[0]); // sel = 11

endmodule

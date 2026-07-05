// Gate-level 4x2 Encoder
// Assumption: only one input is active at a time.
// i0 active -> y = 00
// i1 active -> y = 01
// i2 active -> y = 10
// i3 active -> y = 11

module encoder4x2(i0, i1, i2, i3, y);
    input i0, i1, i2, i3;
    output [1:0] y;

    or g1(y[1], i2, i3);
    or g2(y[0], i1, i3);

endmodule

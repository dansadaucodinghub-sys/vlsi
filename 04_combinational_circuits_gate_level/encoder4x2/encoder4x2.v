module encoder4x2(i0, i1, i2, i3, y1, y0);
    input i0, i1, i2, i3;
    output y1, y0;

    or or1(y1, i2, i3);
    or or2(y0, i1, i3);

endmodule

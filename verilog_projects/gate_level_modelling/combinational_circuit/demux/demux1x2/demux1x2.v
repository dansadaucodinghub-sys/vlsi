// Gate-level 1x2 DEMUX

module demux1x2(d, sel, y0, y1);
    input d, sel;
    output y0, y1;

    wire nsel;

    not g1(nsel, sel);
    and g2(y0, d, nsel);
    and g3(y1, d, sel);

endmodule

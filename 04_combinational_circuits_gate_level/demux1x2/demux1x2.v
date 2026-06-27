module demux1x2(d, sel, y0, y1);
    input d, sel;
    output y0, y1;

    wire nsel;

    not not1(nsel, sel);
    and and1(y0, d, nsel);
    and and2(y1, d, sel);

endmodule

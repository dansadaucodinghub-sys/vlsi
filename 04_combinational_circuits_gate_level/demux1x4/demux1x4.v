module demux1x4(d, s1, s0, y0, y1, y2, y3);
    input d, s1, s0;
    output y0, y1, y2, y3;

    wire ns1, ns0;

    not not1(ns1, s1);
    not not2(ns0, s0);

    and and1(y0, d, ns1, ns0);
    and and2(y1, d, ns1, s0);
    and and3(y2, d, s1, ns0);
    and and4(y3, d, s1, s0);

endmodule

module decoder2x4(a1, a0, y);
    input a1, a0;
    output [3:0] y;

    wire na1, na0;

    not not1(na1, a1);
    not not2(na0, a0);

    and and1(y[0], na1, na0);
    and and2(y[1], na1, a0);
    and and3(y[2], a1, na0);
    and and4(y[3], a1, a0);

endmodule

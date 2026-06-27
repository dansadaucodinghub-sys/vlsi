module half_subtractor(a, b, d, borrow);
    input a, b;
    output d, borrow;

    wire na;

    xor xor1(d, a, b);
    not not1(na, a);
    and and1(borrow, na, b);

endmodule

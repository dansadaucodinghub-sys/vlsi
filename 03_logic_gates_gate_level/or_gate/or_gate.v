// OR gate using gate-level modeling

module or_gate(a, b, y);
    input a, b;
    output y;

    or or1(y, a, b);

endmodule

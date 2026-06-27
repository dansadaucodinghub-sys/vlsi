// XNOR gate using gate-level modeling

module xnor_gate(a, b, y);
    input a, b;
    output y;

    xnor xnor1(y, a, b);

endmodule

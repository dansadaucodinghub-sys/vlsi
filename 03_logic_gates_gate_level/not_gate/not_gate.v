// NOT gate using gate-level modeling

module not_gate(a, y);
    input a;
    output y;

    not not1(y, a);

endmodule

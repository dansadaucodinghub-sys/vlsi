// NOR gate using gate-level modeling

module nor_gate(a, b, y);
    input a, b;
    output y;

    nor nor1(y, a, b);

endmodule

// XOR gate using gate-level modeling

module xor_gate(a, b, y);
    input a, b;
    output y;

    xor xor1(y, a, b);

endmodule

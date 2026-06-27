// XOR gate using dataflow modeling

module xor_gate(a, b, y);
    input a, b;
    output y;

    assign y = a ^ b;

endmodule

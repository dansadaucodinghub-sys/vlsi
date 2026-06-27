// XNOR gate using dataflow modeling

module xnor_gate(a, b, y);
    input a, b;
    output y;

    assign y = ~(a ^ b);

endmodule

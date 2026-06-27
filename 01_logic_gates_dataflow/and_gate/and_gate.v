// AND gate using dataflow modeling

module and_gate(a, b, y);
    input a, b;
    output y;

    assign y = a & b;

endmodule

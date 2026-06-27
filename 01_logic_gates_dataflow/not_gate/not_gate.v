// NOT gate using dataflow modeling

module not_gate(a, y);
    input a;
    output y;

    assign y = ~a;

endmodule

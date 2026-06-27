// 1-bit Comparator using dataflow modeling
module comparator1bit(A, B, gt, eq, lt);
    input A, B;
    output gt, eq, lt;
    assign gt = A & ~B;
    assign eq = ~(A ^ B);
    assign lt = ~A & B;
endmodule

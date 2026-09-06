// 2-bit Comparator using dataflow modeling
module comparator2bit(A, B, gt, eq, lt);
    input [1:0] A, B;
    output gt, eq, lt;
    assign gt = (A > B)  ? 1'b1 : 1'b0;
    assign eq = (A == B) ? 1'b1 : 1'b0;
    assign lt = (A < B)  ? 1'b1 : 1'b0;
endmodule

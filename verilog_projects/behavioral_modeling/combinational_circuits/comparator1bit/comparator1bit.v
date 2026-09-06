module comparator1bit_behavioral(a, b, gt, eq, lt);
    input a, b;
    output reg gt, eq, lt;

    always @(*) begin
        gt = 1'b0;
        eq = 1'b0;
        lt = 1'b0;

        if (a > b)
            gt = 1'b1;
        else if (a == b)
            eq = 1'b1;
        else
            lt = 1'b1;
    end
endmodule

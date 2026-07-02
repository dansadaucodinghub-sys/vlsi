module half_subtractor_behavioral(a, b, d, borrow);
    input a, b;
    output reg d, borrow;

    always @(*) begin
        d = a ^ b;
        borrow = (~a) & b;
    end
endmodule

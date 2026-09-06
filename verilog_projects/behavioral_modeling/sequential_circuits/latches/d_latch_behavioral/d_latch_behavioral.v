module d_latch_behavioral(en, rst, d, q);
    input en, rst, d;
    output reg q;

    always @(*) begin
        if (rst)
            q = 1'b0;
        else if (en)
            q = d;
        else
            q = q;
    end
endmodule

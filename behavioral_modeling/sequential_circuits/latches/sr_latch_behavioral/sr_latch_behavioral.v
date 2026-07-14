module sr_latch_behavioral(en, rst, s, r, q);
    input en, rst, s, r;
    output reg q;

    always @(*) begin
        if (rst)
            q = 1'b0;
        else if (en) begin
            case ({s, r})
                2'b00: q = q;
                2'b01: q = 1'b0;
                2'b10: q = 1'b1;
                2'b11: q = 1'bx;
            endcase
        end
        else
            q = q;
    end
endmodule

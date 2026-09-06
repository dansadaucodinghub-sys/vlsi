module full_subtractor_behavioral(a, b, bin, d, bout);
    input a, b, bin;
    output reg d, bout;

    always @(*) begin
        d = a ^ b ^ bin;
        bout = ((~a) & b) | ((~a) & bin) | (b & bin);
    end
endmodule

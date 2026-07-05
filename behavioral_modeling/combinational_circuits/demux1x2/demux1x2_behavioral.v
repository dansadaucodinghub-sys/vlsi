module demux1x2_behavioral(d, sel, y0, y1);
    input d, sel;
    output reg y0, y1;

    always @(*) begin
        y0 = 1'b0;
        y1 = 1'b0;

        if (sel == 1'b0)
            y0 = d;
        else
            y1 = d;
    end
endmodule

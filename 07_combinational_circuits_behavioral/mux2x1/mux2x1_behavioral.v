module mux2x1_behavioral(i0, i1, sel, y);
    input i0, i1, sel;
    output reg y;

    always @(*) begin
        if (sel == 1'b0)
            y = i0;
        else
            y = i1;
    end
endmodule

// 2x1 MUX using dataflow modeling
module mux2x1(i0, i1, sel, y);
    input i0, i1, sel;
    output y;
    assign y = sel ? i1 : i0;
endmodule

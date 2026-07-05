// 4x1 MUX using structural modeling
// Constructed using three 2x1 MUX cells.

module mux2x1_cell(i0, i1, sel, y);
    input i0, i1, sel;
    output y;

    assign y = sel ? i1 : i0;

endmodule

module mux4x1_structural(i0, i1, i2, i3, sel, y);
    input i0, i1, i2, i3;
    input [1:0] sel;
    output y;

    wire w1, w2;

    mux2x1_cell mux1(i0, i1, sel[0], w1);
    mux2x1_cell mux2(i2, i3, sel[0], w2);
    mux2x1_cell mux3(w1, w2, sel[1], y);

endmodule

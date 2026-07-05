// 1x4 DEMUX using structural modeling
// Constructed using three 1x2 DEMUX cells.

module demux1x2_cell(d, sel, y0, y1);
    input d, sel;
    output y0, y1;

    assign y0 = (sel == 1'b0) ? d : 1'b0;
    assign y1 = (sel == 1'b1) ? d : 1'b0;

endmodule

module demux1x4_structural(d, sel, y);
    input d;
    input [1:0] sel;
    output [3:0] y;

    wire w1, w2;

    demux1x2_cell demux1(d,  sel[1], w1, w2);
    demux1x2_cell demux2(w1, sel[0], y[0], y[1]);
    demux1x2_cell demux3(w2, sel[0], y[2], y[3]);

endmodule

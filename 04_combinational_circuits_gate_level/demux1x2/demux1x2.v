// 1x2 DEMUX using dataflow modeling
module demux1x2(d, sel, y0, y1);
    input d, sel;
    output y0, y1;
    assign y0 = (sel == 1'b0) ? d : 1'b0;
    assign y1 = (sel == 1'b1) ? d : 1'b0;
endmodule

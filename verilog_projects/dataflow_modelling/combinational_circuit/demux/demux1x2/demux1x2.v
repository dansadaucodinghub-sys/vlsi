module demux1x2(i, sel, y0, y1);
   input i, sel;
   output y0, y1;
    assign y0 = (sel == 1'b0) ? i : 1'b0;
    assign y1 = (sel == 1'b1) ? i : 1'b0;
endmodule

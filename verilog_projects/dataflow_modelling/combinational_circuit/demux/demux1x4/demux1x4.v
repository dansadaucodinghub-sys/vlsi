// 1x4 DEMUX using dataflow modeling
module demux1x4(d, sel, y);
    input d;
    input [1:0] sel;
    output [3:0] y;
    assign y = (sel == 2'b00) ? {3'b000, d} :
               (sel == 2'b01) ? {2'b00, d, 1'b0} :
               (sel == 2'b10) ? {1'b0, d, 2'b00} :
                                 {d, 3'b000};
endmodule

// 2x4 Decoder using dataflow modeling
module decoder2x4(a1, a0, y);
    input a1, a0;
    output [3:0] y;
    assign y = (a1 == 1'b0 && a0 == 1'b0) ? 4'b0001 :
               (a1 == 1'b0 && a0 == 1'b1) ? 4'b0010 :
               (a1 == 1'b1 && a0 == 1'b0) ? 4'b0100 :
                                              4'b1000;
endmodule

// 4x2 Encoder using dataflow modeling
// Assumption: only one input is active at a time.
module encoder4x2(i0, i1, i2, i3, y);
    input i0, i1, i2, i3;
    output [1:0] y;
    assign y = i0 ? 2'b00 :
               i1 ? 2'b01 :
               i2 ? 2'b10 :
               i3 ? 2'b11 :
                    2'b00;
endmodule

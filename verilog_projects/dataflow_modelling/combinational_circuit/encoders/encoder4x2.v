module encoder4x2 (
    input  wire i0,
    input  wire i1,
    input  wire i2,
    input  wire i3,
    output wire [1:0] y
);
assign y = i0 ? 2'b00 :
               i1 ? 2'b01 :
               i2 ? 2'b10 :
               i3 ? 2'b11 :
                    2'b00;
endmodule

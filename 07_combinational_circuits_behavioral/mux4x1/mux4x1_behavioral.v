module mux4x1_behavioral(i0, i1, i2, i3, s1, s0, y);
    input i0, i1, i2, i3, s1, s0;
    output reg y;

    always @(*) begin
        case ({s1, s0})
            2'b00: y = i0;
            2'b01: y = i1;
            2'b10: y = i2;
            2'b11: y = i3;
            default: y = 1'b0;
        endcase
    end
endmodule

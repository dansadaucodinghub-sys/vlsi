module mux4x1_tb;

    reg i0, i1, i2, i3;
    reg [1:0] sel;
    wire y;

    mux4x1 dut(i0, i1, i2, i3, sel, y);

    initial begin
        $monitor("i0=%0d, i1=%0d, i2=%0d, i3=%0d, sel=%02b, y=%0d",
                 i0, i1, i2, i3, sel, y);

        i0 = 1; i1 = 0; i2 = 0; i3 = 0; sel = 2'b00;
        #2 i0 = 0; i1 = 1; i2 = 0; i3 = 0; sel = 2'b01;
        #2 i0 = 0; i1 = 0; i2 = 1; i3 = 0; sel = 2'b10;
        #2 i0 = 0; i1 = 0; i2 = 0; i3 = 1; sel = 2'b11;
        #2 i0 = 1; i1 = 0; i2 = 1; i3 = 0; sel = 2'b10;
        #2 i0 = 1; i1 = 1; i2 = 0; i3 = 1; sel = 2'b00;

        #2 $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, mux4x1_tb);
    end

endmodule

module demux1x4_tb;
    reg d;
    reg [1:0] sel;
    wire [3:0] y;
    demux1x4 dut(d, sel, y);
    initial begin
        $monitor("d=%0d, sel=%02b, y=%04b", d, sel, y);
        d = 0; sel = 2'b00;
        #2 d = 0; sel = 2'b01;
        #2 d = 1; sel = 2'b00;
        #2 d = 1; sel = 2'b01;
        #2 d = 1; sel = 2'b10;
        #2 d = 1; sel = 2'b11;
        #2 $finish;
    end
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, demux1x4_tb);
    end
endmodule

module encoder4x2_behavioral_tb;
    reg [3:0] i;
    wire [1:0] y;

    encoder4x2_behavioral dut(i, y);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, encoder4x2_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t i=%b y=%b", $time, i, y);

        i=4'b0001; #2;
        i=4'b0010; #2;
        i=4'b0100; #2;
        i=4'b1000; #2;

        $finish;
    end
endmodule

module comparator2bit_behavioral_tb;
    reg [1:0] a, b;
    wire gt, eq, lt;

    comparator2bit_behavioral dut(a, b, gt, eq, lt);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, comparator2bit_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b gt=%b eq=%b lt=%b", $time, a, b, gt, eq, lt);

        a=2'b00; b=2'b00; #2;
        a=2'b00; b=2'b01; #2;
        a=2'b10; b=2'b01; #2;
        a=2'b11; b=2'b11; #2;

        $finish;
    end
endmodule

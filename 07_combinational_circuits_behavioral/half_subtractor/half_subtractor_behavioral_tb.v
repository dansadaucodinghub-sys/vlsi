module half_subtractor_behavioral_tb;
    reg a, b;
    wire d, borrow;

    half_subtractor_behavioral dut(a, b, d, borrow);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, half_subtractor_behavioral_tb);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b d=%b borrow=%b", $time, a, b, d, borrow);

        a=0; b=0; #2;
        a=0; b=1; #2;
        a=1; b=0; #2;
        a=1; b=1; #2;

        $finish;
    end
endmodule

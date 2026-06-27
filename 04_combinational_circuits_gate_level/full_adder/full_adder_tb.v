module full_adder_tb;
    reg a, b, cin;
    wire s, cout;

    full_adder dut(a, b, cin, s, cout);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, full_adder_tb);
    end

    initial begin
        $monitor("time=%0t a=%b b=%b cin=%b s=%b cout=%b", $time, a, b, cin, s, cout);
        a=0; b=0; cin=0; #2;
        a=0; b=0; cin=1; #2;
        a=0; b=1; cin=0; #2;
        a=0; b=1; cin=1; #2;
        a=1; b=0; cin=0; #2;
        a=1; b=0; cin=1; #2;
        a=1; b=1; cin=0; #2;
        a=1; b=1; cin=1; #2;
        $finish;
    end
endmodule

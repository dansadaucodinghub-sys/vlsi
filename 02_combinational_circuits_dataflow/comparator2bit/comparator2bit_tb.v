module comparator2bit_tb;
    reg [1:0] A, B;
    wire gt, eq, lt;
    comparator2bit dut(A, B, gt, eq, lt);
    initial begin
        $monitor("A=%02b, B=%02b, gt=%0d, eq=%0d, lt=%0d", A, B, gt, eq, lt);
        A = 2'b00; B = 2'b00;
        #2 A = 2'b00; B = 2'b01;
        #2 A = 2'b01; B = 2'b00;
        #2 A = 2'b10; B = 2'b10;
        #2 A = 2'b11; B = 2'b01;
        #2 A = 2'b01; B = 2'b11;
        #2 $finish;
    end
    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, comparator2bit_tb);
    end
endmodule

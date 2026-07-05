module shift_register4bit_behavioral_tb;
    reg clk, rst, serial_in;
    wire [3:0] q;

    shift_register4bit_behavioral dut(clk, rst, serial_in, q);

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, shift_register4bit_behavioral_tb);
    end

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b serial_in=%b q=%b", $time, clk, rst, serial_in, q);

        rst=1; serial_in=0; #3;
        rst=0; serial_in=1; #2;
        serial_in=0; #2;
        serial_in=1; #2;
        serial_in=1; #2;
        serial_in=0; #4;

        $finish;
    end
endmodule

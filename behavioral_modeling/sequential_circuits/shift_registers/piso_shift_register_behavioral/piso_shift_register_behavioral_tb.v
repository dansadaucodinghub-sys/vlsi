module piso_shift_register_behavioral_tb;
    reg clk, rst, load, si;
    reg [3:0] p;
    wire so;

    piso_shift_register_behavioral dut(clk, rst, load, p, si, so);

    initial begin
        clk = 0;
        forever #1 clk = ~clk;
    end

    initial begin
        $monitor("time=%0t clk=%b rst=%b load=%b p=%b si=%b so=%b", $time, clk, rst, load, p, si, so);

        rst=1; load=0; p=4'b0000; si=0; #3;
        rst=0; load=1; p=4'b1011; si=0; #2;
        load=0; si=0; #2;
        si=0; #2;
        si=0; #2;
        si=0; #2;
        load=1; p=4'b1100; #2;
        load=0; si=1; #6;

        $finish;
    end

    initial begin
        $fsdbDumpfile("dump.fsdb");
        $fsdbDumpvars(0, piso_shift_register_behavioral_tb);
    end
endmodule

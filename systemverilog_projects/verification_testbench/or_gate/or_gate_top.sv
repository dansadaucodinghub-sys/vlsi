// Top module - builds the clock, the interface, the DUT and runs the test.
module top;

  bit clk;

  // clock generator
  initial clk = 0;
  always #1 clk = ~clk;

  // interface
  or_gate_if intf(clk);

  // DUT connected through the interface signals
  or_gate dut(.a(intf.a), .b(intf.b), .y(intf.y));

  // run the test
  initial begin
    test t;
    t = new(intf, 10);   // 10 random transactions
    t.run();
    #5 $finish;
  end

  // waveform dump (optional)
  initial begin
    $fsdbDumpfile("dump.fsdb");
    $fsdbDumpvars(0, top);
  end

endmodule

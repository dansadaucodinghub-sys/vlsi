// Top module - builds the clock, the interface, the DUT and runs the test.
module top;

  bit clk;

  // clock generator
  initial clk = 0;
  always #1 clk = ~clk;

  // interface
  mux2x1_if intf(clk);

  // DUT connected through the interface signals
  mux2x1 dut(.i0(intf.i0), .i1(intf.i1), .sel(intf.sel), .y(intf.y));

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

// Top module - builds the clock, the interface, the DUT and runs the test.
module top;

  bit clk;

  // clock generator
  initial clk = 0;
  always #1 clk = ~clk;

  // interface
  demux1x2_if intf(clk);

  // DUT connected through the interface signals
  demux1x2 dut(.i(intf.i), .sel(intf.sel), .y0(intf.y0), .y1(intf.y1));

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

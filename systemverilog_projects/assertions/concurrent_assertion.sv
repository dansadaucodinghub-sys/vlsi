// Concurrent assertion
// A concurrent assertion checks a property over clock cycles.
// Property: whenever 'req' is high, 'ack' must come within the next 2 cycles.

module concurrent_assertion;

  bit clk, req, ack;

  // clock
  always #1 clk = ~clk;

  // the property and the assertion that checks it
  property req_ack;
    @(posedge clk) req |-> ##[1:2] ack;
  endproperty

  assert property (req_ack)
    $display("time=%0t PASS: ack followed req", $time);
  else
    $display("time=%0t FAIL: ack did not follow req", $time);

  initial begin
    clk = 0; req = 0; ack = 0;

    @(posedge clk) req = 1;
    @(posedge clk) req = 0; ack = 1;   // ack within 2 cycles -> pass
    @(posedge clk) ack = 0;

    #5 $finish;
  end

endmodule

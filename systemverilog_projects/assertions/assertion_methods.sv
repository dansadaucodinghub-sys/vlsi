// Assertion built-in functions
// The functions below are commonly used with assertions.
//   pure system functions : $onehot, $onehot0, $countones, $isunknown
//   sampled-value functions: $rose, $fell, $stable, $past
//
// The pure functions are shown in an ordinary procedural block.
// The sampled-value functions are shown with 'cover property', whose
// action block only runs when the property actually matches.

module assertion_methods;

  bit clk;
  bit sig;
  bit [3:0] bus;

  always #1 clk = ~clk;

  initial begin
    clk = 0; sig = 0; bus = 4'b0000;
    #2 sig = 1; bus = 4'b0010;   // one-hot
    #2 sig = 0; bus = 4'b0110;
    #2          bus = 4'b1000;   // one-hot
    #4 $finish;
  end

  // ----- pure system functions (legal anywhere) -----
  always @(posedge clk) begin
    $display("time=%0t sig=%b bus=%b | countones=%0d onehot=%b onehot0=%b isunknown=%b",
             $time, sig, bus,
             $countones(bus), $onehot(bus), $onehot0(bus), $isunknown(bus));
  end

  // ----- sampled-value functions (shown with cover property) -----
  // $rose : matches when sig goes 0 -> 1
  cover property (@(posedge clk) $rose(sig))
    $display("time=%0t  $rose(sig): sig went 0 -> 1", $time);

  // $fell : matches when sig goes 1 -> 0
  cover property (@(posedge clk) $fell(sig))
    $display("time=%0t  $fell(sig): sig went 1 -> 0", $time);

  // $stable : matches when bus did not change since last clock
  cover property (@(posedge clk) $stable(bus))
    $display("time=%0t  $stable(bus): bus unchanged", $time);

  // $past : the value of sig one clock earlier
  cover property (@(posedge clk) (sig != $past(sig)))
    $display("time=%0t  $past: sig changed from %b to %b", $time, $past(sig), sig);

endmodule

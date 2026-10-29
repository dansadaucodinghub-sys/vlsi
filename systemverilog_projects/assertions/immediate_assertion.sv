// Immediate assertion
// An immediate assertion is checked right away, like an if-statement,
// inside procedural code.

module immediate_assertion;

  int a, b;

  initial begin
    a = 5;
    b = 5;

    // pass case
    assert (a == b)
      $display("PASS: a and b are equal");
    else
      $display("FAIL: a and b are not equal");

    b = 9;

    // fail case shows the else branch
    assert (a == b)
      $display("PASS: a and b are equal");
    else
      $display("FAIL: a=%0d b=%0d are not equal", a, b);
  end

endmodule

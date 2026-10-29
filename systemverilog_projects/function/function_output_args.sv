// function with output arguments
// Besides its return value, a function can also send results back
// through output arguments.

module function_output_args;

  // returns the sum, and also gives back the difference through an output
  function int add_and_sub(input int a, input int b, output int diff);
    diff = a - b;
    return a + b;
  endfunction

  initial begin
    int sum, difference;
    sum = add_and_sub(20, 8, difference);
    $display("Sum = %0d, Difference = %0d", sum, difference);
  end

endmodule

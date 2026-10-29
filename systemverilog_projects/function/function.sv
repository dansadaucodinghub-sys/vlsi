// function that returns a value
// A function runs in zero simulation time and returns one value.

module function_return;

  // returns the sum of two numbers
  function int add(input int a, input int b);
    add = a + b;
  endfunction

  initial begin
    int result;
    result = add(12, 8);
    $display("Sum = %0d", result);
  end

endmodule

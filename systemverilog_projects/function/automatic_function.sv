// automatic function (recursion)
// A function must be 'automatic' to call itself, so each call keeps its
// own copy of the variables.

module automatic_function;

  function automatic int factorial(input int n);
    if (n <= 1)
      factorial = 1;
    else
      factorial = n * factorial(n - 1);   // recursive call
  endfunction

  initial begin
    for (int i = 1; i <= 5; i++)
      $display("factorial(%0d) = %0d", i, factorial(i));
  end

endmodule

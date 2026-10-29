// void function
// A void function returns nothing; it is used for its action, like a display.

module void_function;

  function void show(input string name, input int age);
    $display("Name = %s, Age = %0d", name, age);
  endfunction

  initial begin
    show("Dansadau", 25);
  end

endmodule

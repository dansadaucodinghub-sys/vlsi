// Abstraction
// An abstract (virtual) class says 'what' must be done but not 'how'.
// It cannot be created on its own; a child class fills in the details.

virtual class shape;                    // abstract class
  pure virtual function real area();    // no body, must be overridden
endclass

class circle extends shape;
  real radius;

  function real area();
    return 3.14 * radius * radius;
  endfunction
endclass

module abstraction;
  initial begin
    circle c;
    c = new();
    c.radius = 5.0;
    $display("Area of circle = %0.2f", c.area());
  end
endmodule

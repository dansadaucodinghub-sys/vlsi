// Polymorphism
// With 'virtual' methods, a parent handle pointing to a child object
// calls the child's version of the method at run time.

class shape;
  virtual function void draw();
    $display("Drawing a shape");
  endfunction
endclass

class square extends shape;
  function void draw();
    $display("Drawing a square");
  endfunction
endclass

class triangle extends shape;
  function void draw();
    $display("Drawing a triangle");
  endfunction
endclass

module polymorphism;
  initial begin
    shape    s;            // parent handle
    square   sq = new();
    triangle tr = new();

    s = sq;
    s.draw();   // calls square's draw()

    s = tr;
    s.draw();   // calls triangle's draw()
  end
endmodule

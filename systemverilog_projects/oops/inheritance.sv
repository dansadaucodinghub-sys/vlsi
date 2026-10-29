// Inheritance
// A child class 'extends' a parent class and reuses its properties and methods.

class animal;                 // base class
  string name;

  function void eat();
    $display("%s is eating", name);
  endfunction
endclass

class dog extends animal;     // derived class
  function void bark();
    $display("%s is barking", name);   // 'name' comes from the parent
  endfunction
endclass

module inheritance;
  initial begin
    dog d;
    d = new();
    d.name = "Bingo";
    d.eat();    // inherited from animal
    d.bark();   // its own method
  end
endmodule

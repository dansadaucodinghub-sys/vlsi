// Casting
// Casting changes the type of a value or a handle.

class animal;
  string name;
endclass

class dog extends animal;
  function void bark();
    $display("%s says woof", name);
  endfunction
endclass

module casting;
  initial begin

    // 1) static cast: change a value's type using type'(value)
    int  i;
    real r;
    r = 7.9;
    i = int'(r);   // real -> int
    $display("static cast: real %0.1f becomes int %0d", r, i);

    // 2) dynamic cast ($cast): safely cast a parent handle to a child handle
    begin
      animal a;
      dog    d;

      d = new();
      d.name = "Bingo";
      a = d;               // upcast (child -> parent) is automatic

      if ($cast(d, a))     // downcast must use $cast and is checked
        d.bark();
      else
        $display("cast failed");
    end
  end
endmodule

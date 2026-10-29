// shallow copy
// 'new obj' makes a shallow copy: the simple fields are copied, but a
// nested object handle is shared - both handles point to the same object.

class address;
  int city_code;
endclass

class packet;
  int id;
  address addr;   // handle to another object

  function new();
    addr = new();
  endfunction
endclass

module shallow_copy;
  initial begin
    packet p1, p2;

    p1 = new();
    p1.id = 1;
    p1.addr.city_code = 100;

    // shallow copy
    p2 = new p1;

    // changing the nested object through p2 also changes p1,
    // because both share the same 'addr' object
    p2.addr.city_code = 999;

    $display("p1.id = %0d, p1.addr.city_code = %0d", p1.id, p1.addr.city_code);
    $display("p2.id = %0d, p2.addr.city_code = %0d", p2.id, p2.addr.city_code);
    $display("Both city_code are the same -> the nested object is shared");
  end
endmodule

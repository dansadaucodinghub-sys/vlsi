// deep copy
// A deep copy also copies the nested objects, so the two packets are
// completely independent of each other.

class address;
  int city_code;

  // a copy function for the nested object
  function address copy();
    copy = new();
    copy.city_code = this.city_code;
  endfunction
endclass

class packet;
  int id;
  address addr;

  function new();
    addr = new();
  endfunction

  // deep copy: build a brand new nested object instead of sharing it
  function packet copy();
    copy = new();
    copy.id   = this.id;
    copy.addr = this.addr.copy();
  endfunction
endclass

module deep_copy;
  initial begin
    packet p1, p2;

    p1 = new();
    p1.id = 1;
    p1.addr.city_code = 100;

    // deep copy
    p2 = p1.copy();

    // changing p2's nested object does NOT affect p1
    p2.addr.city_code = 999;

    $display("p1.id = %0d, p1.addr.city_code = %0d", p1.id, p1.addr.city_code);
    $display("p2.id = %0d, p2.addr.city_code = %0d", p2.id, p2.addr.city_code);
    $display("The city_code are different -> the objects are independent");
  end
endmodule

// unique constraint
// The 'unique' constraint forces every element of the array to be different.

class packet;

  rand bit [3:0] values[5];

  // all five values must be different from each other
  constraint unique_c { unique {values}; }

endclass

module unique_constraint;
  initial begin
    packet pkt;
    pkt = new();
    repeat (5) begin
      pkt.randomize();
      $display("values = %p", pkt.values);
    end
  end
endmodule

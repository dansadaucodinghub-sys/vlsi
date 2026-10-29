// iterative constraint (foreach)
// 'foreach' applies a rule to every element of an array.

class packet;

  rand bit [7:0] data[5];

  // every element is less than 50, and each one is bigger than the one before
  constraint data_c {
    foreach (data[i]) {
      data[i] < 50;
      if (i > 0)
        data[i] > data[i-1];
    }
  }

endclass

module iterative_constraint;
  initial begin
    packet pkt;
    pkt = new();
    repeat (5) begin
      pkt.randomize();
      $display("data = %p", pkt.data);
    end
  end
endmodule

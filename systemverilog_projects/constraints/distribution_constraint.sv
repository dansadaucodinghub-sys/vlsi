// distribution constraint (dist)
// The 'dist' operator gives each value a weight, so some values are
// chosen more often than others.

class packet;

  rand bit [3:0] mode;

  // 0 is the most likely, then 1, then 2
  constraint mode_c {
    mode dist {
      0 := 60,
      1 := 30,
      2 := 10
    };
  }

endclass

module distribution_constraint;
  initial begin
    packet pkt;
    pkt = new();
    repeat (10) begin
      pkt.randomize();
      $display("mode = %0d", pkt.mode);
    end
  end
endmodule

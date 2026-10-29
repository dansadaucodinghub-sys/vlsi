// Functional coverage
// A covergroup records which values and combinations were actually hit
// during the test, so we know how much of the design was exercised.

class packet;
  rand bit [1:0] mode;
  rand bit [1:0] size;
endclass

module coverage;

  packet pkt;

  // sampled values for the covergroup
  bit [1:0] mode, size;

  covergroup cg;
    // each coverpoint tracks the values seen on a variable
    cp_mode : coverpoint mode {
      bins low  = {0};
      bins mid  = {1};
      bins high = {[2:3]};
    }
    cp_size : coverpoint size;

    // cross coverage tracks the combinations of the two
    cross cp_mode, cp_size;
  endgroup

  cg cov = new();

  initial begin
    pkt = new();
    repeat (20) begin
      pkt.randomize();
      mode = pkt.mode;
      size = pkt.size;
      cov.sample();          // record this combination
    end
    $display("Coverage = %0.2f %%", cov.get_coverage());
  end

endmodule

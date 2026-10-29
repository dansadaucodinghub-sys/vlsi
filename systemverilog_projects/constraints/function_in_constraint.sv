// function inside a constraint
// A constraint can call a function to help decide the legal values.

class packet;

  rand bit [7:0] length;
  rand bit [7:0] data;

  // returns the maximum allowed data for a given length
  function bit [7:0] max_data(bit [7:0] len);
    max_data = len * 2;
  endfunction

  // the constraint uses the function to set the upper limit of data
  constraint data_c {
    length inside {[1:10]};
    data <= max_data(length);
  }

endclass

module function_in_constraint;
  initial begin
    packet pkt;
    pkt = new();
    repeat (5) begin
      pkt.randomize();
      $display("length = %0d, data = %0d", pkt.length, pkt.data);
    end
  end
endmodule

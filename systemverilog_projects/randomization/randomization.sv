module rand_randc;

  class packet;

    // rand generates a random value
    rand bit [3:0] data;

    // randc generates random values without repeating
    // until all possible values have been used
    randc bit [3:0] address;

  endclass


  initial begin

    packet pkt;

    // Create the packet object
    pkt = new();

    // Generate random values several times
    repeat (5) begin

      pkt.randomize();

      $display("data = %0d, address = %0d",
                pkt.data, pkt.address);

    end

  end

endmodule

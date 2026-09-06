module randomize_and_mode;

  class packet;

    // variables that can be randomized
    rand int data;
    rand int address;

  endclass


  initial begin

    packet pkt;

    // Create the object
    pkt = new();


    // Enable randomization for data
    pkt.data.rand_mode(1);

    // Enable randomization for address
    pkt.address.rand_mode(1);


    // Generate random values
    pkt.randomize();

    $display("First randomization:");
    $display("data = %0d, address = %0d",
              pkt.data, pkt.address);


    // Disable randomization for data
    pkt.data.rand_mode(0);

    // Keep address randomization enabled
    pkt.address.rand_mode(1);


    // Generate random values again
    pkt.randomize();

    $display("Second randomization:");
    $display("data = %0d, address = %0d",
              pkt.data, pkt.address);

  end

endmodule

module nested_class_example;

  class packet; //outer class

    // Property of the outer class
    bit [31:0] data;

    class address; //inner class
      // Property of the inner class
      bit [31:0] addr;

      // Method of the inner class
      function void display_address();
        $display("Address = %h", addr);
      endfunction

    endclass

     function void display_data(); //outer class
        $display("Data = %h", data);
      endfunction

  endclass


  initial begin

    // Create object of the outer class
    packet pkt;

    // Create object of the inner class
    packet::address addr_obj;


    // Allocate memory for outer class
    pkt = new();

    // Allocate memory for inner class
    addr_obj = new();


    // Assign values
    pkt.data = 32'hABCD_1234;
    addr_obj.addr = 32'h0000_1000;


    // Call methods
    pkt.display_data();
    addr_obj.display_address();

  end

endmodule

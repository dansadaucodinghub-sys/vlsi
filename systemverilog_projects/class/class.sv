module class_example;

  class packet;
    bit [31:0] data; //property
    bit [31:0] addr; //property

    function void display(); //method
      $display("Address = %0d, Data = %0d", addr, data);
    endfunction

  endclass
  
  initial begin

    // Create an object of the packet class
    packet pkt;

    // Allocating memory for the object
    pkt = new();

    // Assign values to the properties
    pkt.addr = 30;
    pkt.data = 31;

    // Call the display() method
    pkt.display();

  end

endmodule

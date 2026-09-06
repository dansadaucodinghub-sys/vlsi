module task_;

  task display_data(
    input bit [31:0] addr,
    input bit [31:0] data
  );

    // Display the address and data
    $display("Address = %h", addr);
    $display("Data    = %h", data);

  endtask

  initial begin

    bit [31:0] address;
    bit [31:0] data_value;

    // Assign values
    address   = 32'h0000_1000;
    data_value = 32'hABCD_1234;

    // Call the task
    display_data(address, data_value);

  end

endmodule

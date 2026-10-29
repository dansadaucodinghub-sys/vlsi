// Interface
// An interface groups related signals together, so a design and its
// testbench can connect through one handle instead of many separate wires.

interface adder_if;
  logic [3:0] a;
  logic [3:0] b;
  logic [4:0] sum;
endinterface

// the design uses the interface
module adder(adder_if intf);
  assign intf.sum = intf.a + intf.b;
endmodule

module interface_example;
  adder_if intf();          // create the interface
  adder    dut(intf);       // connect it to the design

  initial begin
    intf.a = 4'd7;
    intf.b = 4'd8;
    #1;
    $display("a=%0d b=%0d sum=%0d", intf.a, intf.b, intf.sum);
  end
endmodule

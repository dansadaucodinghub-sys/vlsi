// Program block
// A 'program' block was added for testbenches. Its code runs in the
// Reactive region, which helps avoid race conditions with the design.

module dut(input logic clk, output logic [3:0] count);
  initial count = 0;
  always @(posedge clk) count <= count + 1;
endmodule

program test(input logic clk, input logic [3:0] count);
  initial begin
    $display("Program block started");
    repeat (5) @(posedge clk)
      $display("time=%0t count=%0d", $time, count);
    $display("Program block finished");
    $finish;
  end
endprogram

module program_block;
  logic clk;
  logic [3:0] count;

  dut  d(clk, count);
  test t(clk, count);

  // clock generator
  initial clk = 0;
  always #1 clk = ~clk;
endmodule

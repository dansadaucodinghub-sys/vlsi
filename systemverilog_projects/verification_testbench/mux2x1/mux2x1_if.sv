// interface for mux2x1 - groups the DUT signals together with the clock
interface mux2x1_if(input logic clk);
  logic i0;
  logic i1;
  logic sel;
  logic y;
endinterface

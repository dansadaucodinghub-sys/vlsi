// interface for demux1x2 - groups the DUT signals together with the clock
interface demux1x2_if(input logic clk);
  logic i;
  logic sel;
  logic y0;
  logic y1;
endinterface

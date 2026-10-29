// DUT: 1-to-2 demultiplexer
module demux1x2(input logic i, input logic sel, output logic y0, output logic y1);
  assign y0 = (sel == 1'b0) ? i : 1'b0;
  assign y1 = (sel == 1'b1) ? i : 1'b0;
endmodule
